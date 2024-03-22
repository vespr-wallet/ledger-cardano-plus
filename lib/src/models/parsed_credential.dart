import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_credential.freezed.dart';

@freezed
sealed class ParsedCredential with _$ParsedCredential {
  ParsedCredential._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      CredentialKeyHash() => () {
          if (thisClass.keyHashHex.length != keyHashLength) {
            throw ValidationException("Key hash hex must be exactly $keyHashLength characters long.");
          }
        },
      CredentialScriptHash() => () {
          if (thisClass.scriptHashHex.length != scriptHashLength) {
            throw ValidationException("Script hash hex must be exactly $scriptHashLength characters long.");
          }
        },
      CredentialKeyPath() => () {},
    };

    assertInvoker();
  }

  factory ParsedCredential.keyPath({
    required CredentialType type,
    required List<int> path,
  }) = CredentialKeyPath;

  factory ParsedCredential.keyHash({
    required CredentialType type,
    required String keyHashHex,
  }) = CredentialKeyHash;

  factory ParsedCredential.scriptHash({
    required CredentialType type,
    required String scriptHashHex,
  }) = CredentialScriptHash;
}
