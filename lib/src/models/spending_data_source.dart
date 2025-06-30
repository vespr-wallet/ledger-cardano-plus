import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/constants.dart";
import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "spending_data_source.freezed.dart";

@freezed
sealed class SpendingDataSource with _$SpendingDataSource {
  SpendingDataSource._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      SpendingDataSourceNone() => () {},
      SpendingDataSourcePath() => () {
          validateBIP32Path(thisClass.path, "path");
        },
      SpendingDataSourceScriptHash() => () {
          validateHexString(thisClass.scriptHashHex, "scriptHashHex");
          validateMaxStringLength(thisClass.scriptHashHex, "scriptHashHex", stringLength64Bytes);
        },
    };
    assertinvoker();
  }

  factory SpendingDataSource.none() = SpendingDataSourceNone;

  factory SpendingDataSource.path({
    required LedgerSigningPath path,
  }) = SpendingDataSourcePath;

  factory SpendingDataSource.scriptHash({
    required String scriptHashHex,
  }) = SpendingDataSourceScriptHash;

  @override
  late final SpendingDataSourceType spendingDataSourceType = switch (this) {
    SpendingDataSourceNone() => SpendingDataSourceType.none,
    SpendingDataSourcePath() => SpendingDataSourceType.path,
    SpendingDataSourceScriptHash() => SpendingDataSourceType.scriptHash,
  };
}
