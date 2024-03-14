import 'package:freezed_annotation/freezed_annotation.dart';

part 'spending_data_source.freezed.dart';

@freezed
sealed class SpendingDataSource with _$SpendingDataSource {
  const SpendingDataSource._();

  const factory SpendingDataSource.none() = SpendingDataSourceNone;

  const factory SpendingDataSource.path({
    required List<int> path,
  }) = SpendingDataSourcePath;

  const factory SpendingDataSource.scriptHash({
    required String scriptHashHex,
  }) = SpendingDataSourceScriptHash;
}
