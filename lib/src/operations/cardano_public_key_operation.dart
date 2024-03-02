import 'dart:typed_data';

import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'cardano_ledger_operation.dart';

class GetExtendedPublicKeyOperation
    extends CardanoLedgerOperation<ExtendedPublicKey> {
  final List<int> bip32Path;
  String accountType = "Unknown"; 
  static const harden = 0x80000000;

  GetExtendedPublicKeyOperation({
    required this.bip32Path,
    this.accountType = "Unknown", 
  }) : super(
          ins: InstructionType.getExtendedPublicKey,
          p1: ReturnType.unused,
          p2: 0,
        );

  @override
  Future<ExtendedPublicKey> readData(ByteDataReader reader) async {
    final publicKeyBytes = reader.read(32);
    final chainCodeBytes = reader.read(32);

    final publicKeyHex = hex.encode(publicKeyBytes);
    final chainCodeHex = hex.encode(chainCodeBytes);

    return ExtendedPublicKey(
      publicKeyHex: publicKeyHex,
      chainCodeHex: chainCodeHex,
      accountType: accountType,
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
