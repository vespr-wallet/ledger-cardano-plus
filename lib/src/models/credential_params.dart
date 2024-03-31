import 'package:freezed_annotation/freezed_annotation.dart';

part 'credential_params.freezed.dart';

@freezed
sealed class CredentialParams with _$CredentialParams {
   CredentialParams._();

  factory CredentialParams.keyPath({
    required String keyPath,
  }) = KeyPathCredentialParams;

  factory CredentialParams.keyHash({
    required String keyHashHex,
  }) = KeyHashCredentialParams;

  factory CredentialParams.scriptHash({
    required String scriptHashHex,
  }) = ScriptHashCredentialParams;
}