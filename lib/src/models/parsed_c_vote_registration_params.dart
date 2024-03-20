import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/cvote_public_key.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_c_vote_delegation.dart';
import 'parsed_output_destination.dart';

part 'parsed_c_vote_registration_params.freezed.dart';

@freezed
sealed class ParsedCVoteRegistrationParams with _$ParsedCVoteRegistrationParams {
  const ParsedCVoteRegistrationParams._();

  const factory ParsedCVoteRegistrationParams({
    required CIP36VoteRegistrationFormat format,
    required CVotePublicKey? votePublicKey,
    required List<int>? votePublicKeyPath,
    required List<ParsedCVoteDelegation>? delegations,
    required List<int> stakingPath,
    required ParsedOutputDestination paymentDestination,
    required String nonce,
    required String? votingPurpose,
  }) = _ParsedCVoteRegistrationParams;
}