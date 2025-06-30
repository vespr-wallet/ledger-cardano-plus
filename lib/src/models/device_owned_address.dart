import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/constants.dart";
import "address.dart";
import "address_params_base.dart";
import "address_params_byron.dart";
import "address_params_enterprise.dart";
import "address_params_pointer.dart";
import "address_params_reward.dart";

part "device_owned_address.freezed.dart";

@freezed
sealed class DeviceOwnedAddress with _$DeviceOwnedAddress {
  DeviceOwnedAddress._();

  factory DeviceOwnedAddress.byron({
    required AddressByron type,
    required AddressParamsByron params,
  }) = DeviceOwnedAddressByron;

  factory DeviceOwnedAddress.base({
    required AddressBase type,
    required AddressParamsBase params,
  }) = DeviceOwnedAddressBase;

  factory DeviceOwnedAddress.enterprise({
    required AddressEnterprise type,
    required AddressParamsEnterprise params,
  }) = DeviceOwnedAddressEnterprise;

  factory DeviceOwnedAddress.pointer({
    required AddressPointer type,
    required AddressParamsPointer params,
  }) = DeviceOwnedAddressPointer;

  factory DeviceOwnedAddress.reward({
    required AddressReward type,
    required AddressParamsReward params,
  }) = DeviceOwnedAddressReward;

  @override
  late final AddressType addressType = switch (this) {
    DeviceOwnedAddressByron(type: AddressByron type) => type.type,
    DeviceOwnedAddressBase(type: AddressBase type) => type.type,
    DeviceOwnedAddressEnterprise(type: AddressEnterprise type) => type.type,
    DeviceOwnedAddressPointer(type: AddressPointer type) => type.type,
    DeviceOwnedAddressReward(type: AddressReward type) => type.type
  };
}
