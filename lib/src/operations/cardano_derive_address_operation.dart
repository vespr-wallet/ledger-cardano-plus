import 'dart:typed_data';
import 'package:ledger_cardano/src/cardano_ledger_application.dart';
import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

// TODO: this is just to be used as an example ; this class should be deleted alongside all of its content
class CardanoDeriveAddressOperationV2 extends ComplexLedgerOperation<String> {
  final List<int> bip32SpendingPath;
  final List<int> bip32StakingPath;
  final CardanoNetwork network; // Network parameter

  CardanoDeriveAddressOperationV2({
    required this.bip32SpendingPath,
    required this.bip32StakingPath,
    required this.network,
  });

  Future deriveScriptHash_startComplexScript(LedgerSendFct send, dynamic script) async {
    await send(
      // of whatever
    );
    return null;
  }

  @override
  Future<String> invoke(LedgerSendFct send) async {
    final script = "todo";

    await deriveScriptHash_startComplexScript(send, script);

    await send(
      SendOperation(
          ins: InstructionType.deriveAddress.insValue,
          p1: 0,
          p2: 0,
          data: useBinaryWriter((writer) {
            writer.writeUint8(0x00);
            return writer.toBytes();
          })),
    );

    return result;
  }
}

class CardanoDeriveAddressOperation extends CardanoLedgerOperation<String> {
  final List<int> bip32SpendingPath;
  final List<int> bip32StakingPath;
  final CardanoNetwork network; // Network parameter

  CardanoDeriveAddressOperation({
    required this.bip32SpendingPath,
    required this.bip32StakingPath,
    required this.network,
  }) : super(
          ins: InstructionType.deriveAddress,
          p1: ReturnType.returnData.p1Value,
          p2: 0x00,
        ) {
    // Validate BIP44 path according to the specifications
    ValidationException.validateBip32Path(
        bip32SpendingPath, "Spending", [0, 1]);
    ValidationException.validateBip32Path(bip32StakingPath, "Staking", [2]);
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
  Future<String> readData(ByteDataReader reader) async {
    final addressBytes = reader.read(reader.remainingLength);
    return hex.encode(addressBytes);
  }

  @override
  Future<Uint8List> writeData(ByteDataWriter writer) async {
    writer.writeUint8(0);
    writer.writeUint8(network.networkId);
    appendSpendingDataSource(writer, bip32SpendingPath);
    appendStakingDataSource(writer, bip32StakingPath);
    return writer.toBytes();
  }
}
