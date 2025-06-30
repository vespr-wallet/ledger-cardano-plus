import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/constants.dart";
import "../utils/utilities.dart";
import "cvote_public_key.dart";
import "ledger_signing_path.dart";
import "parsed_c_vote_delegation.dart";
import "parsed_output_destination.dart";

part "parsed_c_vote_registration_params.freezed.dart";

@freezed
sealed class ParsedCVoteRegistrationParams
    with _$ParsedCVoteRegistrationParams {

  factory ParsedCVoteRegistrationParams({
    required CIP36VoteRegistrationFormat format,
    required CVotePublicKey? votePublicKey,
    required LedgerSigningPath? votePublicKeyPath,
    required List<ParsedCVoteDelegation>? delegations,
    required LedgerSigningPath stakingPath,
    required ParsedOutputDestination paymentDestination,
    required BigInt nonce,
    required BigInt? votingPurpose,
  }) = _ParsedCVoteRegistrationParams;
  ParsedCVoteRegistrationParams._() {
    validateBIP32Path(votePublicKeyPath, "votePublicKeyPath");
    validateBIP32Path(stakingPath, "stakingPath");
    validateUint64(votingPurpose, "votingPurpose");
    validateUint64(nonce, "nonce");
  }
}
