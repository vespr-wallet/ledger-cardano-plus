import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_credential.freezed.dart';

@freezed
class ParsedCredential with _$ParsedCredential {
  ParsedCredential._();

  factory ParsedCredential.keyPath({
    required List<int> path,
  }) = CredentialKeyPath;

  factory ParsedCredential.keyHash({
    required String keyHashHex,
  }) {
    if (keyHashHex.length != 56) {
      throw ValidationException("Key hash hex must be exactly 56 characters long.");
    }
    return ParsedCredential.keyHash(keyHashHex: keyHashHex);
  }

  factory ParsedCredential.scriptHash({
    required String scriptHashHex,
  }) {
    if (scriptHashHex.length != 56) {
      throw ValidationException("Script hash hex must be exactly 56 characters long.");
    }
    return ParsedCredential.scriptHash(scriptHashHex: scriptHashHex);
  }
}
