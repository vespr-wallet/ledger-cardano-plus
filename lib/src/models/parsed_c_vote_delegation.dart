import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_c_vote_delegation.freezed.dart';

@freezed
class ParsedCVoteDelegation with _$ParsedCVoteDelegation {
  const ParsedCVoteDelegation._();

  const factory ParsedCVoteDelegation.path({
    required List<int> voteKeyPath,
    required int weight,
  }) = PathDelegation;

  const factory ParsedCVoteDelegation.key({
    required String voteKey,
    required int weight,
  }) = KeyDelegation;

}