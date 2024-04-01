import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/spending_params.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';

part 'address_params_enterprise.freezed.dart';

@freezed
sealed class AddressParamsEnterprise with _$AddressParamsEnterprise implements AddressParams {
  AddressParamsEnterprise._();

  factory AddressParamsEnterprise({
    required SpendingParams spendingPath,
  }) = _AddressParamsEnterprise;

  @override // TODO
  late final StakingDataSource? stakingDataSource = null;

  @override // TODO
  late final SpendingDataSource? spendingDataSource = null;
}
