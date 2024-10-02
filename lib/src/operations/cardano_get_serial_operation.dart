import 'dart:typed_data';

import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus_dart.dart';

class CardanoGetSerialOperation extends LedgerComplexOperation<String> {
  const CardanoGetSerialOperation() : super();

  @override
  Future<String> invoke(LedgerSendFct send) async {
    final Uint8List data = useBinaryWriter((ByteDataWriter writer) {
      return writer.toBytes();
    });

    final operation = LedgerSimpleOperation(
      cla: claCardano,
      ins: InstructionType.getSerial.insValue,
      p1: p1Unused,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: 'Get Serial',
    );

    final reader = await send(operation);
    final response = reader.read(reader.remainingLength);
    return hex.encode(response);
  }
}
