import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'spending_data_source.freezed.dart';

@freezed
sealed class SpendingDataSource with _$SpendingDataSource {
  const SpendingDataSource._();

  const factory SpendingDataSource.none({
    required SpendingDataSourceType type,
  }) = SpendingDataSourceNone;

  const factory SpendingDataSource.path({
    required SpendingDataSourceType type,
    required List<int> path,
  }) = SpendingDataSourcePath;

  const factory SpendingDataSource.scriptHash({
    required SpendingDataSourceType type,
    required String scriptHashHex,
  }) = SpendingDataSourceScriptHash;
}
