import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_margin.dart';
import 'parsed_pool_key.dart';
import 'parsed_pool_owner.dart';
import 'parsed_pool_reward_account.dart';
import 'parsed_pool_relay.dart';
import 'parsed_pool_metadata.dart';

part 'parsed_pool_params.freezed.dart';

@freezed
sealed class ParsedPoolParams with _$ParsedPoolParams {
  ParsedPoolParams._();

  factory ParsedPoolParams({
    required ParsedPoolKey poolKey,
    required String vrfHashHex,
    required String pledge,
    required String cost,
    required ParsedMargin margin,
    required ParsedPoolRewardAccount rewardAccount,
    required List<ParsedPoolOwner> owners,
    required List<ParsedPoolRelay> relays,
    required ParsedPoolMetadata? metadata,
  }) = _ParsedPoolParams;
}
