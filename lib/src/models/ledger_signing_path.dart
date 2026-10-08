import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/constants.dart";
import "../utils/exceptions.dart";
part "ledger_signing_path.freezed.dart";

@freezed
sealed class LedgerSigningPath with _$LedgerSigningPath {
  LedgerSigningPath._() {
    final thisClass = this;
    if (thisClass is LedgerSigningPath_PoolCold && thisClass.account != 0) {
      throw LedgerCardanoValidationException(
        "Pool cold key path account must be 0 (CIP-1853: 1853'/1815'/0'/index')",
      );
    }
  }

  /// Pool cold key path per CIP-1853: 1853'/1815'/0'/index'.
  /// [account] is the CIP-1853 usecase component and must be 0;
  /// the device rejects any other value.
  factory LedgerSigningPath.poolCold({
    required int account,
    required int index,
  }) = LedgerSigningPath_PoolCold;
  factory LedgerSigningPath.byron({
    required int account,
    required int address,
  }) = LedgerSigningPath_Byron;
  factory LedgerSigningPath.shelley({
    required int account,
    required int address,
    required ShelleyAddressRole role,
  }) = LedgerSigningPath_Shelley;
  factory LedgerSigningPath.cip36({
    required int account,
    required int address,
  }) = LedgerSigningPath_CIP36;
  factory LedgerSigningPath.custom(List<int> path) = LedgerSigningPath_Custom;

  late final List<int> signingPath = switch (this) {
    LedgerSigningPath_Byron(account: final account, address: final address) => [
      harden + 44,
      harden + 1815,
      harden + account,
      0,
      address,
    ],
    LedgerSigningPath_Shelley(account: final account, role: ShelleyAddressRole role, address: final address) => [
      harden + 1852,
      harden + 1815,
      harden + account,
      role.derivationIndex,
      address,
    ],
    LedgerSigningPath_CIP36(account: final account, address: final address) => [
      harden + 1694,
      harden + 1815,
      harden + account,
      0,
      address,
    ],
    LedgerSigningPath_PoolCold(account: final account, index: final index) => [
      harden + 1853,
      harden + 1815,
      harden + account,
      harden + index,
    ],
    LedgerSigningPath_Custom(path: final path) => path,
  };
}
