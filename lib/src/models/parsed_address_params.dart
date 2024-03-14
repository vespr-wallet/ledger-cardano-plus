import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_address_params.freezed.dart';

@freezed
sealed class ParsedAddressParams with _$ParsedAddressParams {
  const ParsedAddressParams._();
  const factory ParsedAddressParams.byron({
    required AddressType type,
    required int protocolMagic,
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = ByronAddressParams;

  const factory ParsedAddressParams.shelley({
    required AddressType type,
    required int networkId,
    required SpendingDataSource spendingDataSource,
    required StakingDataSource stakingDataSource,
  }) = ShelleyAddressParams;
}