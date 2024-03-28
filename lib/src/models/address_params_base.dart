import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/spending_params.dart';

part 'address_params_base.freezed.dart';

@freezed
class AddressParamsBase with _$AddressParamsBase {
  AddressParamsBase._();

  factory AddressParamsBase.stakingPath({
    required SpendingParams spendingParams,
    required List<int> stakingPath,
  }) = AddressParamsBaseStakingPath;

  factory AddressParamsBase.stakingKeyHash({
    required SpendingParams spendingParams,
    required String stakingKeyHashHex,
  }) = AddressParamsBaseStakingKeyHash;

  factory AddressParamsBase.stakingScriptHash({
    required SpendingParams spendingParams,
    required String stakingScriptHashHex,
  }) = AddressParamsBaseStakingScriptHash;
}