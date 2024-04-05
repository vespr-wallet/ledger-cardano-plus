import 'package:freezed_annotation/freezed_annotation.dart';

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

  late final int poolKeyValue = switch (this) {
    DeviceOwnedPoolKey() => 1,
    ThirdPartyPoolKey() => 2,
  };
}
