import 'dart:typed_data';

import 'package:ledger_flutter/ledger_flutter.dart';

/// APDU Protocol for Cardano
/// Documentation: https://github.com/cardano-foundation/ledger-app-cardano/blob/master/doc/ins_get_extended_public_key.md
class CardanoGetPublicKeyOperation extends LedgerOperation<List<String>> {
  final List<int> bip32Path;

  CardanoGetPublicKeyOperation({
    required this.bip32Path,
  });

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    writer.writeUint8(0xD7); // CLA
    writer.writeUint8(0x10); // INS for Get Extended Public Key
    writer.writeUint8(0x00); // P1 unused
    writer.writeUint8(0x00); // P2 unused
    writer.writeUint8(bip32Path.length * 4 + 1); // Lc: 1 byte for path length + 4 bytes for each path element

    writer.writeUint8(bip32Path.length); // BIP32 path length
    for (var path in bip32Path) {
      writer.writeUint32(path); // Write each path element as big endian
    }

    return [writer.toBytes()];
  }

  @override
  Future<List<String>> read(ByteDataReader reader) async {
    final publicKey = reader.read(32); // Read the public key
    final chainCode = reader.read(32); // Read the chain code

    // Process the public key and chain code as needed
    // This example simply returns the public key as a hex string; adjust as necessary
    return [publicKey.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join('')];
  }
}