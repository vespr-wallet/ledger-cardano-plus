import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_pool_key.freezed.dart';

@freezed
sealed class ParsedPoolKey with _$ParsedPoolKey {
  const ParsedPoolKey._();

  const factory ParsedPoolKey.deviceOwned({
    required PoolKeyType type,
    required List<int> path,
  }) = DeviceOwnedPoolKey;

  const factory ParsedPoolKey.thirdParty({
    required PoolKeyType type,
    required String hashHex,
  }) = ThirdPartyPoolKey;

}