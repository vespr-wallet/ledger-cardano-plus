import 'package:freezed_annotation/freezed_annotation.dart';

part 'pool_retirement_params.freezed.dart';

@freezed
sealed class PoolRetirementParams with _$PoolRetirementParams {
  const PoolRetirementParams._();

  const factory PoolRetirementParams({
    required List<int> poolKeyPath,
    required BigInt retirementEpoch,
  }) = _PoolRetirementParams;
}