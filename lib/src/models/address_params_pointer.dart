import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'blockchain_pointer.dart';
import 'spending_params.dart';

part 'address_params_pointer.freezed.dart';

@freezed
sealed class AddressParamsPointer with _$AddressParamsPointer implements AddressParams {
  AddressParamsPointer._();

  factory AddressParamsPointer({
    required SpendingParams spendingParams,
    required BlockchainPointer stakingBlockchainPointer,
  }) = _AddressParamsPointer;

  @override // TODO
  late final StakingDataSource? stakingDataSource = null;

  @override // TODO
  late final SpendingDataSource? spendingDataSource = null;
}
