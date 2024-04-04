import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'staking_data_source.freezed.dart';

@freezed
sealed class StakingDataSource with _$StakingDataSource {
  StakingDataSource._(){
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      StakingDataSourceNone() => () {},
      StakingDataSourceKeyPath() => () {
        validateBIP32Path(thisClass.path, 'path');
      },
      StakingDataSourceKeyHash() => () {
        validateMaxHexString(thisClass.keyHashHex, 'keyHashHex', maxHexStringLength);
      },
      StakingDataSourceBlockchainPointer() => () {
        validate32bitUnsignedInteger(thisClass.blockIndex, 'blockIndex');
        validate32bitUnsignedInteger(thisClass.txIndex, 'txIndex');
        validate32bitUnsignedInteger(thisClass.certificateIndex, 'certificateIndex');
      },
      StakingDataSourceScriptHash() => () {
        validateMaxHexString(thisClass.scriptHashHex, 'scriptHashHex', maxHexStringLength);
      },
    };
    assertinvoker();
  }

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
