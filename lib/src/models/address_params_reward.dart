import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';

part 'address_params_reward.freezed.dart';

@freezed
sealed class AddressParamsReward with _$AddressParamsReward implements AddressParams {
  AddressParamsReward._();

  factory AddressParamsReward.stakingPath({
    required List<int> stakingPath,
  }) = AddressParamsRewardStakingPath;

  factory AddressParamsReward.stakingScriptHashHex({
    required String stakingScriptHashHex,
  }) = AddressParamsRewardStakingScriptHashHex;

  @override // TODO
  late final StakingDataSource? stakingDataSource = null;

  @override // TODO
  late final SpendingDataSource? spendingDataSource = null;
}
