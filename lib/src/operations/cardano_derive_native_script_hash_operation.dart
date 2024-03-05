import 'dart:typed_data';
import 'package:ledger_cardano/src/models/parsed_native_script.dart';
import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class CardanoDeriveNativeScriptHashOperation
    extends CardanoLedgerOperation<String> {
  final ParsedNativeScript script;
  final NativeScriptHashDisplayFormat displayFormat;

  CardanoDeriveNativeScriptHashOperation({
    required this.script,
    required this.displayFormat,
  }) : super(
          ins: InstructionType.deriveNativeScriptHash,
          p1: ReturnType.unused,
          p2: 0x00,
        );

  @override
  Future<String> readData(ByteDataReader reader) async {
    final scriptHashBytes = reader.read(reader.remainingLength);
    return hex.encode(scriptHashBytes);
  }

  @override
  Future<Uint8List> writeData(ByteDataWriter writer) async {
    // TODO: Implement serialization based on the script type and stages.
    serializeScript(writer, script);
    return writer.toBytes();
  }

  void serializeScript(ByteDataWriter writer, ParsedNativeScript script) {
    script.when(
      complex: (complexScript) {
        complexScript.when(
          all: (scripts) {
            writer.writeUint8(0x01);
            writer.writeUint8(scripts.length);
            for (var s in scripts) {
              serializeScript(writer, s);
            }
          },
          any: (scripts) {
            writer.writeUint8(0x02);
            writer.writeUint8(scripts.length);
            for (var s in scripts) {
              serializeScript(writer, s);
            }
          },
          nOfK: (requiredCount, scripts) {
            writer.writeUint8(0x03);
            writer.writeUint8(requiredCount);
            writer.writeUint8(scripts.length);
            for (var s in scripts) {
              serializeScript(writer, s);
            }
          },
        );
      },
      simple: (simpleScript) {
        simpleScript.when(
          pubKeyDeviceOwned: (path) {
            writer.writeUint8(0x04);
            SerializationUtils.serializePath(writer, path);
          },
          pubKeyThirdParty: (keyHashHex) {
            writer.writeUint8(0x05);
            SerializationUtils.serializeHex(writer, keyHashHex);
          },
          invalidBefore: (slot) {
            writer.writeUint8(0x06);
            writer.writeUint64(slot);
          },
          invalidHereafter: (slot) {
            writer.writeUint8(0x07);
            writer.writeUint64(slot);
          },
        );
      },
    );
  }
}
