import 'dart:typed_data';

import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'cardano_ledger_operation.dart';

class GetExtendedPublicKeyOperation
    extends CardanoLedgerOperation<ExtendedPublicKey> {
  final List<int> bip32Path;
  static const harden = 0x80000000;

  GetExtendedPublicKeyOperation({
    required this.bip32Path,
  }) : super(
          ins: InstructionType
              .getExtendedPublicKey, // Use the appropriate InstructionType
          p1: ReturnType.unused,
          p2: 0,
        );

  @override
  Future<ExtendedPublicKey> readData(ByteDataReader reader) async {
    final extendedPublicKeyHex = reader
        .read(reader.remainingLength)
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join('');

    return ExtendedPublicKey(
      publicKeyHex: extendedPublicKeyHex,
      chainCodeHex: "??", // TODO fix this
    );
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
