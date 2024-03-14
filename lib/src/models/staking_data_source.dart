import 'package:freezed_annotation/freezed_annotation.dart';

part 'staking_data_source.freezed.dart';

@freezed
sealed class StakingDataSource with _$StakingDataSource {
  const StakingDataSource._();

  const factory StakingDataSource.none() = StakingDataSourceNone;

  const factory StakingDataSource.keyPath({
    required List<int> path,
  }) = StakingDataSourceKeyPath;

  const factory StakingDataSource.keyHash({
    required String keyHashHex,
  }) = StakingDataSourceKeyHash;

  const factory StakingDataSource.blockchainPointer({
    required int blockIndex,
    required int txIndex,
    required int certificateIndex,
  }) = StakingDataSourceBlockchainPointer;

  const factory StakingDataSource.scriptHash({
    required String scriptHashHex,
  }) = StakingDataSourceScriptHash;
}
