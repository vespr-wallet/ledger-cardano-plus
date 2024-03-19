import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_drep.freezed.dart';

@freezed
class ParsedDRep with _$ParsedDRep {
  ParsedDRep._();

  factory ParsedDRep.keyPath({
    required List<int> path,
  }) = DRepKeyPath;

  factory ParsedDRep.keyHash({
    required String keyHashHex,
  }) {
    if (keyHashHex.length != 56) {
      throw ValidationException("Key hash hex must be exactly 56 characters long.");
    }
    return ParsedDRep.keyHash(keyHashHex: keyHashHex);
  }

  factory ParsedDRep.scriptHash({
    required String scriptHashHex,
  }) {
    if (scriptHashHex.length != 56) {
      throw ValidationException("Script hash hex must be exactly 56 characters long.");
    }
    return ParsedDRep.scriptHash(scriptHashHex: scriptHashHex);
  }

  factory ParsedDRep.abstain() = DRepAbstain;

  factory ParsedDRep.noConfidence() = DRepNoConfidence;
}
