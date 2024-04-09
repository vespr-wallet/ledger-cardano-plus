import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/address_params_base.dart';
import 'package:ledger_cardano/src/models/address_params_byron.dart';
import 'package:ledger_cardano/src/models/address_params_enterprise.dart';
import 'package:ledger_cardano/src/models/address_params_pointer.dart';
import 'package:ledger_cardano/src/models/address_params_reward.dart';
import 'package:ledger_cardano/src/models/address.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'device_owned_address.freezed.dart';

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

  late final AddressType addressType = switch (this) {
    DeviceOwnedAddressByron(type: AddressByron type) => type.type,
    DeviceOwnedAddressBase(type: AddressBase type) => type.type,
    DeviceOwnedAddressEnterprise(type: AddressEnterprise type) => type.type,
    DeviceOwnedAddressPointer(type: AddressPointer type) => type.type,
    DeviceOwnedAddressReward(type: AddressReward type) => type.type
  };
}
