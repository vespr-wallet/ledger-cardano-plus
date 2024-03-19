import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_address_params.dart';

part 'parsed_output_destination.freezed.dart';

@freezed
class ParsedOutputDestination with _$ParsedOutputDestination {
  const ParsedOutputDestination._();

  const factory ParsedOutputDestination.thirdParty({
    required String addressHex,
  }) = ThirdParty;

  const factory ParsedOutputDestination.deviceOwned({
    required ParsedAddressParams addressParams,
  }) = DeviceOwned;

}