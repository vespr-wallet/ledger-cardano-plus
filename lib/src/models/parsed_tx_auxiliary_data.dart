import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'parsed_c_vote_registration_params.dart';

part 'parsed_tx_auxiliary_data.freezed.dart';

@freezed
sealed class ParsedTxAuxiliaryData with _$ParsedTxAuxiliaryData {
  ParsedTxAuxiliaryData._(){
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      ArbitraryHash() => () => validateExactHexString(thisClass.hashHex, 'hashHex', auxiliaryDataHashHexLength),
      CIP36Registration() => () => (),
    };
    assertinvoker();
  }

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
