import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'stake_registration_conway_params.freezed.dart';

@freezed
sealed class StakeRegistrationConwayParams with _$StakeRegistrationConwayParams {
  const StakeRegistrationConwayParams._();

  const factory StakeRegistrationConwayParams({
    required CredentialParams stakeCredential,
    required BigInt deposit,
  }) = _StakeRegistrationConwayParams;
}