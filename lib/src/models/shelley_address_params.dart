import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/spending_data_source.dart';
import 'package:ledger_cardano_plus/src/models/staking_data_source.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'shelley_address_params.freezed.dart';

@freezed
sealed class ShelleyAddressParamsData with _$ShelleyAddressParamsData {
  ShelleyAddressParamsData._() {
    final thisObj = this;
    switch (thisObj) {
      case RewardScript():
        validateHexString(thisObj.stakingScriptHashHex, 'stakingScriptHashHex');
        break;
      default:
        break;
    }
  }

  factory ShelleyAddressParamsData.basePaymentKeyStakeKey({
    required SpendingDataSourcePath spendingDataSource,
    required StakingDataSourceKey stakingDataSource,
  }) = BasePaymentKeyStakeKey;

  factory ShelleyAddressParamsData.basePaymentScriptStakeKey({
    required SpendingDataSourceScriptHash spendingDataSource,
    required StakingDataSourceKey stakingDataSource,
  }) = BasePaymentScriptStakeKey;

  factory ShelleyAddressParamsData.basePaymentKeyStakeScript({
    required SpendingDataSourcePath spendingDataSource,
    required StakingDataSourceScriptHash stakingDataSource,
  }) = BasePaymentKeyStakeScript;

  factory ShelleyAddressParamsData.basePaymentScriptStakeScript({
    required SpendingDataSourceScriptHash spendingDataSource,
    required StakingDataSourceScriptHash stakingDataSource,
  }) = BasePaymentScriptStakeScript;

  factory ShelleyAddressParamsData.enterpriseKey({
    required SpendingDataSourcePath spendingDataSource,
  }) = EnterpriseKey;

  factory ShelleyAddressParamsData.enterpriseScript({
    required SpendingDataSourceScriptHash spendingDataSource,
  }) = EnterpriseScript;

  factory ShelleyAddressParamsData.pointerKey({
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = PointerKey;

  factory ShelleyAddressParamsData.pointerScript({
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = PointerScript;

  factory ShelleyAddressParamsData.rewardKey({
    required StakingDataSourceKey stakingDataSource,
  }) = RewardKey;

  factory ShelleyAddressParamsData.rewardScript({
    required String stakingScriptHashHex,
  }) = RewardScript;

  @override
  late final AddressType addressType = switch (this) {
    BasePaymentKeyStakeKey() => AddressType.basePaymentKeyStakeKey,
    BasePaymentScriptStakeKey() => AddressType.basePaymentScriptStakeKey,
    BasePaymentKeyStakeScript() => AddressType.basePaymentKeyStakeScript,
    BasePaymentScriptStakeScript() => AddressType.basePaymentScriptStakeScript,
    EnterpriseKey() => AddressType.enterpriseKey,
    EnterpriseScript() => AddressType.enterpriseScript,
    PointerKey() => AddressType.pointerKey,
    PointerScript() => AddressType.pointerScript,
    RewardKey() => AddressType.rewardKey,
    RewardScript() => AddressType.rewardScript,
  };
}
