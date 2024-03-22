import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_credential.dart';
import 'parsed_drep.dart';
import 'parsed_anchor.dart';
import 'parsed_pool_params.dart';

part 'parsed_certificate.freezed.dart';

@freezed
sealed class ParsedCertificate with _$ParsedCertificate {
  const ParsedCertificate._();

  const factory ParsedCertificate.stakeRegistration({
    required CertificateType type,
    required ParsedCredential stakeCredential,
  }) = StakeRegistration;

  const factory ParsedCertificate.stakeRegistrationConway({
    required CertificateType type,
    required ParsedCredential stakeCredential,
    required String deposit,
  }) = StakeRegistrationConway;

  const factory ParsedCertificate.stakeDeregistration({
    required CertificateType type,
    required ParsedCredential stakeCredential,
  }) = StakeDeregistration;

  const factory ParsedCertificate.stakeDeregistrationConway({
    required CertificateType type,
    required ParsedCredential stakeCredential,
    required String deposit,
  }) = StakeDeregistrationConway;

  const factory ParsedCertificate.stakeDelegation({
    required CertificateType type,
    required ParsedCredential stakeCredential,
    required String poolKeyHashHex,
  }) = StakeDelegation;

  const factory ParsedCertificate.voteDelegation({
    required CertificateType type,
    required ParsedCredential stakeCredential,
    required ParsedDRep dRep,
  }) = VoteDelegation;

  const factory ParsedCertificate.authorizeCommitteeHot({
    required CertificateType type,
    required ParsedCredential coldCredential,
    required ParsedCredential hotCredential,
  }) = AuthorizeCommitteeHot;

  const factory ParsedCertificate.resignCommitteeCold({
    required CertificateType type,
    required ParsedCredential coldCredential,
    required ParsedAnchor anchor,
  }) = ResignCommitteeCold;

  const factory ParsedCertificate.dRepRegistration({
    required CertificateType type,
    required ParsedCredential dRepCredential,
    required String deposit,
    required ParsedAnchor anchor,
  }) = DRepRegistration;

  const factory ParsedCertificate.dRepDeregistration({
    required CertificateType type,
    required ParsedCredential dRepCredential,
    required String deposit,
  }) = DRepDeregistration;

  const factory ParsedCertificate.dRepUpdate({
    required CertificateType type,
    required ParsedCredential dRepCredential,
    required ParsedAnchor anchor,
  }) = DRepUpdate;

  const factory ParsedCertificate.stakePoolRegistration({
    required CertificateType type,
    required ParsedPoolParams pool,
  }) = StakePoolRegistration;

  const factory ParsedCertificate.stakePoolRetirement({
    required CertificateType type,
    required List<int> path,
    required String retirementEpoch,
  }) = StakePoolRetirement;
}
