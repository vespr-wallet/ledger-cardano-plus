import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'drep_deregistration_params.freezed.dart';

@freezed
sealed class DRepDeregistrationParams with _$DRepDeregistrationParams {
  const DRepDeregistrationParams._();

  const factory DRepDeregistrationParams({
    required CredentialParams dRepCredential,
    required BigInt deposit,
  }) = _DRepDeregistrationParams;
}

