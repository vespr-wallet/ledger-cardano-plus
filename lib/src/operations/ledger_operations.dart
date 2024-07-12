import 'dart:typed_data';

import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_cardano_plus/src/utils/validation_exception.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

class SendOperation extends LedgerOperation<ByteDataReader> {
  final String debugName;

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
    required this.debugName,
  });

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) => ValidationException.runSafely(() async {
        writer.writeUint8(claCardano);
        writer.writeUint8(ins);
        writer.writeUint8(p1);
        writer.writeUint8(p2);
        if (prependDataLength) {
          writer.writeUint8(data.length);
        }
        if (data.isNotEmpty) {
          writer.write(data);
        }

        if (CardanoLedger.debugPrintEnabled) {
          print("$debugName: ${hex.encode(writer.toBytes())}");
        }
        return [writer.toBytes()];
      });

  @override
  Future<ByteDataReader> read(ByteDataReader reader) async => reader;
}

class ResetOperation extends LedgerOperation<ByteDataReader> {
  ResetOperation();

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) => ValidationException.runSafely(() async {
        if (CardanoLedger.debugPrintEnabled) {
          print("ResetOperation command sent to ledger");
        }
        writer.writeUint8(claCardano);
        return [writer.toBytes()];
      });

  @override
  Future<ByteDataReader> read(ByteDataReader reader) async => reader;
}
