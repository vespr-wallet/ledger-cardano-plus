import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'staking_data_source.freezed.dart';

@freezed
sealed class StakingDataSource with _$StakingDataSource {
  StakingDataSource._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      StakingDataSourceNone() => () {},
      StakingDataSourceKeyPath() => () {
          validateBIP32Path(thisClass.path, 'path');
        },
      StakingDataSourceKeyHash() => () {
          validateHexString(thisClass.keyHashHex, 'keyHashHex');
          validateMaxStringLength(thisClass.keyHashHex, 'keyHashHex', stringLength64Bytes);
        },
      StakingDataSourceBlockchainPointer() => () {
          validate32bitUnsignedInteger(thisClass.blockIndex, 'blockIndex');
          validate32bitUnsignedInteger(thisClass.txIndex, 'txIndex');
          validate32bitUnsignedInteger(thisClass.certificateIndex, 'certificateIndex');
        },
      StakingDataSourceScriptHash() => () {
          validateHexString(thisClass.scriptHashHex, 'scriptHashHex');
          validateMaxStringLength(thisClass.scriptHashHex, 'scriptHashHex', stringLength64Bytes);
        },
    };
    assertinvoker();
  }

  factory StakingDataSource.none() = StakingDataSourceNone;

  factory StakingDataSource.path({
    required LedgerSigningPath path,
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

  late final int stakingDataSourceValue = switch (this) {
    StakingDataSourceNone() => 0x11,
    StakingDataSourceKeyPath() => 0x22,
    StakingDataSourceKeyHash() => 0x33,
    StakingDataSourceBlockchainPointer() => 0x44,
    StakingDataSourceScriptHash() => 0x55,
  };
}
