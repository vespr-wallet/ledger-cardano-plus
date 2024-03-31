import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'stake_registration_params.freezed.dart';

@freezed
sealed class StakeRegistrationParams with _$StakeRegistrationParams {
  StakeRegistrationParams._();

  factory StakeRegistrationParams({
    required CredentialParams stakeCredential,
  }) = _StakeRegistrationParams;
}