import 'dart:typed_data';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:hex/hex.dart';

class CardanoDeriveAddressOperation extends LedgerOperation<String> {
  final List<int> bip32SpendingPath;
  final List<int> bip32StakingPath;
  static const int harden = 0x80000000;
  final int p1; // P1 parameter to indicate the request type
  final CardanoNetwork network; // Network parameter

  CardanoDeriveAddressOperation({
    required this.bip32SpendingPath,
    required this.bip32StakingPath,
    required this.network,
    this.p1 = 0x01, // Default to P1_RETURN for returning address to host
  }) {
    // Validate BIP44 path according to the specifications
    if (bip32SpendingPath.length != 5) {
      throw Exception('BIP44 bip32SpendingPath length must be exactly 5');
    }
    if (bip32SpendingPath[0] != harden + 1852) {
      throw Exception("First bip32SpendingPath index must be 1852'");
    }
    if (bip32SpendingPath[1] != harden + 1815) {
      throw Exception("Second bip32SpendingPath index must be 1815'");
    }
    if (bip32SpendingPath[2] & harden == 0) {
      throw Exception("Third bip32SpendingPath index must be hardened");
    }
    if (bip32SpendingPath[3] != 0 && bip32SpendingPath[3] != 1) {
      throw Exception(
          "Fourth bip32SpendingPath index must be 0 (external) or 1 (internal)");
    }

    if (bip32StakingPath.length != 5) {
      throw Exception('BIP44 bip32StakingPath length must be exactly 5');
    }
    if (bip32StakingPath[0] != harden + 1852) {
      throw Exception("First bip32StakingPath index must be 1852'");
    }
    if (bip32StakingPath[1] != harden + 1815) {
      throw Exception("Second bip32StakingPath index must be 1815'");
    }
    if (bip32StakingPath[2] & harden == 0) {
      throw Exception("Third bip32StakingPath index must be hardened");
    }
    if (bip32StakingPath[3] != 2) {
      throw Exception("Fourth bip32StakingPath index must be 2 (staking)");
    }
  }

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    try {
      print("Enter write");
      writer.writeUint8(0xD7); // CLA
      writer.writeUint8(0x11); // INS for Derive Address
      writer.writeUint8(0x01); // P1: request type
      writer.writeUint8(0x00); // P2: unused

      // writer.writeUint8(bip32Path.length * 4 +
      //     1); // Lc: 1 byte for path length + 4 bytes for each path element

      // uint8_to_buf(params.type as Uint8_t),
      // params.type === AddressType.BYRON
      //   ? uint32_to_buf(params.protocolMagic)
      //   : uint8_to_buf(params.networkId),
      // serializeSpendingDataSource(spending),
      // serializeStakingDataSource(staking),

      final otherWriter = ByteDataWriter();
      // ADDRESS TYPE: AddressType.BASE_PAYMENT_KEY_STAKE_KEY
      otherWriter.writeUint8(0);
      otherWriter.writeUint8(network.networkId);
      appendSpendingDataSource(otherWriter, bip32SpendingPath);
      appendStakingDataSource(otherWriter, bip32StakingPath);

      writer.writeUint8(otherWriter.toBytes().length);
      writer.write(otherWriter.toBytes());

      // writer.writeUint8(bip32Path.length); // BIP32 path length
      // for (var path in bip32Path) {
      //   writer.writeUint32(path); // Write each path element as big endian
      // }

      // writer.writeUint8(network.networkId); // Write networkId as a single byte
      // writer.writeUint32(network.protocolMagic,
      //     Endian.big); // Write protocolMagic as a 4-byte big endian integer
      print(HEX.encode(writer.toBytes()));
      print("Finishing write");
      return [writer.toBytes()];
    } catch (err) {
      print(err.toString());
      return [];
    }
  }

  static void appendSpendingDataSource(
      ByteDataWriter writer, List<int> bipPath) {
    appendPathToBuf(writer, bipPath);
    // for payment
    // path_to_buf(dataSource.path)
  }

  static void appendStakingDataSource(
      ByteDataWriter writer, List<int> bipPath) {
    writer.writeUint8(0x22);
    appendPathToBuf(writer, bipPath);
    // for staking
    // ...[
    //     uint8_to_buf(stakingChoicesEncoding[dataSource.type] as Uint8_t),
    //     path_to_buf(dataSource.path),
    //   ]
  }

  static void appendPathToBuf(ByteDataWriter writer, List<int> bipPath) {
    //   assert(isValidPath(path), 'invalid bip32 path')
    //   Not Mandatory, but can be added

    //   const data = Buffer.alloc(1 + 4 * path.length)
    //   NO NEED IN DART

    //   data.writeUInt8(path.length, 0)
    writer.writeUint8(bipPath.length);

    //   for (let i = 0; i < path.length; i++) {
    //     data.writeUInt32BE(path[i], 1 + i * 4)
    //   }
    for (final pathEntry in bipPath) {
      writer.writeUint32(pathEntry, Endian.big);
    }
  }

  @override
  Future<String> read(ByteDataReader reader) async {
    print("enter read");
    final addressBytes = reader.read(reader.remainingLength);
    return HEX.encode(addressBytes);
    // final addressHex = addressBytes
    //     .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
    //     .join('');
    // print("finish read");
    // return addressHex;
  }
}
