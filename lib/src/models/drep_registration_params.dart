import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/anchor_params.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'drep_registration_params.freezed.dart';

@freezed
sealed class DRepRegistrationParams with _$DRepRegistrationParams {
  const DRepRegistrationParams._();

  const factory DRepRegistrationParams({
    required CredentialParams dRepCredential,
    required BigInt deposit,
    AnchorParams? anchor,
  }) = _DRepRegistrationParams;
}