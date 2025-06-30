import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'third_party_address_params.freezed.dart';

@freezed
sealed class ThirdPartyAddressParams with _$ThirdPartyAddressParams {
  ThirdPartyAddressParams._() {
    validateHexString(addressHex, 'addressHex');
  }

  factory ThirdPartyAddressParams({
    required String addressHex,
  }) = _ThirdPartyAddressParams;
}
