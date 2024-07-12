import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';
import 'parsed_address_params.dart';

part 'parsed_output_destination.freezed.dart';

@freezed
sealed class ParsedOutputDestination with _$ParsedOutputDestination {
  ParsedOutputDestination._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      ThirdParty() => () {
          validateHexString(thisClass.addressHex, 'addressHex');
          validateMaxStringLength(thisClass.addressHex, 'addressHex', addressHexLength);
        },
      DeviceOwned() => () => (),
    };
    assertinvoker();
  }

  factory ParsedOutputDestination.thirdParty({
    required String addressHex,
  }) = ThirdParty;

  factory ParsedOutputDestination.deviceOwned({
    required ParsedAddressParams addressParams,
  }) = DeviceOwned;

  // uint8
  late final int typeEncoding = switch (this) {
    ThirdParty() => 1,
    DeviceOwned() => 2,
  };
}
