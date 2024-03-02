import 'dart:typed_data';

import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

abstract class CardanoLedgerOperation<T> extends LedgerOperation<T> {
  static const cls = 0xD7;
  final InstructionType ins;
  final ReturnType p1;
  final int p2;

  CardanoLedgerOperation(
      {required this.ins, required this.p1, required this.p2});

  @override
  Future<T> read(ByteDataReader reader) =>
      ValidationException.runSafely(() => readData(reader));

  @override
  Future<List<Uint8List>> write(ByteDataWriter writer) =>
      ValidationException.runSafely(() async {
        writer.writeUint8(cls); // CLA
        writer.writeUint8(ins.insValue); // INS for Derive Address
        writer.writeUint8(p1.p1Value); // P1: request type
        writer.writeUint8(p2); // P2: unused
        final otherWriter = ByteDataWriter();
        final data = await writeData(otherWriter);
        if (data.isNotEmpty) {
          if (data.length > 255) {
            throw ValidationException(
              'Data length must be less than or equal to 255',
            );
          }
          if (ins.prependDataLength) {
            writer.writeUint8(data.length);
          }
          writer.write(data);
        }

        return [writer.toBytes()];
      });

  Future<T> readData(ByteDataReader reader);

  Future<Uint8List> writeData(ByteDataWriter writer);
}

enum ReturnType {
  unused(p1Value: 0x00),
  returnData(p1Value: 0x01),
  display(p1Value: 0x02);

  final int p1Value;
  const ReturnType({required this.p1Value});
}

enum InstructionType {
  // DERIVE_NATIVE_SCRIPT_HASH = 0x12,

  // SIGN_TX = 0x21,
  // SIGN_OPERATIONAL_CERTIFICATE = 0x22,
  // SIGN_CIP36_VOTE = 0x23,

  // RUN_TESTS = 0xf0,

  deriveAddress(insValue: 0x11, prependDataLength: true),
  getVersion(insValue: 0x00, prependDataLength: false),
  getExtendedPublicKey(insValue: 0x10, prependDataLength: false),
  getSerial(insValue: 0x01, prependDataLength: false);
  // deriveNativeScriptHash(insValue: 0x12),

  final int insValue;
  final bool prependDataLength;

  const InstructionType(
      {required this.insValue, required this.prependDataLength});
}
