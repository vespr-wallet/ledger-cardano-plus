import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/cvote_public_key.dart';
import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';
import 'parsed_c_vote_delegation.dart';
import 'parsed_output_destination.dart';

part 'parsed_c_vote_registration_params.freezed.dart';

@freezed
sealed class ParsedCVoteRegistrationParams
    with _$ParsedCVoteRegistrationParams {
  ParsedCVoteRegistrationParams._() {
    validateBIP32Path(votePublicKeyPath, 'votePublicKeyPath');
    validateBIP32Path(stakingPath, 'stakingPath');
    validateUint64(votingPurpose, 'votingPurpose');
    validateUint64(nonce, 'nonce');
  }

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
}
