import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'staking_data_source.freezed.dart';

@freezed
sealed class StakingDataSource with _$StakingDataSource {
  const StakingDataSource._();

  const factory StakingDataSource.none({
    required StakingDataSourceType type,
  }) = StakingDataSourceNone;

  const factory StakingDataSource.keyPath({
    required StakingDataSourceType type,
    required List<int> path,
  }) = StakingDataSourceKeyPath;

  const factory StakingDataSource.keyHash({
    required StakingDataSourceType type,
    required String keyHashHex,
  }) = StakingDataSourceKeyHash;

  const factory StakingDataSource.blockchainPointer({
    required StakingDataSourceType type,
    required int blockIndex,
    required int txIndex,
    required int certificateIndex,
  }) = StakingDataSourceBlockchainPointer;

  const factory StakingDataSource.scriptHash({
    required StakingDataSourceType type,
    required String scriptHashHex,
  }) = StakingDataSourceScriptHash;
}
