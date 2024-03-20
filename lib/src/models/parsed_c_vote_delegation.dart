import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_c_vote_delegation.freezed.dart';

@freezed
sealed class ParsedCVoteDelegation with _$ParsedCVoteDelegation {
  const ParsedCVoteDelegation._();

  const factory ParsedCVoteDelegation.path({
    required CIP36VoteDelegationType type,
    required List<int> voteKeyPath,
    required int weight,
  }) = PathDelegation;

  const factory ParsedCVoteDelegation.key({
    required CIP36VoteDelegationType type,
    required String voteKey,
    required int weight,
  }) = KeyDelegation;

}