import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'parsed_credential.freezed.dart';

@freezed
sealed class ParsedCredential with _$ParsedCredential {
  ParsedCredential._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      CredentialKeyHash() => () {
        validateExactHexString(thisClass.keyHashHex, 'keyHashHex', keyHashLength);
        },
      CredentialScriptHash() => () {
        validateExactHexString(thisClass.scriptHashHex, 'scriptHashHex', scriptHashLength);
        },
      CredentialKeyPath() => () {
        validateBIP32Path(thisClass.path, 'path');
        },
    };

    assertInvoker();
  }

  factory ParsedCredential.keyPath({
    required List<int> path,
  }) = CredentialKeyPath;

  factory ParsedCredential.keyHash({
    required String keyHashHex,
  }) = CredentialKeyHash;

  factory ParsedCredential.scriptHash({
    required String scriptHashHex,
  }) = CredentialScriptHash;

  late final CredentialType credentialType = switch (this) {
    CredentialKeyPath() => CredentialType.keyPath,
    CredentialKeyHash() => CredentialType.keyHash,
    CredentialScriptHash() => CredentialType.scriptHash,
  };
}
