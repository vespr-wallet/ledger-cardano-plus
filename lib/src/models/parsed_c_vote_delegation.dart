import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_c_vote_delegation.freezed.dart';

@freezed
sealed class ParsedCVoteDelegation with _$ParsedCVoteDelegation {
   ParsedCVoteDelegation._();

   factory ParsedCVoteDelegation.path({
    required List<int> voteKeyPath,
    required int weight,
  }) = PathDelegation;

   factory ParsedCVoteDelegation.key({
    required String voteKey,
    required int weight,
  }) = KeyDelegation;
  
  late final CIP36VoteDelegationType cVoteDelegationType = switch (this) {
    PathDelegation() => CIP36VoteDelegationType.path,
    KeyDelegation() => CIP36VoteDelegationType.key,
  };

}

