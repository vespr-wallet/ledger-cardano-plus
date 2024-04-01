import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';

part 'address_params_byron.freezed.dart';

@freezed
sealed class AddressParamsByron with _$AddressParamsByron implements AddressParams {
  AddressParamsByron._();

  factory AddressParamsByron({
    required List<int> spendingPath,
  }) = _AddressParamsByron;

  @override // TODO
  late final StakingDataSource stakingDataSource = null;

  @override // TODO
  late final SpendingDataSource spendingDataSource = null;
}
