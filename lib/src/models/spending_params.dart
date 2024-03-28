import 'package:freezed_annotation/freezed_annotation.dart';

part 'spending_params.freezed.dart';

@freezed
 class SpendingParams with _$SpendingParams {
   SpendingParams._();

  factory SpendingParams.path({
    required List<int> spendingPath,
  }) = SpendingParamsPath;

  factory SpendingParams.scriptHash({
    required String spendingScriptHashHex,
  }) = SpendingParamsScriptHash;
}