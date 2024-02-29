import 'dart:typed_data';
import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class CardanoVersionOperation extends CardanoLedgerOperation<CardanoVersion> {
  CardanoVersionOperation()
      : super(
          ins: InstructionType.getVersion,
          p1: ReturnType.unused,
          p2: 0x00,
        );

  @override
  Future<CardanoVersion> readData(ByteDataReader reader) async {
    final versionMajor = reader.readUint8(); // Adjusted to read 1 byte
    final versionMinor = reader.readUint8(); // Adjusted to read 1 byte
    final versionPatch = reader.readUint8(); // Adjusted to read 1 byte
    final flags = reader.readUint8(); // Read flags

    final testMode = (flags & 0x01) == 0x01; // Check if devel version flag is set

    return CardanoVersion(
      testMode: testMode,
      versionMajor: versionMajor,
      versionMinor: versionMinor,
      versionPatch: versionPatch,
      locked: false,
    );
  }

@override
Future<Uint8List> writeData(ByteDataWriter writer) async {
  writer.writeUint8(0x00); // ACCOUNT_INDEX_DATA_SIZE, indicating no additional data
  return writer.toBytes(); 
}
}