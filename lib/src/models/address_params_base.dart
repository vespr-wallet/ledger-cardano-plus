import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/address_params.dart';
import 'package:ledger_cardano/src/models/shelley_address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/spending_params.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';

part 'address_params_base.freezed.dart';

@freezed
sealed class AddressParamsBase with _$AddressParamsBase implements AddressParams {
  AddressParamsBase._();

  factory AddressParamsBase.stakingPath({
    required SpendingParams spendingParams,
    required List<int> stakingPath,
  }) = AddressParamsBaseStakingPath;

  factory AddressParamsBase.stakingKeyHash({
    required SpendingParams spendingParams,
    required String stakingKeyHashHex,
  }) = AddressParamsBaseStakingKeyHash;

  factory AddressParamsBase.stakingScriptHash({
    required SpendingParams spendingParams,
    required String stakingScriptHashHex,
  }) = AddressParamsBaseStakingScriptHash;

  @override
  late final StakingDataSource stakingDataSource = () {
    final thisObj = this;
    return switch (thisObj) {
      AddressParamsBaseStakingPath() => StakingDataSource.keyPath(path: thisObj.stakingPath),
      AddressParamsBaseStakingKeyHash() => StakingDataSource.keyHash(keyHashHex: thisObj.stakingKeyHashHex),
      AddressParamsBaseStakingScriptHash() => StakingDataSource.scriptHash(scriptHashHex: thisObj.stakingScriptHashHex),
    };
  }();

  @override
  late final SpendingDataSource spendingDataSource = spendingParams.spendingDataSource;

  ShelleyAddressParamsData shelleyAddressParamsData({required int networkId}) {
    final thisObj = this;
    final spendingParams = this.spendingParams;
    return switch (spendingParams) {
      SpendingParamsPath() => switch (thisObj) {
          AddressParamsBaseStakingPath() => ShelleyAddressParamsData.basePaymentKeyStakeKey(
              networkId: networkId,
              spendingDataSource: spendingDataSource,
              stakingDataSource: stakingDataSource,
            ),
          AddressParamsBaseStakingKeyHash() => ShelleyAddressParamsData.basePaymentKeyStakeKey(
              networkId: networkId,
              spendingDataSource: spendingDataSource,
              stakingDataSource: stakingDataSource,
            ),
          AddressParamsBaseStakingScriptHash() => ShelleyAddressParamsData.basePaymentKeyStakeScript(
              networkId: networkId,
              spendingDataSource: spendingDataSource,
              stakingDataSource: stakingDataSource,
            ),
        },
      SpendingParamsScriptHash() => switch (thisObj) {
          AddressParamsBaseStakingPath() => ShelleyAddressParamsData.basePaymentScriptStakeKey(
              networkId: networkId,
              spendingDataSource: spendingDataSource,
              stakingDataSource: stakingDataSource,
            ),
          AddressParamsBaseStakingKeyHash() => ShelleyAddressParamsData.basePaymentScriptStakeKey(
              networkId: networkId,
              spendingDataSource: spendingDataSource,
              stakingDataSource: stakingDataSource,
            ),
          AddressParamsBaseStakingScriptHash() => ShelleyAddressParamsData.basePaymentScriptStakeScript(
              networkId: networkId,
              spendingDataSource: spendingDataSource,
              stakingDataSource: stakingDataSource,
            ),
        },
    };
  }
}
