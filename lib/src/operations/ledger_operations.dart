import "dart:typed_data";

import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../../ledger_cardano_plus.dart";

class ResetOperation extends LedgerRawOperation<ByteDataReader> {
  ResetOperation();

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) => LedgerCardanoSdkInternalException.runSafely(() async {
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

/// After an aborted flow the device resets itself and answers the next APDU with
/// 0x6E04 (still in call). Like the JS SDK, the first APDU of [operation] is retried once.
class RetryStillInCallOperation<T> extends LedgerComplexOperation<T> {
  final LedgerComplexOperation<T> operation;

  const RetryStillInCallOperation(this.operation);

  @override
  Future<T> invoke(LedgerSendFct send) {
    var isFirstApdu = true;

    Future<Y> sendWithRetry<Y>(LedgerRawOperation<Y> apdu) async {
      if (!isFirstApdu) return send(apdu);
      isFirstApdu = false;
      try {
        return await send(apdu);
      } on StillInCallException {
        return send(apdu);
      }
    }

    return operation.invoke(sendWithRetry);
  }
}
