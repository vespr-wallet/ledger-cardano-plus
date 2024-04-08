import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'shelley_address_params.freezed.dart';

@freezed
sealed class ShelleyAddressParamsData with _$ShelleyAddressParamsData {
  ShelleyAddressParamsData._();

  factory ShelleyAddressParamsData.basePaymentKeyStakeKey({
    required int networkId,
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = BasePaymentKeyStakeKey;

  factory ShelleyAddressParamsData.basePaymentScriptStakeKey({
    required int networkId,
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = BasePaymentScriptStakeKey;

  factory ShelleyAddressParamsData.basePaymentKeyStakeScript({
    required int networkId,
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = BasePaymentKeyStakeScript;

  factory ShelleyAddressParamsData.basePaymentScriptStakeScript({
    required int networkId,
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = BasePaymentScriptStakeScript;

  factory ShelleyAddressParamsData.enterpriseKey({
    required int networkId,
    required SpendingDataSource spendingDataSource,
  }) = EnterpriseKey;

  factory ShelleyAddressParamsData.enterpriseScript({
    required int networkId,
    required SpendingDataSource spendingDataSource,
  }) = EnterpriseScript;

  factory ShelleyAddressParamsData.pointerKey({
    required int networkId,
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = PointerKey;

  factory ShelleyAddressParamsData.pointerScript({
    required int networkId,
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = PointerScript;

  factory ShelleyAddressParamsData.rewardKey({
    required int networkId,
    required StakingDataSource stakingDataSource,
  }) = RewardKey;

  factory ShelleyAddressParamsData.rewardScript({
    required int networkId,
  }) = RewardScript;

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
