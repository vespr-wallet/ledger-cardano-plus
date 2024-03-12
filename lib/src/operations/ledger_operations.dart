import 'dart:typed_data';

import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class SendOperation extends LedgerOperation<ByteDataReader> {
  final int ins;
  final int p1;
  final int p2;
  final Uint8List data;
  final bool prependDataLength;

  SendOperation({
    required this.ins,
    required this.p1,
    required this.p2,
    required this.data,
    this.prependDataLength = true,
  });

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    return ValidationException.runSafely(() async {
      writer.writeUint8(claCardano); // CLA
      writer.writeUint8(ins); // INS for Derive Address
      writer.writeUint8(p1); // P1: request type
      writer.writeUint8(p2); // P2: unused
      if (prependDataLength) {
        writer.writeUint8(data.length);
      }
      if (data.isNotEmpty) {
        writer.write(data);
      }

      print(hex.encode(writer.toBytes()));
      return [writer.toBytes()];
    });
  }

  @override
  Future<ByteDataReader> read(ByteDataReader reader) async {
    return reader;
  }
}

class TestSendOperation extends LedgerOperation<ByteDataReader> {
  final Uint8List data;

  TestSendOperation({required this.data});

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) async {
    print(hex.encode(data));
    return [data];
  }

  @override
  Future<ByteDataReader> read(ByteDataReader reader) async {
    return reader;
  }
}
