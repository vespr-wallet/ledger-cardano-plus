import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/authorize_committee_params.dart';
import 'package:ledger_cardano/src/models/drep_deregistration_params.dart';
import 'package:ledger_cardano/src/models/drep_registration_params.dart';
import 'package:ledger_cardano/src/models/drep_update_params.dart';
import 'package:ledger_cardano/src/models/pool_registration_params.dart';
import 'package:ledger_cardano/src/models/pool_retirement_params.dart';
import 'package:ledger_cardano/src/models/resign_committee_params.dart';
import 'package:ledger_cardano/src/models/stake_delegation_params.dart';
import 'package:ledger_cardano/src/models/stake_deregistration_conway_params.dart';
import 'package:ledger_cardano/src/models/stake_deregistration_params.dart';
import 'package:ledger_cardano/src/models/stake_registration_conway_params.dart';
import 'package:ledger_cardano/src/models/stake_registration_params.dart';
import 'package:ledger_cardano/src/models/vote_delegation_params.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'certificate.freezed.dart';

@freezed
sealed class Certificate with _$Certificate {
  Certificate._();

  factory Certificate.stakeRegistration({
    required StakeRegistrationParams params,
  }) = StakeRegistration;

  factory Certificate.stakeDeregistration({
    required StakeDeregistrationParams params,
  }) = StakeDeregistration;

  factory Certificate.stakeRegistrationConway({
    required StakeRegistrationConwayParams params,
  }) = StakeRegistrationConway;

  factory Certificate.stakeDeregistrationConway({
    required StakeDeregistrationConwayParams params,
  }) = StakeDeregistrationConway;

  factory Certificate.stakeDelegation({
    required StakeDelegationParams params,
  }) = StakeDelegation;

  factory Certificate.voteDelegation({
    required VoteDelegationParams params,
  }) = VoteDelegation;

  factory Certificate.authorizeCommitteeHot({
    required AuthorizeCommitteeParams params,
  }) = AuthorizeCommitteeHot;

  factory Certificate.resignCommitteeCold({
    required ResignCommitteeParams params,
  }) = ResignCommitteeCold;

  factory Certificate.dRepRegistration({
    required DRepRegistrationParams params,
  }) = DRepRegistration;

  factory Certificate.dRepDeregistration({
    required DRepDeregistrationParams params,
  }) = DRepDeregistration;

  factory Certificate.dRepUpdate({
    required DRepUpdateParams params,
  }) = DRepUpdate;

  factory Certificate.stakePoolRegistration({
    required PoolRegistrationParams params,
  }) = StakePoolRegistration;

  factory Certificate.stakePoolRetirement({
    required PoolRetirementParams params,
  }) = StakePoolRetirement;
  
  late final CertificateType certificateType = switch (this) {
    StakeRegistration() => CertificateType.stakeRegistration,
    StakeDeregistration() => CertificateType.stakeDeregistration,
    StakeRegistrationConway() => CertificateType.stakeRegistrationConway,
    StakeDeregistrationConway() => CertificateType.stakeDeregistrationConway,
    StakeDelegation() => CertificateType.stakeDelegation,
    AuthorizeCommitteeHot() => CertificateType.authorizeCommitteeHot,
    ResignCommitteeCold() => CertificateType.resignCommitteeCold,
    DRepRegistration() => CertificateType.dRepRegistration,
    DRepDeregistration() => CertificateType.dRepDeregistration,
    DRepUpdate() => CertificateType.dRepUpdate,
    StakePoolRegistration() => CertificateType.stakePoolRegistration,
    StakePoolRetirement() => CertificateType.stakePoolRetirement,
    VoteDelegation() => CertificateType.voteDelegation,
  };
  
}