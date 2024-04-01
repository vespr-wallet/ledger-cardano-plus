import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';

part 'spending_params.freezed.dart';

@freezed
sealed class SpendingParams with _$SpendingParams {
  SpendingParams._();

  factory SpendingParams.path({
    required List<int> spendingPath,
  }) = SpendingParamsPath;

  factory SpendingParams.scriptHash({
    required String spendingScriptHashHex,
  }) = SpendingParamsScriptHash;

  late final SpendingDataSource spendingDataSource = switch (this) {
    SpendingParamsPath(spendingPath: final spendingPath) => SpendingDataSource.path(path: spendingPath),
    SpendingParamsScriptHash(spendingScriptHashHex: final spendingScriptHashHex) =>
      SpendingDataSource.scriptHash(scriptHashHex: spendingScriptHashHex),
  };
}
