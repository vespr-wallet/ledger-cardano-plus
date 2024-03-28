import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/device_owned_address.dart';
import 'package:ledger_cardano/src/models/third_party_address_params.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'tx_output_destination.freezed.dart';


@freezed
sealed class TxOutputDestination with _$TxOutputDestination {
  TxOutputDestination._();
  
  factory TxOutputDestination.thirdParty({
    required ThirdPartyAddressParams params,
  }) = TxOutputDestinationThirdParty;

  factory TxOutputDestination.deviceOwned({
    required DeviceOwnedAddress params,
  }) = TxOutputDestinationDeviceOwned;
  
  late final TxOutputDestinationType type = switch(this) {
     TxOutputDestinationThirdParty() => TxOutputDestinationType.thirdParty,
     TxOutputDestinationDeviceOwned() => TxOutputDestinationType.deviceOwned,
  };
}

