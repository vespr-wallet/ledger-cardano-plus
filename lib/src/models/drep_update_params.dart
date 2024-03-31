import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/anchor_params.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'drep_update_params.freezed.dart';

@freezed
class DRepUpdateParams with _$DRepUpdateParams {
  const DRepUpdateParams._();

  const factory DRepUpdateParams({
    required CredentialParams dRepCredential,
    AnchorParams? anchor,
  }) = _DRepUpdateParams;
}