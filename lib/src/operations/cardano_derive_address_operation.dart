import 'dart:typed_data';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
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
    this.p1 = p1ReturnAddressToHost, // Default to P1_RETURN for returning address to host
  }) {
    // Validate BIP44 path according to the specifications
    ValidationException.validateBip32Path(
        bip32SpendingPath, "Spending", [0, 1]);
    ValidationException.validateBip32Path(bip32StakingPath, "Staking", [2]);
  }

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    try {
      writer.writeUint8(claCardano); // CLA
      writer.writeUint8(insDeriveAddress); // INS for Derive Address
      writer.writeUint8(p1ReturnAddressToHost); // P1: request type
      writer.writeUint8(p2Unused); // P2: unused

      final otherWriter = ByteDataWriter();
      // ADDRESS TYPE: AddressType.BASE_PAYMENT_KEY_STAKE_KEY
      otherWriter.writeUint8(0);
      otherWriter.writeUint8(network.networkId);
      appendSpendingDataSource(otherWriter, bip32SpendingPath);
      appendStakingDataSource(otherWriter, bip32StakingPath);

      writer.writeUint8(otherWriter.toBytes().length);
      writer.write(otherWriter.toBytes());
      return [writer.toBytes()];
    } catch (err) {
      return Future.error(err);
    }
  }

  static void appendSpendingDataSource(
      ByteDataWriter writer, List<int> bipPath) {
    appendPathToBuf(writer, bipPath);
  }

  static void appendStakingDataSource(
      ByteDataWriter writer, List<int> bipPath) {
    writer.writeUint8(0x22);
    appendPathToBuf(writer, bipPath);
  }

  static void appendPathToBuf(ByteDataWriter writer, List<int> bipPath) {
    writer.writeUint8(bipPath.length);
    for (final pathEntry in bipPath) {
      writer.writeUint32(pathEntry, Endian.big);
    }
  }

  @override
  Future<String> read(ByteDataReader reader) async {
    final addressBytes = reader.read(reader.remainingLength);
    return HEX.encode(addressBytes);
  }
}
