
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/shelley_address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_address_params.freezed.dart';

@freezed
sealed class ParsedAddressParams with _$ParsedAddressParams {
  ParsedAddressParams._();
  factory ParsedAddressParams.byron({
    required int protocolMagic,
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = ByronAddressParams;

  factory ParsedAddressParams.shelley({
    required ShelleyAddressParamsData shelleyAddressParams,
  }) = ShelleyAddressParams;

  AddressType get addressType => switch (this) {
    ByronAddressParams() => AddressType.byron,
    ShelleyAddressParams(shelleyAddressParams: final shelleyparams) => shelleyparams.addressType,
  };
}
