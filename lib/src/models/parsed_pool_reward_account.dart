import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_pool_reward_account.freezed.dart';

@freezed
sealed class ParsedPoolRewardAccount with _$ParsedPoolRewardAccount {
  const ParsedPoolRewardAccount._();

  const factory ParsedPoolRewardAccount.deviceOwned({
    required PoolRewardAccountType type,
    required List<int> path,
  }) = DeviceOwnedPoolRewardAccount;

  const factory ParsedPoolRewardAccount.thirdParty({
    required PoolRewardAccountType type,
    required String rewardAccountHex,
  }) = ThirdPartyPoolRewardAccount;

}