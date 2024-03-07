
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
    Future<Y> send<Y>(LedgerOperation<Y> simpleOp) =>
        sendOperation(device, simpleOp, transformer: transformer);

    return operation.invoke(send);
  }
}
