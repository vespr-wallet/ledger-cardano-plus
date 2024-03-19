import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_pool_key.freezed.dart';

@freezed
class ParsedPoolKey with _$ParsedPoolKey {
  const ParsedPoolKey._();

  const factory ParsedPoolKey.deviceOwned({
    required List<int> path,
  }) = DeviceOwnedPoolKey;

  const factory ParsedPoolKey.thirdParty({
    required String hashHex,
  }) = ThirdPartyPoolKey;

}