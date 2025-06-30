import "package:freezed_annotation/freezed_annotation.dart";

import "parsed_vote.dart";
import "parsed_voter.dart";

part "parsed_voter_votes.freezed.dart";

@freezed
sealed class ParsedVoterVotes with _$ParsedVoterVotes {

  factory ParsedVoterVotes({
    required ParsedVoter voter,
    required List<ParsedVote> votes,
  }) = _ParsedVoterVotes;
  ParsedVoterVotes._();
}
