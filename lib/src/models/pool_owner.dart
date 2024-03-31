import 'package:freezed_annotation/freezed_annotation.dart';

part 'pool_owner.freezed.dart';

@freezed
sealed class PoolOwner with _$PoolOwner {
  PoolOwner._();

  factory PoolOwner.thirdParty({
    required String stakingKeyHashHex,
  }) = PoolOwnerThirdParty;

  factory PoolOwner.deviceOwned({
    required List<int> stakingPath,
  }) = PoolOwnerDeviceOwned;
}

