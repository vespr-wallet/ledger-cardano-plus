import 'dart:typed_data';

import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus_dart.dart';

class CardanoRunTestsOperation extends LedgerComplexOperation<void> {
  const CardanoRunTestsOperation() : super();

  @override
  Future<void> invoke(LedgerSendFct send) async {
    final operation = LedgerSimpleOperation(
      cla: claCardano,
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
