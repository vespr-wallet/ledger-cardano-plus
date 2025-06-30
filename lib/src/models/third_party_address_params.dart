import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/utilities.dart";

part "third_party_address_params.freezed.dart";

@freezed
sealed class ThirdPartyAddressParams with _$ThirdPartyAddressParams {

  factory ThirdPartyAddressParams({
    required String addressHex,
  }) = _ThirdPartyAddressParams;
  ThirdPartyAddressParams._() {
    validateHexString(addressHex, "addressHex");
  }
}
