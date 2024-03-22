import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_pool_owner.freezed.dart';

@freezed
sealed class ParsedPoolOwner with _$ParsedPoolOwner {
  const ParsedPoolOwner._();

  const factory ParsedPoolOwner.deviceOwned({
    required PoolOwnerType type,
    required List<int> path,
  }) = DeviceOwnedPoolOwner;

  const factory ParsedPoolOwner.thirdParty({
    required PoolOwnerType type,
    required String hashHex,
  }) = ThirdPartyPoolOwner;

}