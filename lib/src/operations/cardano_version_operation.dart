import 'dart:typed_data';
import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/cardano_version.dart';

class CardanoVersionOperation extends ComplexLedgerOperation<CardanoVersion> {
  const CardanoVersionOperation() : super();

  @override
  Future<CardanoVersion> invoke(LedgerSendFct send) async {
    final SendOperation operation = SendOperation(
      ins: InstructionType.getVersion.insValue,
      p1: ReturnType.unused.p1Value,
      p2: 0,
      data: Uint8List(0),
      expectResponseLength: true,
    );

    final reader = await send(operation);
    final versionMajor = reader.readUint8();
    final versionMinor = reader.readUint8();
    final versionPatch = reader.readUint8();

    return CardanoVersion(
      testMode: false,
      versionMajor: versionMajor,
      versionMinor: versionMinor,
      versionPatch: versionPatch,
      locked: false,
    );
  }
}
