import 'dart:typed_data';

import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class SendOperation extends LedgerOperation<ByteDataReader> {
  final int ins;
  final int p1;
  final int p2;
  final Uint8List data;
  final bool expectResponseLength;

  SendOperation({
    required this.ins,
    required this.p1,
    required this.p2,
    required this.data,
    this.expectResponseLength = false,
  });

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    writer.writeUint8(CardanoLedgerOperation.cla); // CLA
    writer.writeUint8(ins); // INS for Derive Address
    writer.writeUint8(p1); // P1: request type
    writer.writeUint8(p2); // P2: unused
    if (expectResponseLength) {
      writer.writeUint8(data.length);
    }
    if (data.isNotEmpty) {
      writer.write(data);
    }

    return [writer.toBytes()];
  }

  @override
  Future<ByteDataReader> read(ByteDataReader reader) async {
    return reader;
  }
}
