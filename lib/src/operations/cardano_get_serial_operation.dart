import 'dart:typed_data';

import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

class CardanoGetSerialOperation extends ComplexLedgerOperation<String> {
  const CardanoGetSerialOperation() : super();

  @override
  Future<String> invoke(LedgerSendFct send) async {
    final Uint8List data = useBinaryWriter((ByteDataWriter writer) {
      return writer.toBytes();
    });

    final SendOperation operation = SendOperation(
      ins: InstructionType.getSerial.insValue,
      p1: p1Unused,
      p2: p2Unused,
      data: data,
      debugName: 'Get Serial',
    );

    final reader = await send(operation);
    final response = reader.read(reader.remainingLength);
    return hex.encode(response);
  }
}
