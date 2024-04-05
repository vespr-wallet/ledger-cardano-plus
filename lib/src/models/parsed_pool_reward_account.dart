import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_pool_reward_account.freezed.dart';

@freezed
sealed class ParsedPoolRewardAccount with _$ParsedPoolRewardAccount {
  ParsedPoolRewardAccount._();

  factory ParsedPoolRewardAccount.deviceOwned({
    required List<int> path,
  }) = DeviceOwnedPoolRewardAccount;

  factory ParsedPoolRewardAccount.thirdParty({
    required String rewardAccountHex,
  }) = ThirdPartyPoolRewardAccount;

  late final int poolRewardAccountValue = switch (this) {
    DeviceOwnedPoolRewardAccount() => 1,
    ThirdPartyPoolRewardAccount() => 2,
  };
}
