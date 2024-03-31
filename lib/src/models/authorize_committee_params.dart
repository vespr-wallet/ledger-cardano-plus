import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'authorize_committee_params.freezed.dart';

@freezed
sealed class AuthorizeCommitteeParams with _$AuthorizeCommitteeParams {
  const AuthorizeCommitteeParams._();

  const factory AuthorizeCommitteeParams({
    required CredentialParams coldCredential,
    required CredentialParams hotCredential,
  }) = _AuthorizeCommitteeParams;
}