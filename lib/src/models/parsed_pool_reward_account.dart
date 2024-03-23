import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

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

  late final PoolRewardAccountType poolRewardAccountType = switch (this) {
    DeviceOwnedPoolRewardAccount() => PoolRewardAccountType.deviceOwned,
    ThirdPartyPoolRewardAccount() => PoolRewardAccountType.thirdParty,
  };
}
