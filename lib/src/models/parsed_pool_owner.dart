import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_pool_owner.freezed.dart';

@freezed
class ParsedPoolOwner with _$ParsedPoolOwner {
  const ParsedPoolOwner._();

  const factory ParsedPoolOwner.deviceOwned({
    required List<int> path,
  }) = DeviceOwnedPoolOwner;

  const factory ParsedPoolOwner.thirdParty({
    required String hashHex,
  }) = ThirdPartyPoolOwner;

}