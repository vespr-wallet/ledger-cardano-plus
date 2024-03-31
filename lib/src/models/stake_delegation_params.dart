import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'stake_delegation_params.freezed.dart';

@freezed
sealed class StakeDelegationParams with _$StakeDelegationParams {
  const StakeDelegationParams._();

  const factory StakeDelegationParams({
    required CredentialParams stakeCredential,
    required String poolKeyHashHex,
  }) = _StakeDelegationParams;
}