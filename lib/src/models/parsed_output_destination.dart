import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'parsed_address_params.dart';

part 'parsed_output_destination.freezed.dart';

@freezed
sealed class ParsedOutputDestination with _$ParsedOutputDestination {
  ParsedOutputDestination._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      ThirdParty() => () => {
            validateHexString(thisClass.addressHex, 'addressHex'),
            validateMaxStringLength(thisClass.addressHex, 'addressHex', addressHexLength)
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

  late final TxOutputDestinationType outputDestinationType = switch (this) {
    ThirdParty() => TxOutputDestinationType.thirdParty,
    DeviceOwned() => TxOutputDestinationType.deviceOwned,
  };
}
