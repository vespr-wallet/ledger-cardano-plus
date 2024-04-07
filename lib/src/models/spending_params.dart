import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'spending_params.freezed.dart';

@freezed
sealed class SpendingParams with _$SpendingParams {
  SpendingParams._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      SpendingParamsPath() => () => validateBIP32Path(thisClass.spendingPath, 'spendingPath'),
      SpendingParamsScriptHash() => () => validateHexString(thisClass.spendingScriptHashHex, 'spendingScriptHashHex'),
    };
    assertInvoker();
  }

  factory SpendingParams.path({
    required List<int> spendingPath,
  }) = SpendingParamsPath;

  factory SpendingParams.scriptHash({
    required String spendingScriptHashHex,
  }) = SpendingParamsScriptHash;
}
