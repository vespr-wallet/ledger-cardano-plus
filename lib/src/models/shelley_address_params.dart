import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/spending_data_source.dart';
import 'package:ledger_cardano_plus/src/models/staking_data_source.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'shelley_address_params.freezed.dart';

@freezed
sealed class ShelleyAddressParamsData with _$ShelleyAddressParamsData {
  ShelleyAddressParamsData._() {
    final thisclass = this;
    final void Function() invoker = switch (thisclass) {
      RewardScript() => () => validateHexString(thisclass.stakingScriptHashHex, 'stakingScriptHashHex'),
      _ => () => {}
    };
    invoker();
  }

  factory ShelleyAddressParamsData.basePaymentKeyStakeKey({
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = BasePaymentKeyStakeKey;

  factory ShelleyAddressParamsData.basePaymentScriptStakeKey({
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = BasePaymentScriptStakeKey;

  factory ShelleyAddressParamsData.basePaymentKeyStakeScript({
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = BasePaymentKeyStakeScript;

  factory ShelleyAddressParamsData.basePaymentScriptStakeScript({
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = BasePaymentScriptStakeScript;

  factory ShelleyAddressParamsData.enterpriseKey({
    required SpendingDataSource spendingDataSource,
  }) = EnterpriseKey;

  factory ShelleyAddressParamsData.enterpriseScript({
    required SpendingDataSource spendingDataSource,
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
    required StakingDataSource stakingDataSource,
  }) = RewardKey;

  factory ShelleyAddressParamsData.rewardScript({
    required String stakingScriptHashHex,
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
