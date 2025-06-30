import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';
import 'parsed_c_vote_registration_params.dart';

part 'parsed_tx_auxiliary_data.freezed.dart';

@freezed
sealed class ParsedTxAuxiliaryData with _$ParsedTxAuxiliaryData {
  ParsedTxAuxiliaryData._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      ArbitraryHash() => () => validateExactHexString(
          thisClass.hashHex, 'hashHex', auxiliaryDataHashHexLength),
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

  @override
  late final int txAuxiliaryDataValue = switch (this) {
    ArbitraryHash() => 0,
    CIP36Registration() => 1,
  };
}
