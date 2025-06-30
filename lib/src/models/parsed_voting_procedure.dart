import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/constants.dart";
import "parsed_anchor.dart";

part "parsed_voting_procedure.freezed.dart";

@freezed
sealed class ParsedVotingProcedure with _$ParsedVotingProcedure {

  factory ParsedVotingProcedure({
    required VoteOption vote,
    required ParsedAnchor? anchor,
  }) = _ParsedVotingProcedure;
  ParsedVotingProcedure._();
}
