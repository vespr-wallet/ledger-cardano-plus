import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/constants.dart";
import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "staking_data_source.freezed.dart";

@freezed
sealed class StakingDataSource with _$StakingDataSource {
  StakingDataSource._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      StakingDataSourceNone() => () {},
      StakingDataSourceKey() => () {},
      StakingDataSourceBlockchainPointer() => () {
        validate32bitUnsignedInteger(thisClass.blockIndex, "blockIndex");
        validate32bitUnsignedInteger(thisClass.txIndex, "txIndex");
        validate32bitUnsignedInteger(thisClass.certificateIndex, "certificateIndex");
      },
      StakingDataSourceScriptHash() => () {
        validateHexString(thisClass.scriptHashHex, "scriptHashHex");
        validateMaxStringLength(thisClass.scriptHashHex, "scriptHashHex", stringLength64Bytes);
      },
    };
    assertinvoker();
  }

  factory StakingDataSource.none() = StakingDataSourceNone;

  factory StakingDataSource.key({
    required StakingDataSourceKeyData data,
  }) = StakingDataSourceKey;

  static StakingDataSourceKey keyPath({
    required LedgerSigningPath path,
  }) => StakingDataSourceKey(
    data: StakingDataSourceKeyData.path(path: path),
  );

  static StakingDataSourceKey keyHash({
    required String keyHashHex,
  }) => StakingDataSourceKey(
    data: StakingDataSourceKeyData.hash(keyHashHex: keyHashHex),
  );

  factory StakingDataSource.blockchainPointer({
    required int blockIndex,
    required int txIndex,
    required int certificateIndex,
  }) = StakingDataSourceBlockchainPointer;

  factory StakingDataSource.scriptHash({
    required String scriptHashHex,
  }) = StakingDataSourceScriptHash;

  @override
  late final int stakingDataSourceValue = switch (this) {
    StakingDataSourceNone() => 0x11,
    StakingDataSourceKey(data: final data) => data.stakingDataSourceValue,
    StakingDataSourceBlockchainPointer() => 0x44,
    StakingDataSourceScriptHash() => 0x55,
  };
}

@freezed
sealed class StakingDataSourceKeyData with _$StakingDataSourceKeyData {
  StakingDataSourceKeyData._() {
    switch (this) {
      case StakingDataSourceKeyPath(path: final path):
        validateBIP32Path(path, "path");
      case StakingDataSourceKeyHash(keyHashHex: final keyHashHex):
        validateHexString(keyHashHex, "keyHashHex");
        validateMaxStringLength(keyHashHex, "keyHashHex", stringLength64Bytes);
    }
  }
  factory StakingDataSourceKeyData.path({
    required LedgerSigningPath path,
  }) = StakingDataSourceKeyPath;
  factory StakingDataSourceKeyData.hash({
    required String keyHashHex,
  }) = StakingDataSourceKeyHash;

  @override
  late final int stakingDataSourceValue = switch (this) {
    StakingDataSourceKeyPath() => 0x22,
    StakingDataSourceKeyHash() => 0x33,
  };
}
