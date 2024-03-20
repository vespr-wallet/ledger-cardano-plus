import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/cvote_public_key.dart';
import 'parsed_c_vote_delegation.dart';
import 'parsed_output_destination.dart';

part 'parsed_c_vote_registration_params.freezed.dart';

@freezed
class ParsedCVoteRegistrationParams with _$ParsedCVoteRegistrationParams {
  const ParsedCVoteRegistrationParams._();

  const factory ParsedCVoteRegistrationParams({
    required String format,
    CVotePublicKey? votePublicKey,
    List<int>? votePublicKeyPath,
    List<ParsedCVoteDelegation>? delegations,
    required List<int> stakingPath,
    required ParsedOutputDestination paymentDestination,
    required String nonce,
    String? votingPurpose,
  }) = ParsedCVoteRegistrationParamsData;

} 