import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/constants.dart";
import "../utils/utilities.dart";

part "script_data_hash.freezed.dart";

@freezed
sealed class ScriptDataHash with _$ScriptDataHash {

  factory ScriptDataHash({
    required String hexString,
  }) = _ScriptDataHash;
  ScriptDataHash._() {
    validateExactHexString(hexString, "ScriptDataHash", scriptDataHashLength);
  }
}
