import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_simple_native_script.freezed.dart';

@freezed
sealed class ParsedSimpleNativeScript with _$ParsedSimpleNativeScript {
  ParsedSimpleNativeScript._() {
    final thisObj = this;
    final BigInt? slot = switch (thisObj) {
      ParsedSimpleNativeScript_InvalidBefore() => thisObj.slot,
      ParsedSimpleNativeScript_InvalidHereafter() => thisObj.slot,
      ParsedSimpleNativeScript_PubKeyDeviceOwned() => null,
      ParsedSimpleNativeScript_PubKeyThirdParty() => null,
    };

    if (slot != null) {
      if (slot < BigInt.zero) {
        throw ValidationException("Slot cannot be negative");
      } else if (slot.bitLength > 64) {
        throw ValidationException("Slot cannot have more than 64 bits");
      }
    }
  }

  factory ParsedSimpleNativeScript.pubKeyDeviceOwned({
    required List<int> path,
  }) = ParsedSimpleNativeScript_PubKeyDeviceOwned;

  factory ParsedSimpleNativeScript.pubKeyThirdParty({
    required String keyHashHex,
  }) = ParsedSimpleNativeScript_PubKeyThirdParty;

  factory ParsedSimpleNativeScript.invalidBefore({
    required BigInt slot,
  }) = ParsedSimpleNativeScript_InvalidBefore;

  factory ParsedSimpleNativeScript.invalidHereafter({
    required BigInt slot,
  }) = ParsedSimpleNativeScript_InvalidHereafter;
}
