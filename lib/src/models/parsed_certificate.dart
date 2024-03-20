import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_credential.dart';
import 'parsed_drep.dart';
import 'parsed_anchor.dart';
import 'parsed_pool_params.dart';

part 'parsed_certificate.freezed.dart';

@freezed
sealed class ParsedCertificate with _$ParsedCertificate {
  const ParsedCertificate._();

  const factory ParsedCertificate.stakeRegistration({
    required ParsedCredential stakeCredential,
  }) = StakeRegistration;

  const factory ParsedCertificate.stakeRegistrationConway({
    required ParsedCredential stakeCredential,
    required String deposit,
  }) = StakeRegistrationConway;

  const factory ParsedCertificate.stakeDeregistration({
    required ParsedCredential stakeCredential,
  }) = StakeDeregistration;

  const factory ParsedCertificate.stakeDeregistrationConway({
    required ParsedCredential stakeCredential,
    required String deposit,
  }) = StakeDeregistrationConway;

  const factory ParsedCertificate.stakeDelegation({
    required ParsedCredential stakeCredential,
    required String poolKeyHashHex,
  }) = StakeDelegation;

  const factory ParsedCertificate.voteDelegation({
    required ParsedCredential stakeCredential,
    required ParsedDRep dRep,
  }) = VoteDelegation;

  const factory ParsedCertificate.authorizeCommitteeHot({
    required ParsedCredential coldCredential,
    required ParsedCredential hotCredential,
  }) = AuthorizeCommitteeHot;

  const factory ParsedCertificate.resignCommitteeCold({
    required ParsedCredential coldCredential,
     ParsedAnchor? anchor,
  }) = ResignCommitteeCold;

  const factory ParsedCertificate.dRepRegistration({
    required ParsedCredential dRepCredential,
    required String deposit,
     ParsedAnchor? anchor,
  }) = DRepRegistration;

  const factory ParsedCertificate.dRepDeregistration({
    required ParsedCredential dRepCredential,
    required String deposit,
  }) = DRepDeregistration;

  const factory ParsedCertificate.dRepUpdate({
    required ParsedCredential dRepCredential,
     ParsedAnchor? anchor,
  }) = DRepUpdate;

  const factory ParsedCertificate.stakePoolRegistration({
    required ParsedPoolParams pool,
  }) = StakePoolRegistration;

  const factory ParsedCertificate.stakePoolRetirement({
    required List<int> path,
    required String retirementEpoch,
  }) = StakePoolRetirement;

}