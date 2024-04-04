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
  }) {
    Future<Y> send<Y>(LedgerOperation<Y> simpleOp) => sendOperation(device, simpleOp, transformer: transformer);

    try {
      return operation.invoke(send);
    } on ValidationException catch (_) {
      // TODO use `send` function to send some kind of termination command to release ledger
      send(ResetOperation());
      rethrow;
    }
  }
}
