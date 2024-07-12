import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'parsed_anchor.dart';

part 'parsed_voting_procedure.freezed.dart';

@freezed
sealed class ParsedVotingProcedure with _$ParsedVotingProcedure {
  ParsedVotingProcedure._();

  factory ParsedVotingProcedure({
    required VoteOption vote,
    ParsedAnchor? anchor,
  }) = _ParsedVotingProcedure;
}
