import "package:freezed_annotation/freezed_annotation.dart";
import "../../ledger_cardano_plus.dart";
import "../utils/utilities.dart";

part "parsed_simple_native_script.freezed.dart";

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
        throw LedgerCardanoValidationException("Slot cannot be negative");
      } else if (slot.bitLength > 64) {
        throw LedgerCardanoValidationException("Slot cannot have more than 64 bits");
      }
    }

    switch (thisObj) {
      case ParsedSimpleNativeScript_PubKeyDeviceOwned():
        break;
      case ParsedSimpleNativeScript_PubKeyThirdParty():
        validateExactHexString(thisObj.keyHashHex, "keyHashHex", 56);
      case ParsedSimpleNativeScript_InvalidBefore():
      case ParsedSimpleNativeScript_InvalidHereafter():
      // no-op
    }
  }

  factory ParsedSimpleNativeScript.pubKeyDeviceOwned({
    required LedgerSigningPath path,
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

  @override
  late final int nativeScriptSerializationValue = switch (this) {
    ParsedSimpleNativeScript_PubKeyDeviceOwned() => 0,
    ParsedSimpleNativeScript_PubKeyThirdParty() => 0,
    ParsedSimpleNativeScript_InvalidBefore() => 4,
    ParsedSimpleNativeScript_InvalidHereafter() => 5,
  };

  @override
  late final int pubkeyType = switch (this) {
    ParsedSimpleNativeScript_PubKeyDeviceOwned() => 1,
    ParsedSimpleNativeScript_PubKeyThirdParty() => 2,
    ParsedSimpleNativeScript_InvalidBefore() => 0,
    ParsedSimpleNativeScript_InvalidHereafter() => 0,
  };
}
