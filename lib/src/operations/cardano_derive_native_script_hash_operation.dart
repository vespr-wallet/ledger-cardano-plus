import 'dart:typed_data';

import 'package:ledger_cardano/src/models/parsed_complex_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_simple_native_script.dart';
import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
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
    // TODO change to switch statement (writes sendOperation into a variable)
    if (script is ParsedNativeScript_Complex) {
      final complexScript = script.script;
      await send(
        SendOperation(
          ins: InstructionType.deriveNativeScriptHash.insValue,
          p1: 0x01,
          p2: 0x00,
          data: serializeComplexNativeScriptStart(complexScript),
          expectResponseLength: true,
        ),
      );
      for (final subscript in complexScript.scripts) {
        await _deriveNativeScriptHashAddScript(send, subscript);
      }
    } else if (script is ParsedNativeScript_Simple) {
      final simpleScript = script.script;
      await send(
        SendOperation(
          ins: InstructionType.deriveNativeScriptHash.insValue,
          p1: 0x02,
          p2: 0x00,
          data: serializeSimpleNativeScript(simpleScript),
          expectResponseLength: true,
        ),
      );
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
    final writer = ByteDataWriter();
    script.when(
      all: (scripts) {
        writer.writeUint8(NativeScriptType.all.index);
        writer.writeUint32(scripts.length);
      },
      any: (scripts) {
        writer.writeUint8(NativeScriptType.any.index);
        writer.writeUint32(scripts.length);
      },
      nOfK: (requiredCount, scripts) {
        writer.writeUint8(NativeScriptType.nOfK.index);
        writer.writeUint32(scripts.length);
        writer.writeUint32(requiredCount);
      },
    );
    return writer.toBytes();
  }

  Uint8List serializeSimpleNativeScript(ParsedSimpleNativeScript script) {
    // TODO ; use `useBinaryWriter`
    final writer = ByteDataWriter();

    // TODO use switch
    script.when(
      pubKeyDeviceOwned: (List<int> path) {
        writer.writeUint8(NativeScriptType.pubkeyDeviceOwned.index);
        writer.writeUint8(NativeScriptType.pubkeyDeviceOwned.encoding);
        writer.write(pathToBuf(path));
      },
      pubKeyThirdParty: (String keyHashHex) {
        writer.writeUint8(NativeScriptType.pubkeyThirdParty.index);
        writer.writeUint8(NativeScriptType.pubkeyThirdParty.encoding);
        writer.write(hexToBuf(keyHashHex));
      },
      invalidBefore: (int slot) {
        writer.writeUint8(NativeScriptType.invalidBefore.index);
        writer.writeUint64(slot);
      },
      invalidHereafter: (int slot) {
        writer.writeUint8(NativeScriptType.invalidHereafter.index);
        writer.writeUint64(slot);
      },
    );
    return writer.toBytes();
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
