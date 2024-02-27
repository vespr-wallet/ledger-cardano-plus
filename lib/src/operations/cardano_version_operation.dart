import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

/// GET VERSION APDU PROTOCOL:
///
/// https://github.com/LedgerHQ/app-algorand/blob/develop/docs/APDUSPEC.md#get_version
class CardanoVersionOperation extends LedgerOperation<CardanoVersion> {
  CardanoVersionOperation();

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    writer.writeUint8(0xD7); // CARDANO_CLA
    writer.writeUint8(0x00); // PUBLIC_KEY_INS
    writer.writeUint8(0x00); // P1_FIRST
    writer.writeUint8(0x00); // P2_LAST
    writer.writeUint8(0x00); // ACCOUNT_INDEX_DATA_SIZE

    return [writer.toBytes()];
  }

  @override
  Future<CardanoVersion> read(ByteDataReader reader) async {
    final versionMajor = reader.readUint8(); // Adjusted to read 1 byte
    final versionMinor = reader.readUint8(); // Adjusted to read 1 byte
    final versionPatch = reader.readUint8(); // Adjusted to read 1 byte
    final flags = reader.readUint8(); // Read flags

    final testMode =
        (flags & 0x01) == 0x01; // Check if devel version flag is set

    return CardanoVersion(
      testMode: testMode,
      versionMajor: versionMajor,
      versionMinor: versionMinor,
      versionPatch: versionPatch,
      locked: false,
    );
  }
}
