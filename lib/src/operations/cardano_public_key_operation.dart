import 'dart:typed_data';

import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'cardano_ledger_operation.dart'; // Import the CardanoLedgerOperation

class CardanoGetPublicKeyOperation extends CardanoLedgerOperation<List<String>> {
  final List<int> bip32Path;
  static const harden = 0x80000000;

  CardanoGetPublicKeyOperation({
    required this.bip32Path,
  }) : super(
         ins: InstructionType.getExtendedPublicKey, // Use the appropriate InstructionType
         p1: ReturnType.unused, 
         p2: 0, 
       ) {
    try {
      if (bip32Path.length < 3 || bip32Path.length > 10) {
        throw ValidationException('BIP32 path length must be between 3 and 10');
      }
      if (bip32Path[0] != harden + 1852) {
        throw ValidationException("First index must be 1852'");
      }
      if (bip32Path[1] != harden + 1815) {
        throw ValidationException("Second index must be 1815'");
      }
      if ((bip32Path[2] & harden) == 0) {
        throw ValidationException("Third index must be hardened");
      }
    } catch (e) {
      throw ValidationException(e.toString());
    }
  }

  @override
  Future<List<String>> readData(ByteDataReader reader) async {
    final extendedPublicKeyHex = reader
        .read(reader.remainingLength)
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join('');

    return [extendedPublicKeyHex];
  }

  @override
  Future<Uint8List> writeData(ByteDataWriter writer) async {
    writer.writeUint8(bip32Path.length * 4 + 1); 
    writer.writeUint8(bip32Path.length); 
    for (var path in bip32Path) {
      writer.writeUint32(path); 
    }

    return writer.toBytes();
  }
}