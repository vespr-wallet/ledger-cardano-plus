import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_pool_reward_account.freezed.dart';

@freezed
class ParsedPoolRewardAccount with _$ParsedPoolRewardAccount {
  const ParsedPoolRewardAccount._();

  const factory ParsedPoolRewardAccount.deviceOwned({
    required List<int> path,
  }) = DeviceOwnedPoolRewardAccount;

  const factory ParsedPoolRewardAccount.thirdParty({
    required String rewardAccountHex,
  }) = ThirdPartyPoolRewardAccount;

}