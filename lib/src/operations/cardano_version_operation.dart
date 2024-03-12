import 'dart:typed_data';
import 'package:buffer/buffer.dart';
import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_cardano/src/cardano_version.dart';

class CardanoVersionOperation extends ComplexLedgerOperation<CardanoVersion> {
  CardanoVersionOperation() : super();

  @override
  Future<CardanoVersion> invoke(LedgerSendFct send) async {
    final Uint8List data = useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(0x00);
      return writer.toBytes();
    });

    final SendOperation operation = SendOperation(
      ins: InstructionType.getVersion.insValue,
      p1: ReturnType.unused.p1Value,
      p2: p2Unused,
      data: data,
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
