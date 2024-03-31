import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/anchor_params.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';

part 'resign_committee_params.freezed.dart';

@freezed
sealed class ResignCommitteeParams with _$ResignCommitteeParams {
  const ResignCommitteeParams._();

  const factory ResignCommitteeParams({
    required CredentialParams coldCredential,
    AnchorParams? anchor,
  }) = _ResignCommitteeParams;
}