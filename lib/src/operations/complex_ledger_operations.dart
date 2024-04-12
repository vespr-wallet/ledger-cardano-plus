import 'dart:async';

import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

abstract class ComplexLedgerOperation<T> {
  const ComplexLedgerOperation();

  Future<T> invoke(LedgerSendFct send);
}

typedef LedgerSendFct = Future<Y> Function<Y>(LedgerOperation<Y> operation);

extension LedgerX on Ledger {
  Future<T> sendComplexOperation<T>(
    LedgerDevice device,
    ComplexLedgerOperation<T> operation, {
    LedgerTransformer? transformer,
  }) async {
    Future<Y> send<Y>(LedgerOperation<Y> simpleOp) => sendOperation(device, simpleOp, transformer: transformer);
    try {
      return await operation.invoke(send);
    } catch (e) {
      if (e is GenericFailure && e.message == "connectionLost") {
        throw LedgerException(message: 'Connection lost.', errorCode: -99);
      } else if (e is ValidationException) {
        unawaited(send(ResetOperation()));
      }
      rethrow;
    }
  }
}
