import 'dart:typed_data';

import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

class CardanoRunTestsOperation extends ComplexLedgerOperation<void> {
  const CardanoRunTestsOperation() : super();

  @override
  Future<void> invoke(LedgerSendFct send) async {
    final SendOperation operation = SendOperation(
      ins: InstructionType.runTests.insValue,
      p1: p1Unused,
      p2: p2Unused,
      data: Uint8List(0),
      prependDataLength: true,
      debugName: 'Run Tests',
    );

    await send(operation);
  }
}