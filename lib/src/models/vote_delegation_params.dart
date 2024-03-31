import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';
import 'package:ledger_cardano/src/models/drep_params.dart';

part 'vote_delegation_params.freezed.dart';

@freezed
sealed class VoteDelegationParams with _$VoteDelegationParams {
  const factory VoteDelegationParams({
    required CredentialParams stakeCredential,
    required DRepParams dRep,
  }) = _VoteDelegationParams;
}