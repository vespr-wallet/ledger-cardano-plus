import 'dart:typed_data';
import 'package:buffer/buffer.dart';
import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';

class CardanoDeriveAddressOperation extends ComplexLedgerOperation<String> {
  final List<int> bip32SpendingPath;
  final List<int> bip32StakingPath;
  final CardanoNetwork network;

  const CardanoDeriveAddressOperation({
    required this.bip32SpendingPath,
    required this.bip32StakingPath,
    required this.network,
  });

  @override
  Future<String> invoke(LedgerSendFct send) async {
    final ByteDataWriter writer = ByteDataWriter();

    writer.writeUint8(0);
    writer.writeUint8(network.networkId);

    appendSpendingDataSource(writer, bip32SpendingPath);
    appendStakingDataSource(writer, bip32StakingPath);

    final response = await send(
      SendOperation(
        ins: InstructionType.deriveAddress.insValue,
        p1: ReturnType.returnData.p1Value,
        p2: 0,
        data: writer.toBytes(),
        expectResponseLength: true,
      ),
    );

    final addressBytes = response.read(response.remainingLength);
    return hex.encode(addressBytes);
  }

  static void appendSpendingDataSource(
      ByteDataWriter writer, List<int> bipPath) {
    _appendSpendingDataSource(writer, bipPath);
  }

  static void appendStakingDataSource(
      ByteDataWriter writer, List<int> bipPath) {
    _appendStakingDataSource(writer, bipPath);
  }

  static void _appendSpendingDataSource(
      ByteDataWriter writer, List<int> bipPath) {
    appendPathToBuf(writer, bipPath);
  }

  static void _appendStakingDataSource(
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
}
