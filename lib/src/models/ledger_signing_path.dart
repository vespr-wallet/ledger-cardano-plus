import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
part 'ledger_signing_path.freezed.dart';

@freezed
sealed class LedgerSigningPath with _$LedgerSigningPath {
  LedgerSigningPath._();

  factory LedgerSigningPath.byron({
    required int account,
    required int address,
  }) = LedgerSigningPath_Byron;
  factory LedgerSigningPath.shelley({
    required int account,
    required int address,
    required ShelleyAddressRole role,
  }) = LedgerSigningPath_Shelley;
  factory LedgerSigningPath.custom(List<int> path) = LedgerSigningPath_Custom;

  late final List<int> signingPath = switch (this) {
    LedgerSigningPath_Byron(account: final account, address: final address) => [
        harden + 44,
        harden + 1815,
        harden + account,
        0,
        address
      ],
    LedgerSigningPath_Shelley(account: final account, role: ShelleyAddressRole role, address: final address) => [
        harden + 1852,
        harden + 1815,
        harden + account,
        role.derivationIndex,
        address
      ],
    LedgerSigningPath_Custom(path: final path) => path,
  };
}
