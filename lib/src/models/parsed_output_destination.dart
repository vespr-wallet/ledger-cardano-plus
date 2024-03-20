import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_address_params.dart';

part 'parsed_output_destination.freezed.dart';

@freezed
sealed class ParsedOutputDestination with _$ParsedOutputDestination {
  const ParsedOutputDestination._();

  const factory ParsedOutputDestination.thirdParty({
    required TxOutputDestinationType type,
    required String addressHex,
  }) = ThirdParty;

  const factory ParsedOutputDestination.deviceOwned({
    required TxOutputDestinationType type,
    required ParsedAddressParams addressParams,
  }) = DeviceOwned;
}
