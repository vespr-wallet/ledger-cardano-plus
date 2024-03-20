import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'script_data_hash.freezed.dart';

@freezed
sealed class ScriptDataHash with _$ScriptDataHash {
  ScriptDataHash._() {
    if (hexString.length != expectedLength) {
      throw ValidationException('ScriptDataHash must be a $expectedLength-byte hex string.');
    }
  }

  factory ScriptDataHash({
    required String hexString,
  }) = _ScriptDataHash;
}
