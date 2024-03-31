import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/margin.dart';
import 'package:ledger_cardano/src/models/pool_key.dart';
import 'package:ledger_cardano/src/models/pool_metadata_params.dart';
import 'package:ledger_cardano/src/models/pool_owner.dart';
import 'package:ledger_cardano/src/models/pool_reward_account.dart';
import 'package:ledger_cardano/src/models/relay.dart';

part 'pool_registration_params.freezed.dart';

@freezed
sealed class PoolRegistrationParams with _$PoolRegistrationParams {
  const PoolRegistrationParams._();

  const factory PoolRegistrationParams({
    required PoolKey poolKey,
    required String vrfKeyHashHex,
    required BigInt pledge,
    required BigInt cost,
    required Margin margin,
    required PoolRewardAccount rewardAccount,
    required List<PoolOwner> poolOwners,
    required List<Relay> relays,
    PoolMetadataParams? metadata,
  }) = _PoolRegistrationParams;
}