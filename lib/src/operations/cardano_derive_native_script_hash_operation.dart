import "dart:typed_data";

import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../../ledger_cardano_plus.dart";
import "../utils/serialization_utils.dart";
import "../utils/utilities.dart";

class CardanoDeriveNativeScriptHashOperation extends LedgerComplexOperation<String> {
  static const int nativeScriptHashLength = 28;

  final ParsedNativeScript script;
  final NativeScriptHashDisplayFormat displayFormat;
  final CardanoVersion version;

  const CardanoDeriveNativeScriptHashOperation({
    required this.script,
    required this.displayFormat,
    required this.version,
  });

  @override
  Future<String> invoke(LedgerSendFct send) async {
    if (version.versionMajor >= 8) return _invokeV8(send);
    return _invokeV7(send);
  }

  Future<String> _invokeV7(LedgerSendFct send) async {
    await _deriveNativeScriptHashAddScript(send, script);
    final scriptHashHex = await _deriveNativeScriptHashFinishWholeNativeScript(send, displayFormat);
    return scriptHashHex;
  }

  Future<String> _invokeV8(LedgerSendFct send) async {
    await send(
      LedgerSimpleOperation(
        cla: claCardano,
        ins: InstructionType.deriveNativeScriptHash.insValue,
        p1: p1Unused,
        p2: p2Unused,
        data: Uint8List(0),
        prependDataLength: true,
        debugName: "Derive Native Script Hash — Init",
      ),
    );
    await _deriveNativeScriptHashAddScript(send, script);
    return _deriveNativeScriptHashFinishWholeNativeScript(send, displayFormat);
  }

  Future<void> _deriveNativeScriptHashAddScript(LedgerSendFct send, ParsedNativeScript script) async {
    final sendOperation = switch (script) {
      ParsedNativeScript_Complex() => LedgerSimpleOperation(
        cla: claCardano,
        ins: InstructionType.deriveNativeScriptHash.insValue,
        p1: p1ReturnDataToHost,
        p2: p2Unused,
        data: serializeComplexNativeScriptStart(script.script),
        prependDataLength: true,
        debugName: "Add Complex Native Script",
      ),
      ParsedNativeScript_Simple() => LedgerSimpleOperation(
        cla: claCardano,
        ins: InstructionType.deriveNativeScriptHash.insValue,
        p1: p1DisplayOnDevice,
        p2: p2Unused,
        data: serializeSimpleNativeScript(script.script),
        prependDataLength: true,
        debugName: "Add Simple Native Script",
      ),
    };

    await send(sendOperation);

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
        debugName: "Finish Whole Native Script",
      ),
    );

    return hex.encode(response.read(nativeScriptHashLength));
  }

  Uint8List serializeComplexNativeScriptStart(ParsedComplexNativeScript script) => useBinaryWriter((writer) {
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

  Uint8List serializeSimpleNativeScript(ParsedSimpleNativeScript script) => useBinaryWriter((writer) {
    final isV8 = version.versionMajor >= 8;
    final void Function() invoker = switch (script) {
      ParsedSimpleNativeScript_PubKeyDeviceOwned() => () {
        writer.writeUint8(script.nativeScriptSerializationValue);
        writer.writeUint8(isV8 ? script.pubkeyTypeV8 : script.pubkeyTypeV7);
        writer.write(SerializationUtils.serializePath(script.path));
      },
      ParsedSimpleNativeScript_PubKeyThirdParty() => () {
        writer.writeUint8(script.nativeScriptSerializationValue);
        writer.writeUint8(isV8 ? script.pubkeyTypeV8 : script.pubkeyTypeV7);
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

  Uint8List serializeWholeNativeScriptFinish(NativeScriptHashDisplayFormat displayFormat) => useBinaryWriter((writer) {
    writer.writeUint8(displayFormat.int8Value);
    return writer.toBytes();
  });
}
