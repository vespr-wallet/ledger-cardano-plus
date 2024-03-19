import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_c_vote_delegation.dart';
import 'parsed_output_destination.dart';

part 'parsed_c_vote_registration_params.freezed.dart';

@freezed
class ParsedCVoteRegistrationParams with _$ParsedCVoteRegistrationParams {
  const ParsedCVoteRegistrationParams._();

  const factory ParsedCVoteRegistrationParams({
    required String format,
    String? votePublicKey,
    List<int>? votePublicKeyPath,
    List<ParsedCVoteDelegation>? delegations,
    required List<int> stakingPath,
    required ParsedOutputDestination paymentDestination,
    required String nonce,
    String? votingPurpose,
  }) = ParsedCVoteRegistrationParamsData;

} 