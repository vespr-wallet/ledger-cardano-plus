import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'script_data_hash.freezed.dart';

@freezed
sealed class ScriptDataHash with _$ScriptDataHash {
  ScriptDataHash._() {
    validateExactHexString(hexString, 'ScriptDataHash', scriptDataHashLength);
  }

  factory ScriptDataHash({
    required String hexString,
  }) = _ScriptDataHash;
}
