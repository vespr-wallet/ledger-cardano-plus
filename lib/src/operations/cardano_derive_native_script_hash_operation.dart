import 'dart:typed_data';

import 'package:ledger_cardano_plus/src/models/parsed_complex_native_script.dart';
import 'package:ledger_cardano_plus/src/models/parsed_native_script.dart';
import 'package:ledger_cardano_plus/src/models/parsed_simple_native_script.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/serialization_utils.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus_dart.dart';

class CardanoDeriveNativeScriptHashOperation
    extends LedgerComplexOperation<String> {
  static const int nativeScriptHashLength = 28;

  final ParsedNativeScript script;
  final NativeScriptHashDisplayFormat displayFormat;

  const CardanoDeriveNativeScriptHashOperation({
    required this.script,
    required this.displayFormat,
  });

  @override
  Future<String> invoke(LedgerSendFct send) async {
    await _deriveNativeScriptHashAddScript(send, script);
    final scriptHashHex = await _deriveNativeScriptHashFinishWholeNativeScript(
        send, displayFormat);
    return scriptHashHex;
  }

  Future<void> _deriveNativeScriptHashAddScript(
      LedgerSendFct send, ParsedNativeScript script) async {
    final sendOperation = switch (script) {
      ParsedNativeScript_Complex() => LedgerSimpleOperation(
          cla: claCardano,
          ins: InstructionType.deriveNativeScriptHash.insValue,
          p1: p1ReturnDataToHost,
          p2: p2Unused,
          data: serializeComplexNativeScriptStart(script.script),
          prependDataLength: true,
          debugName: 'Add Complex Native Script',
        ),
      ParsedNativeScript_Simple() => LedgerSimpleOperation(
          cla: claCardano,
          ins: InstructionType.deriveNativeScriptHash.insValue,
          p1: p1DisplayOnDevice,
          p2: p2Unused,
          data: serializeSimpleNativeScript(script.script),
          prependDataLength: true,
          debugName: 'Add Simple Native Script',
        ),
    };

    await send(sendOperation);

// Recursively add subscripts for complex native scripts
    // This ensures that all scripts are added before calling Finish Whole Native Script
    if (script is ParsedNativeScript_Complex) {
      for (final subscript in script.script.scripts) {
        await _deriveNativeScriptHashAddScript(send, subscript);
      }
    }
  }

  Future<String> _deriveNativeScriptHashFinishWholeNativeScript(
    LedgerSendFct send,
    NativeScriptHashDisplayFormat displayFormat,
  ) async {
    final response = await send(
      LedgerSimpleOperation(
        cla: claCardano,
        ins: InstructionType.deriveNativeScriptHash.insValue,
        p1: p1FinishScriptHash,
        p2: p2Unused,
        data: serializeWholeNativeScriptFinish(displayFormat),
        prependDataLength: true,
        debugName: 'Finish Whole Native Script',
      ),
    );

    return hex.encode(response.read(nativeScriptHashLength));
  }

  Uint8List serializeComplexNativeScriptStart(
          ParsedComplexNativeScript script) =>
      useBinaryWriter((writer) {
        final void Function() invoker = switch (script) {
          ParsedComplexNativeScript_All() => () {
              writer.writeUint8(script.nativeScriptSerializationValue);
              writer.writeUint32(script.scripts.length);
            },
          ParsedComplexNativeScript_Any() => () {
              writer.writeUint8(script.nativeScriptSerializationValue);
              writer.writeUint32(script.scripts.length);
            },
          ParsedComplexNativeScript_NOfK() => () {
              writer.writeUint8(script.nativeScriptSerializationValue);
              writer.writeUint32(script.scripts.length);
              writer.writeUint32(script.requiredCount);
            },
        };
        invoker();
        return writer.toBytes();
      });

  Uint8List serializeSimpleNativeScript(ParsedSimpleNativeScript script) =>
      useBinaryWriter((writer) {
        final void Function() invoker = switch (script) {
          ParsedSimpleNativeScript_PubKeyDeviceOwned() => () {
              writer.writeUint8(script.nativeScriptSerializationValue);
              writer.writeUint8(script.pubkeyType);
              SerializationUtils.writerSerializedPath(writer, script.path);
            },
          ParsedSimpleNativeScript_PubKeyThirdParty() => () {
              writer.writeUint8(script.nativeScriptSerializationValue);
              writer.writeUint8(script.pubkeyType);
              SerializationUtils.writeSerializedHex(writer, script.keyHashHex);
            },
          ParsedSimpleNativeScript_InvalidBefore() => () {
              writer.writeUint8(script.nativeScriptSerializationValue);
              writer.write(SerializationUtils.serializeUint64(script.slot));
            },
          ParsedSimpleNativeScript_InvalidHereafter() => () {
              writer.writeUint8(script.nativeScriptSerializationValue);
              writer.write(SerializationUtils.serializeUint64(script.slot));
            },
        };
        invoker();
        return writer.toBytes();
      });

  Uint8List serializeWholeNativeScriptFinish(
          NativeScriptHashDisplayFormat displayFormat) =>
      useBinaryWriter((writer) {
        writer.writeUint8(displayFormat.int8Value);
        return writer.toBytes();
      });
}
