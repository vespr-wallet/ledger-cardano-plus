import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_credential.dart';
import 'parsed_drep.dart';
import 'parsed_anchor.dart';

part 'conway_and_special_certificates.freezed.dart';

@freezed
sealed class ConwayAndSpecialCertificates with _$ConwayAndSpecialCertificates {
  ConwayAndSpecialCertificates._();

  factory ConwayAndSpecialCertificates.stakeRegistrationConway({
    required ParsedCredential stakeCredential,
    required String deposit,
  }) = StakeRegistrationConway;

  factory ConwayAndSpecialCertificates.stakeDeregistrationConway({
    required ParsedCredential stakeCredential,
    required String deposit,
  }) = StakeDeregistrationConway;

  factory ConwayAndSpecialCertificates.voteDelegation({
    required ParsedCredential stakeCredential,
    required ParsedDRep dRep,
  }) = VoteDelegation;

  factory ConwayAndSpecialCertificates.authorizeCommitteeHot({
    required ParsedCredential coldCredential,
    required ParsedCredential hotCredential,
  }) = AuthorizeCommitteeHot;

  factory ConwayAndSpecialCertificates.resignCommitteeCold({
    required ParsedCredential coldCredential,
    ParsedAnchor? anchor,
  }) = ResignCommitteeCold;

  factory ConwayAndSpecialCertificates.dRepRegistration({
    required ParsedCredential dRepCredential,
    required String deposit,
    ParsedAnchor? anchor,
  }) = DRepRegistration;

  factory ConwayAndSpecialCertificates.dRepDeregistration({
    required ParsedCredential dRepCredential,
    required String deposit,
  }) = DRepDeregistration;

  factory ConwayAndSpecialCertificates.dRepUpdate({
    required ParsedCredential dRepCredential,
    ParsedAnchor? anchor,
  }) = DRepUpdate;
  
  late final CertificateType certificateType = switch (this) {
    StakeRegistrationConway() => CertificateType.stakeRegistrationConway,
    StakeDeregistrationConway() => CertificateType.stakeDeregistrationConway,
    VoteDelegation() => CertificateType.voteDelegation,
    AuthorizeCommitteeHot() => CertificateType.authorizeCommitteeHot,
    ResignCommitteeCold() => CertificateType.resignCommitteeCold,
    DRepRegistration() => CertificateType.dRepRegistration,
    DRepDeregistration() => CertificateType.dRepDeregistration,
    DRepUpdate() => CertificateType.dRepUpdate,
  };
}