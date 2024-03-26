import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_pool_key.freezed.dart';

@freezed
sealed class ParsedPoolKey with _$ParsedPoolKey {
  ParsedPoolKey._();

  factory ParsedPoolKey.deviceOwned({
    required List<int> path,
  }) = DeviceOwnedPoolKey;

  factory ParsedPoolKey.thirdParty({
    required String hashHex,
  }) = ThirdPartyPoolKey;

  late final PoolKeyType poolKeyType = switch (this) {
    DeviceOwnedPoolKey() => PoolKeyType.deviceOwned,
    ThirdPartyPoolKey() => PoolKeyType.thirdParty,
  };
}
