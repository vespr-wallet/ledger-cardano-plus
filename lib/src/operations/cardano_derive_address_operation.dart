import 'dart:typed_data';
import 'package:ledger_flutter/ledger_flutter.dart';

class CardanoDeriveAddressOperation extends LedgerOperation<List<String>> {
  final List<int> bip32Path;
  static const int harden = 0x80000000;
  final int p1; // P1 parameter to indicate the request type

  CardanoDeriveAddressOperation({
    required this.bip32Path,
    this.p1 = 0x01, // Default to P1_RETURN for returning address to host
  }) {
    // Validate BIP44 path according to the specifications
    if (bip32Path.length != 5) {
      throw Exception('BIP44 path length must be exactly 5');
    }
    if (bip32Path[0] != harden + 44) {
      throw Exception("First index must be 44'");
    }
    if (bip32Path[1] != harden + 1815) {
      throw Exception("Second index must be 1815'");
    }
    if (bip32Path[2] & harden == 0) {
      throw Exception("Third index must be hardened");
    }
    if (bip32Path[3] != 0 && bip32Path[3] != 1) {
      throw Exception("Fourth index must be 0 (external) or 1 (internal)");
    }
  }

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    writer.writeUint8(0xD7); // CLA
    writer.writeUint8(0x11); // INS for Derive Address
    writer.writeUint8(p1); // P1: request type
    writer.writeUint8(0x00); // P2: unused
    writer.writeUint8(bip32Path.length * 4 + 1); // Lc: 1 byte for path length + 4 bytes for each path element

    writer.writeUint8(bip32Path.length); // BIP32 path length
    for (var path in bip32Path) {
      writer.writeUint32(path); // Write each path element as big endian
    }

    return [writer.toBytes()];
  }

  @override
  Future<List<String>> read(ByteDataReader reader) async {
    final addressBytes = reader.read(reader.remainingLength);
    final addressHex = addressBytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join('');
    return [addressHex];
  }
}