import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_gov_action_id.dart';
import 'parsed_voting_procedure.dart';

part 'parsed_vote.freezed.dart';

@freezed
sealed class ParsedVote with _$ParsedVote {
  ParsedVote._();

  factory ParsedVote({
    required ParsedGovActionId govActionId,
    required ParsedVotingProcedure votingProcedure,
  }) = _ParsedVote;
}
