import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'stake_deregistration_conway_params.freezed.dart';

@freezed
sealed class StakeDeregistrationConwayParams with _$StakeDeregistrationConwayParams {
  const StakeDeregistrationConwayParams._();

  const factory StakeDeregistrationConwayParams({
    required CredentialParams stakeCredential,
    required BigInt deposit,
  }) = _StakeDeregistrationConwayParams;
}

