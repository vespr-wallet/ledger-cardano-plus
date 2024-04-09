import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'parsed_pool_reward_account.freezed.dart';

@freezed
sealed class ParsedPoolRewardAccount with _$ParsedPoolRewardAccount {
  ParsedPoolRewardAccount._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      DeviceOwnedPoolRewardAccount() => () => validateBIP32Path(thisClass.path, 'path'),
      ThirdPartyPoolRewardAccount() => () => validateHexString(thisClass.rewardAccountHex, 'rewardAccountHex'),
    };
    assertInvoker();
  }

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
