import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/constants.dart";
import "shelley_address_params.dart";
import "spending_data_source.dart";

part "parsed_address_params.freezed.dart";

@freezed
sealed class ParsedAddressParams with _$ParsedAddressParams {
  ParsedAddressParams._();
  factory ParsedAddressParams.byron({
    required SpendingDataSource spendingDataSource,
  }) = ByronAddressParams;

  factory ParsedAddressParams.shelley({
    required ShelleyAddressParamsData shelleyAddressParams,
  }) = ShelleyAddressParams;

  AddressType get addressType => switch (this) {
        ByronAddressParams() => AddressType.byron,
        ShelleyAddressParams(shelleyAddressParams: final shelleyparams) => shelleyparams.addressType,
      };
}
