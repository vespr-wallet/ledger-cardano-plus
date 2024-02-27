import 'dart:typed_data';

import 'package:ledger_flutter/ledger_flutter.dart';

/// APDU Protocol for Cardano
/// Documentation: https://github.com/cardano-foundation/ledger-app-cardano/blob/master/doc/ins_get_extended_public_key.md
class CardanoGetPublicKeyOperation extends LedgerOperation<List<String>> {
  final List<int> bip32Path;

  CardanoGetPublicKeyOperation({
    required this.bip32Path,
  }) {
    // Validate BIP32 path according to the specifications
    if (bip32Path.length < 3 || bip32Path.length > 10) {
      throw Exception('BIP32 path length must be between 3 and 10');
    }
    if (bip32Path[0] != 0x8000002C) { // 44' in hex
      throw Exception("First index must be 44'");
    }
    if (bip32Path[1] != 0x80000717) { // 1815' in hex
      throw Exception("Second index must be 1815'");
    }
    if ((bip32Path[2] & 0x80000000) == 0) { // Check if third index is hardened
      throw Exception("Third index must be hardened");
    }
  }

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
    if (reader.remainingLength < 64) { // Public key + chain code is expected to be 64 bytes
      throw Exception('Not enough bytes to read for the public key and chain code');
    }
    final publicKey = reader.read(32); // Read the public key
    final chainCode = reader.read(32); // Read the chain code

    // Concatenate the public key and chain code, then convert to hex string
    final extendedPublicKey = publicKey + chainCode;
    final extendedPublicKeyHex = extendedPublicKey.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join('');

    return [extendedPublicKeyHex];
  }
}