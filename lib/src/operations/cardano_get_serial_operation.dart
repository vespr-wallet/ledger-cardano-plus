import 'dart:typed_data';

import 'package:buffer/buffer.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

class CardanoGetSerialOperation extends ComplexLedgerOperation<String> {
  const CardanoGetSerialOperation() : super();

  @override
  Future<String> invoke(LedgerSendFct send) async {
    final Uint8List data = useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(0x00);
      return writer.toBytes();
    });

    final SendOperation operation = SendOperation(
      ins: InstructionType.getSerial.insValue,
      p1: ReturnType.unused.p1Value,
      p2: p2Unused,
      data: data,
    );

    final reader = await send(operation);
    final response = reader.read(reader.remainingLength);
    return hex.encode(response);
  }
}
