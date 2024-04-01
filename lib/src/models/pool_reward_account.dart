import 'package:freezed_annotation/freezed_annotation.dart';

part 'pool_reward_account.freezed.dart';

@freezed
sealed class PoolRewardAccount with _$PoolRewardAccount {
  PoolRewardAccount._();

  factory PoolRewardAccount.thirdParty({
    required String rewardAccountHex,
  }) = PoolRewardAccountThirdParty;

  factory PoolRewardAccount.deviceOwned({
    required List<int> path,
  }) = PoolRewardAccountDeviceOwned;
}

