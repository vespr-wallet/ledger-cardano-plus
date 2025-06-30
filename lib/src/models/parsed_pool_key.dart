import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "parsed_pool_key.freezed.dart";

@freezed
sealed class ParsedPoolKey with _$ParsedPoolKey {
  ParsedPoolKey._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      DeviceOwnedPoolKey() => () => validateBIP32Path(thisClass.path, "path"),
      ThirdPartyPoolKey() => () =>
          validateHexString(thisClass.hashHex, "hashHex"),
    };
    assertInvoker();
  }

  factory ParsedPoolKey.deviceOwned({
    required LedgerSigningPath path,
  }) = DeviceOwnedPoolKey;

  factory ParsedPoolKey.thirdParty({
    required String hashHex,
  }) = ThirdPartyPoolKey;

  @override
  late final int poolKeyValue = switch (this) {
    DeviceOwnedPoolKey() => 1,
    ThirdPartyPoolKey() => 2,
  };
}
