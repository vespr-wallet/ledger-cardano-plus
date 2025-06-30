import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "spending_params.freezed.dart";

@freezed
sealed class SpendingParams with _$SpendingParams {
  SpendingParams._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      SpendingParamsPath() => () =>
          validateBIP32Path(thisClass.spendingPath, "spendingPath"),
      SpendingParamsScriptHash() => () => validateHexString(
          thisClass.spendingScriptHashHex, "spendingScriptHashHex"),
    };
    assertInvoker();
  }

  factory SpendingParams.path({
    required LedgerSigningPath spendingPath,
  }) = SpendingParamsPath;

  factory SpendingParams.scriptHash({
    required String spendingScriptHashHex,
  }) = SpendingParamsScriptHash;
}
