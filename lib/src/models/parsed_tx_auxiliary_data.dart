import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_c_vote_registration_params.dart';

part 'parsed_tx_auxiliary_data.freezed.dart';

@freezed
sealed class ParsedTxAuxiliaryData with _$ParsedTxAuxiliaryData {
  const ParsedTxAuxiliaryData._();

  const factory ParsedTxAuxiliaryData.arbitraryHash({
    required TxAuxiliaryDataType type,
    required String hashHex,
  }) = ArbitraryHash;

  const factory ParsedTxAuxiliaryData.cip36Registration({
    required TxAuxiliaryDataType type,
    required ParsedCVoteRegistrationParams params,
  }) = CIP36Registration;

}