import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_drep.freezed.dart';

@freezed
sealed class ParsedDRep with _$ParsedDRep {
  ParsedDRep._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      DRepKeyPath() => () {},
      DRepKeyHash() => () {
          if (thisClass.keyHashHex.length != keyHashLength) {
            throw ValidationException("Key hash hex must be exactly $keyHashLength characters long.");
          }
        },
      DRepScriptHash() => () {
          if (thisClass.scriptHashHex.length != scriptDataHashLength) {
            throw ValidationException("Script hash hex must be exactly $scriptDataHashLength characters long.");
          }
        },
      DRepAbstain() => () {},
      DRepNoConfidence() => () {},
    };

    assertInvoker();
  }

  factory ParsedDRep.keyPath({
    required DRepType type,
    required List<int> path,
  }) = DRepKeyPath;

  factory ParsedDRep.keyHash({
    required DRepType type,
    required String keyHashHex,
  }) = DRepKeyHash;

  factory ParsedDRep.scriptHash({
    required DRepType type,
    required String scriptHashHex,
  }) = DRepScriptHash;

  factory ParsedDRep.abstain({
    required DRepType type,
  }) = DRepAbstain;

  factory ParsedDRep.noConfidence({
    required DRepType type,
  }) = DRepNoConfidence;
}
