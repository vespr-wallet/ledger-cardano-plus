import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'stake_deregistration_params.freezed.dart';

@freezed
sealed class StakeDeregistrationParams with _$StakeDeregistrationParams {
  const StakeDeregistrationParams._();

  const factory StakeDeregistrationParams({
    required CredentialParams stakeCredential,
  }) = _StakeDeregistrationParams;
}