import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/utilities.dart";
import "ledger_signing_path.dart";
import "parsed_anchor.dart";
import "parsed_credential.dart";
import "parsed_drep.dart";
import "parsed_pool_params.dart";

part "parsed_certificate.freezed.dart";

@freezed
sealed class ParsedCertificate with _$ParsedCertificate {
  ParsedCertificate._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      StakeRegistration() => () {},
      StakeRegistrationConway() => () {
          validateUint64(thisClass.deposit, "deposit");
        },
      StakeDeregistration() => () {},
      StakeDeregistrationConway() => () {
          validateUint64(thisClass.deposit, "deposit");
        },
      StakeDelegation() => () {
          validateHexString(thisClass.poolKeyHashHex, "poolKeyHashHex");
        },
      VoteDelegation() => () {},
      AuthorizeCommitteeHot() => () {},
      ResignCommitteeCold() => () {},
      DRepRegistration() => () {
          validateUint64(thisClass.deposit, "deposit");
        },
      DRepDeregistration() => () {
          validateUint64(thisClass.deposit, "deposit");
        },
      DRepUpdate() => () {},
      StakePoolRegistration() => () {},
      StakePoolRetirement() => () {
          validateUint64(thisClass.retirementEpoch, "retirementEpoch");
          validateBIP32Path(thisClass.path, "path");
        },
    };
    assertinvoker();
  }

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
    required LedgerSigningPath path,
    required BigInt retirementEpoch,
  }) = StakePoolRetirement;

  @override
  late final bool isConway = switch (this) {
    StakeRegistration() => false,
    StakeDeregistration() => false,
    StakeDelegation() => false,
    StakePoolRegistration() => false,
    StakePoolRetirement() => false,
    StakeRegistrationConway() => true,
    StakeDeregistrationConway() => true,
    VoteDelegation() => true,
    AuthorizeCommitteeHot() => true,
    ResignCommitteeCold() => true,
    DRepRegistration() => true,
    DRepDeregistration() => true,
    DRepUpdate() => true,
  };

  @override
  late final int certificateTypeSerializationValue = switch (this) {
    StakeRegistration() => 0,
    StakeDeregistration() => 1,
    StakeDelegation() => 2,
    StakePoolRegistration() => 3,
    StakePoolRetirement() => 4,
    StakeRegistrationConway() => 7,
    StakeDeregistrationConway() => 8,
    VoteDelegation() => 9,
    AuthorizeCommitteeHot() => 14,
    ResignCommitteeCold() => 15,
    DRepRegistration() => 16,
    DRepDeregistration() => 17,
    DRepUpdate() => 18,
  };
}
