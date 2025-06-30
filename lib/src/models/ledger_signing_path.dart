import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
part 'ledger_signing_path.freezed.dart';

@freezed
sealed class LedgerSigningPath with _$LedgerSigningPath {
  LedgerSigningPath._();

  // TODO: is there another stake pool key path?
  // [
  //   harden + 1853,
  //   harden + 1815,
  //   harden + 0,
  //   harden + 0,
  // ]
  // above was observer in conway voting tests
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

  @override
  late final List<int> signingPath = switch (this) {
    LedgerSigningPath_Byron(account: final account, address: final address) => [
        harden + 44,
        harden + 1815,
        harden + account,
        0,
        address
      ],
    LedgerSigningPath_Shelley(
      account: final account,
      role: ShelleyAddressRole role,
      address: final address
    ) =>
      [
        harden + 1852,
        harden + 1815,
        harden + account,
        role.derivationIndex,
        address
      ],
    LedgerSigningPath_CIP36(account: final account, address: final address) => [
        harden + 1694,
        harden + 1815,
        harden + account,
        0,
        address
      ],
    LedgerSigningPath_Custom(path: final path) => path,
  };
}
