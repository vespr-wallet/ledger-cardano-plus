import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'spending_data_source.freezed.dart';

@freezed
sealed class SpendingDataSource with _$SpendingDataSource {
   SpendingDataSource._();

   factory SpendingDataSource.none() = SpendingDataSourceNone;

   factory SpendingDataSource.path({
    required List<int> path,
  }) = SpendingDataSourcePath;

   factory SpendingDataSource.scriptHash({
    required String scriptHashHex,
  }) = SpendingDataSourceScriptHash;
  
  late final SpendingDataSourceType spendingDataSourceType = switch (this) {
    SpendingDataSourceNone() => SpendingDataSourceType.none,
    SpendingDataSourcePath() => SpendingDataSourceType.path,
    SpendingDataSourceScriptHash() => SpendingDataSourceType.scriptHash,
  };
}
