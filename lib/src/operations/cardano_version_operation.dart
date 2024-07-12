import 'dart:typed_data';
import 'package:ledger_cardano_plus/src/models/flags.dart';
import 'package:ledger_cardano_plus/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano_plus/src/operations/ledger_operations.dart';
import 'package:ledger_cardano_plus/src/cardano_version.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';

class CardanoVersionOperation extends ComplexLedgerOperation<CardanoVersion> {
  const CardanoVersionOperation() : super();

  @override
  Future<CardanoVersion> invoke(LedgerSendFct send) async {
    final SendOperation operation = SendOperation(
      ins: InstructionType.getVersion.insValue,
      p1: p1Unused,
      p2: p2Unused,
      data: Uint8List(0),
      prependDataLength: true,
      debugName: 'Get Cardano Version',
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
      flags: const Flags(isDebug: false, isAppXS: false),
    );
  }
}
