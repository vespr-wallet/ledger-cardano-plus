import 'package:freezed_annotation/freezed_annotation.dart';

part 'pool_key.freezed.dart';

@freezed
sealed class PoolKey with _$PoolKey {
  PoolKey._();

  factory PoolKey.thirdParty({
    required String keyHashHex,
  }) = PoolKeyThirdParty;

  factory PoolKey.deviceOwned({
    required List<int> path,
  }) = PoolKeyDeviceOwned;
}

