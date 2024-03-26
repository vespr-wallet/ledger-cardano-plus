import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_credential.dart';
import 'parsed_drep.dart';
import 'parsed_anchor.dart';
import 'parsed_pool_params.dart';

part 'parsed_certificate.freezed.dart';

@freezed
sealed class ParsedCertificate with _$ParsedCertificate {
  ParsedCertificate._();

  factory ParsedCertificate.stakeRegistration({
    required ParsedCredential stakeCredential,
  }) = StakeRegistration;

  factory ParsedCertificate.stakeRegistrationConway({
    required ParsedCredential stakeCredential,
    required BigInt deposit,
  }) = StakeRegistrationConway;

  factory ParsedCertificate.stakeDeregistration({
    required ParsedCredential stakeCredential,
  }) = StakeDeregistration;

  factory ParsedCertificate.stakeDeregistrationConway({
    required ParsedCredential stakeCredential,
    required BigInt deposit,
  }) = StakeDeregistrationConway;

  factory ParsedCertificate.stakeDelegation({
    required ParsedCredential stakeCredential,
    required String poolKeyHashHex,
  }) = StakeDelegation;

  factory ParsedCertificate.voteDelegation({
    required ParsedCredential stakeCredential,
    required ParsedDRep dRep,
  }) = VoteDelegation;

  factory ParsedCertificate.authorizeCommitteeHot({
    required ParsedCredential coldCredential,
    required ParsedCredential hotCredential,
  }) = AuthorizeCommitteeHot;

  factory ParsedCertificate.resignCommitteeCold({
    required ParsedCredential coldCredential,
    ParsedAnchor? anchor,
  }) = ResignCommitteeCold;

  factory ParsedCertificate.dRepRegistration({
    required ParsedCredential dRepCredential,
    required BigInt deposit,
    ParsedAnchor? anchor,
  }) = DRepRegistration;

  factory ParsedCertificate.dRepDeregistration({
    required ParsedCredential dRepCredential,
    required BigInt deposit,
  }) = DRepDeregistration;

  factory ParsedCertificate.dRepUpdate({
    required ParsedCredential dRepCredential,
    ParsedAnchor? anchor,
  }) = DRepUpdate;

  factory ParsedCertificate.stakePoolRegistration({
    required ParsedPoolParams pool,
  }) = StakePoolRegistration;

  factory ParsedCertificate.stakePoolRetirement({
    required List<int> path,
    required BigInt retirementEpoch,
  }) = StakePoolRetirement;

  late final CertificateType certificateType = switch (this) {
    StakeRegistration() => CertificateType.stakeRegistration,
    StakeRegistrationConway() => CertificateType.stakeRegistrationConway,
    StakeDeregistration() => CertificateType.stakeDeregistration,
    StakeDeregistrationConway() => CertificateType.stakeDeregistrationConway,
    StakeDelegation() => CertificateType.stakeDelegation,
    VoteDelegation() => CertificateType.voteDelegation,
    AuthorizeCommitteeHot() => CertificateType.authorizeCommitteeHot,
    ResignCommitteeCold() => CertificateType.resignCommitteeCold,
    DRepRegistration() => CertificateType.dRepRegistration,
    DRepDeregistration() => CertificateType.dRepDeregistration,
    DRepUpdate() => CertificateType.dRepUpdate,
    StakePoolRegistration() => CertificateType.stakePoolRegistration,
    StakePoolRetirement() => CertificateType.stakePoolRetirement,
  };
}
