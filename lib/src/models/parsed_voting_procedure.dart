import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_anchor.dart';

part 'parsed_voting_procedure.freezed.dart';

@freezed
class ParsedVotingProcedure with _$ParsedVotingProcedure {
  const ParsedVotingProcedure._();

  const factory ParsedVotingProcedure({
    required VoteOption vote,
    ParsedAnchor? anchor,
  }) = ParsedVotingProcedureData;
}
 