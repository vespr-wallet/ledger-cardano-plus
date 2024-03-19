import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_c_vote_registration_params.dart';

part 'parsed_tx_auxiliary_data.freezed.dart';

@freezed
class ParsedTxAuxiliaryData with _$ParsedTxAuxiliaryData {
  const ParsedTxAuxiliaryData._();

  const factory ParsedTxAuxiliaryData.arbitraryHash({
    required String hashHex,
  }) = ArbitraryHash;

  const factory ParsedTxAuxiliaryData.cip36Registration({
    required ParsedCVoteRegistrationParams params,
  }) = CIP36Registration;

}