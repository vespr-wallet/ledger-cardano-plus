import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/utilities.dart";
import "parsed_margin.dart";
import "parsed_pool_key.dart";
import "parsed_pool_metadata.dart";
import "parsed_pool_owner.dart";
import "parsed_pool_relay.dart";
import "parsed_pool_reward_account.dart";

part "parsed_pool_params.freezed.dart";

@freezed
sealed class ParsedPoolParams with _$ParsedPoolParams {
  factory ParsedPoolParams({
    required ParsedPoolKey poolKey,
    required String vrfHashHex,
    required BigInt pledge,
    required BigInt cost,
    required ParsedMargin margin,
    required ParsedPoolRewardAccount rewardAccount,
    required List<ParsedPoolOwner> owners,
    required List<ParsedPoolRelay> relays,
    required ParsedPoolMetadata? metadata,
  }) = _ParsedPoolParams;
  ParsedPoolParams._() {
    validateHexString(vrfHashHex, "vrfHashHex");
  }
}
