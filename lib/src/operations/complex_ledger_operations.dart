import 'dart:async';

import 'package:ledger_cardano_plus/src/operations/ledger_operations.dart';
import 'package:ledger_cardano_plus/src/utils/validation_exception.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

abstract class ComplexLedgerOperation<T> {
  const ComplexLedgerOperation();

  Future<T> invoke(LedgerSendFct send);
}

typedef LedgerSendFct = Future<Y> Function<Y>(LedgerOperation<Y> operation);

extension LedgerX on LedgerConnection {
  Future<T> sendComplexOperation<T>(
    ComplexLedgerOperation<T> operation, {
    required LedgerTransformer? transformer,
  }) async {
    Future<Y> send<Y>(LedgerOperation<Y> simpleOp) =>
        sendOperation(simpleOp, transformer: transformer);
    try {
      return await operation.invoke(send);
    } on ValidationException {
      unawaited(send(ResetOperation()));
      rethrow;
    }
  }
}
