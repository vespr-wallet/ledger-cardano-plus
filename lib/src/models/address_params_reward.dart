import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_params_reward.freezed.dart';

@freezed
sealed class AddressParamsReward with _$AddressParamsReward {
  AddressParamsReward._();

  factory AddressParamsReward.stakingPath({
    required List<int> stakingPath,
  }) = AddressParamsRewardStakingPath;

  factory AddressParamsReward.stakingScriptHashHex({
    required String stakingScriptHashHex,
  }) = AddressParamsRewardStakingScriptHashHex;

}
