import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "address_params_reward.freezed.dart";

@freezed
sealed class AddressParamsReward with _$AddressParamsReward {
  AddressParamsReward._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      AddressParamsRewardStakingPath() => () {
        validateBIP32Path(thisClass.stakingPath, "stakingPath");
      },
      AddressParamsRewardStakingScriptHashHex() => () {
        validateHexString(thisClass.stakingScriptHashHex, "stakingScriptHashHex");
      },
    };
    assertInvoker();
  }

  factory AddressParamsReward.stakingPath({
    required LedgerSigningPath stakingPath,
  }) = AddressParamsRewardStakingPath;

  factory AddressParamsReward.stakingScriptHashHex({
    required String stakingScriptHashHex,
  }) = AddressParamsRewardStakingScriptHashHex;
}
