import 'dart:typed_data';
import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class CardanoGetSerialOperation extends CardanoLedgerOperation<String> {
  CardanoGetSerialOperation()
      : super(
          ins: InstructionType.getSerial,
          p1: ReturnType.unused, // P1_UNUSED
          p2: 0, // P2_UNUSED
        );

  @override
  Future<String> readData(ByteDataReader reader) async {
    final response = reader.read(reader.remainingLength);
    return bufToHex(response);
  }

  String bufToHex(Uint8List buffer) {
    return buffer.map((e) => e.toRadixString(16).padLeft(2, '0')).join('');
  }

  @override
  Future<Uint8List> writeData(ByteDataWriter writer) async {
    writer.writeUint8(0x00);
    return writer.toBytes();
  }
}
