import 'dart:typed_data';

import 'package:ledger_cardano/src/models/parsed_complex_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_simple_native_script.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class CardanoDeriveNativeScriptHashOperation
    extends ComplexLedgerOperation<String> {
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
      ParsedNativeScript_Complex() => SendOperation(
          ins: InstructionType.deriveNativeScriptHash.insValue,
          p1: 0x01,
          p2: 0x00,
          data: serializeComplexNativeScriptStart(script.script),
          expectResponseLength: true,
        ),
      ParsedNativeScript_Simple() => SendOperation(
          ins: InstructionType.deriveNativeScriptHash.insValue,
          p1: 0x02,
          p2: 0x00,
          data: serializeSimpleNativeScript(script.script),
          expectResponseLength: true,
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
      SendOperation(
        ins: InstructionType.deriveNativeScriptHash.insValue,
        p1: 0x03,
        p2: 0x00,
        data: serializeWholeNativeScriptFinish(displayFormat),
        expectResponseLength: true,
      ),
    );

    return hex.encode(response.read(NATIVE_SCRIPT_HASH_LENGTH));
  }

  Uint8List serializeComplexNativeScriptStart(
      ParsedComplexNativeScript script) {
    return useBinaryWriter((writer) {
      final result = switch (script) {
        ParsedComplexNativeScript_All() => () {
            writer.writeUint8(NativeScriptType.all.index);
            writer.writeUint32(script.scripts.length);
          },
        ParsedComplexNativeScript_Any() => () {
            writer.writeUint8(NativeScriptType.any.index);
            writer.writeUint32(script.scripts.length);
          },
        ParsedComplexNativeScript_NOfK() => () {
            writer.writeUint8(NativeScriptType.nOfK.index);
            writer.writeUint32(script.scripts.length);
            writer.writeUint32(script.requiredCount);
          },
      };
      result();
      return writer.toBytes();
    });
  }

  Uint8List serializeSimpleNativeScript(ParsedSimpleNativeScript script) {
    return useBinaryWriter((writer) {
      final result = switch (script) {
        ParsedSimpleNativeScript_PubKeyDeviceOwned() => () {
            writer.writeUint8(NativeScriptType.pubkeyDeviceOwned.index);
            writer.writeUint8(NativeScriptType.pubkeyDeviceOwned.encoding);
            writer.write(pathToBuf(script.path));
          },
        ParsedSimpleNativeScript_PubKeyThirdParty() => () {
            writer.writeUint8(NativeScriptType.pubkeyThirdParty.index);
            writer.writeUint8(NativeScriptType.pubkeyThirdParty.encoding);
            writer.write(hexToBuf(script.keyHashHex));
          },
        ParsedSimpleNativeScript_InvalidBefore() => () {
            writer.writeUint8(NativeScriptType.invalidBefore.index);
            writer.writeUint64(script.slot);
          },
        ParsedSimpleNativeScript_InvalidHereafter() => () {
            writer.writeUint8(NativeScriptType.invalidHereafter.index);
            writer.writeUint64(script.slot);
          },
      };
      result();
      return writer.toBytes();
    });
  }

  Uint8List serializeWholeNativeScriptFinish(
      NativeScriptHashDisplayFormat displayFormat) {
    final writer = ByteDataWriter();
    writer.writeUint8(displayFormat.int8Value);
    return writer.toBytes();
  }

  Uint8List hexToBuf(String hexString) {
    return Uint8List.fromList(hex.decode(hexString));
  }

  Uint8List pathToBuf(List<int> path) {
    final data = ByteData(1 + 4 * path.length);
    data.setUint8(0, path.length);

    for (int i = 0; i < path.length; i++) {
      data.setUint32(1 + i * 4, path[i], Endian.big);
    }
    return data.buffer.asUint8List();
  }
}
