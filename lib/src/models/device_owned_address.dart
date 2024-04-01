import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/address_params.dart';
import 'package:ledger_cardano/src/models/address_params_base.dart';
import 'package:ledger_cardano/src/models/address_params_byron.dart';
import 'package:ledger_cardano/src/models/address_params_enterprise.dart';
import 'package:ledger_cardano/src/models/address_params_pointer.dart';
import 'package:ledger_cardano/src/models/address_params_reward.dart';
import 'package:ledger_cardano/src/models/base_address.dart';
import 'package:ledger_cardano/src/models/enterprise_address.dart';
import 'package:ledger_cardano/src/models/network.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/models/pointer_address.dart';
import 'package:ledger_cardano/src/models/reward_address.dart';
import 'package:ledger_cardano/src/models/shelley_address_params.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'device_owned_address.freezed.dart';

@freezed
sealed class DeviceOwnedAddress with _$DeviceOwnedAddress {
  DeviceOwnedAddress._();

  factory DeviceOwnedAddress.byron({
    required AddressParamsByron params,
  }) = DeviceOwnedAddressByron;

  factory DeviceOwnedAddress.base({
    required BaseAddress type,
    required AddressParamsBase params,
  }) = DeviceOwnedAddressBase;

  factory DeviceOwnedAddress.enterprise({
    required EnterpriseAddress type,
    required AddressParamsEnterprise params,
  }) = DeviceOwnedAddressEnterprise;

  factory DeviceOwnedAddress.pointer({
    required PointerAddress type,
    required AddressParamsPointer params,
  }) = DeviceOwnedAddressPointer;

  factory DeviceOwnedAddress.reward({
    required RewardAddress type,
    required AddressParamsReward params,
  }) = DeviceOwnedAddressReward;

  ParsedAddressParams parsedAddressParams({required Network network}) {
    final address = this;
    
    return switch(address) {
      DeviceOwnedAddressByron() => ParsedAddressParams.byron(
        protocolMagic: network.parsedNetwork.protocolMagic,
        spendingDataSource: address.params.spendingDataSource,
        stakingDataSource: address.params.stakingDataSource,
      ),
      DeviceOwnedAddressBase() => ParsedAddressParams.shelley(
        shelleyAddressParams: address.params.shelleyAddressParamsData(networkId: network.networkId),
      ),
      DeviceOwnedAddressEnterprise() => ParsedAddressParams.shelley(
        // TODO implement shelleyAddressParamsData(networkId) for DeviceOwnedAddressEnterprise
        shelleyAddressParams: address.params.shelleyAddressParamsData(networkId: network.networkId),
      ),
      DeviceOwnedAddressPointer() => ParsedAddressParams.shelley(
        // TODO implement shelleyAddressParamsData(networkId) for DeviceOwnedAddressPointer
        shelleyAddressParams: address.params.shelleyAddressParamsData(networkId: network.networkId),
      ),
      DeviceOwnedAddressReward() => ParsedAddressParams.shelley(
        // TODO implement shelleyAddressParamsData(networkId) for DeviceOwnedAddressReward
        shelleyAddressParams: address.params.shelleyAddressParamsData(networkId: network.networkId),
      ),
    };
  };

  late final AddressType deviceOwnedAddressType = switch (this) {
    DeviceOwnedAddressByron() => AddressType.byron,
    DeviceOwnedAddressBase(type: BaseAddress type) => type.baseAddressType,
    DeviceOwnedAddressEnterprise(type: EnterpriseAddress type) => type.enterpriseAddressType,
    DeviceOwnedAddressPointer(type: PointerAddress type) => type.pointerAddressType,
    DeviceOwnedAddressReward(type: RewardAddress type) => type.rewardAddressType
  };
}
