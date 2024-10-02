import 'dart:typed_data';

import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus_dart.dart';

class ResetOperation extends LedgerRawOperation<ByteDataReader> {
  ResetOperation();

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) =>
      LedgerCardanoSdkInternalException.runSafely(() async {
        if (CardanoLedger.debugPrintEnabled) {
          // ignore: avoid_print
          print("ResetOperation command sent to ledger");
        }
        writer.writeUint8(claCardano);
        return [writer.toBytes()];
      });

  @override
  Future<ByteDataReader> read(ByteDataReader reader) async => reader;
}
