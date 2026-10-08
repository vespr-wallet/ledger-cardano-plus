import "dart:typed_data";

import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../cardano_version.dart";
import "../models/flags.dart";
import "../utils/constants.dart";

class CardanoVersionOperation extends LedgerComplexOperation<CardanoVersion> {
  const CardanoVersionOperation() : super();

  @override
  Future<CardanoVersion> invoke(LedgerSendFct send) async {
    final operation = LedgerSimpleOperation(
      cla: claCardano,
      ins: InstructionType.getVersion.insValue,
      p1: p1Unused,
      p2: p2Unused,
      data: Uint8List(0),
      prependDataLength: true,
      debugName: "Get Cardano Version",
    );

    final reader = await send(operation);
    final versionMajor = reader.readUint8();
    final versionMinor = reader.readUint8();
    final versionPatch = reader.readUint8();
    final flags = reader.remainingLength > 0 ? reader.readUint8() : 0;

    return CardanoVersion(
      testMode: false,
      versionMajor: versionMajor,
      versionMinor: versionMinor,
      versionPatch: versionPatch,
      locked: false,
      flags: Flags(isDebug: (flags & 0x01) != 0, isAppXS: (flags & 0x04) != 0),
    );
  }
}
