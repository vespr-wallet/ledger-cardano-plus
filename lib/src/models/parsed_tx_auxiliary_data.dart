import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_c_vote_registration_params.dart';

part 'parsed_tx_auxiliary_data.freezed.dart';

@freezed
sealed class ParsedTxAuxiliaryData with _$ParsedTxAuxiliaryData {
  ParsedTxAuxiliaryData._();

  factory ParsedTxAuxiliaryData.arbitraryHash({
    required String hashHex,
  }) = ArbitraryHash;

  factory ParsedTxAuxiliaryData.cip36Registration({
    required ParsedCVoteRegistrationParams params,
  }) = CIP36Registration;

  late final TxAuxiliaryDataType txAuxiliaryDataType = switch (this) {
    ArbitraryHash() => TxAuxiliaryDataType.arbitraryHash,
    CIP36Registration() => TxAuxiliaryDataType.cip36Registration,
  };
}
