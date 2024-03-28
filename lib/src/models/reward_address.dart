import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/address_params_reward.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'reward_address.freezed.dart';

@freezed
sealed class RewardAddress with _$RewardAddress {
  RewardAddress._();

  factory RewardAddress.rewardKey() = RewardKey;

  factory RewardAddress.rewardScript() = RewardScript;

  late final AddressType rewardAddressType = switch (this) {
    RewardKey() => AddressType.rewardKey,
    RewardScript() => AddressType.rewardScript,
  };
}