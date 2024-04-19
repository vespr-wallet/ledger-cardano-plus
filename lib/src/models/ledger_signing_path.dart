import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
part 'ledger_signing_path.freezed.dart';

@freezed
sealed class LedgerSigningPath with _$LedgerSigningPath {
  const LedgerSigningPath._();
  
  const factory LedgerSigningPath.byron({required int account, required int address}) = LedgerSigningPath_Byron;
  const factory LedgerSigningPath.shelley({required int account, required int address, required ShelleyAddressRole role}) = LedgerSigningPath_Shelley;
  const factory LedgerSigningPath.custom(List<int> path) = LedgerSigningPath_Custom;
}