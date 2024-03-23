import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'staking_data_source.freezed.dart';

@freezed
sealed class StakingDataSource with _$StakingDataSource {
  StakingDataSource._();

  factory StakingDataSource.none() = StakingDataSourceNone;

  factory StakingDataSource.keyPath({
    required List<int> path,
  }) = StakingDataSourceKeyPath;

  factory StakingDataSource.keyHash({
    required String keyHashHex,
  }) = StakingDataSourceKeyHash;

  factory StakingDataSource.blockchainPointer({
    required int blockIndex,
    required int txIndex,
    required int certificateIndex,
  }) = StakingDataSourceBlockchainPointer;

  factory StakingDataSource.scriptHash({
    required String scriptHashHex,
  }) = StakingDataSourceScriptHash;

  late final StakingDataSourceType stakingDataSourceType = switch (this) {
    StakingDataSourceNone() => StakingDataSourceType.none,
    StakingDataSourceKeyPath() => StakingDataSourceType.keyPath,
    StakingDataSourceKeyHash() => StakingDataSourceType.keyHash,
    StakingDataSourceBlockchainPointer() => StakingDataSourceType.blockchainPointer,
    StakingDataSourceScriptHash() => StakingDataSourceType.scriptHash,
  };
}
