import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/spending_params.dart';

part 'address_params_enterprise.freezed.dart';

@freezed
sealed class AddressParamsEnterprise with _$AddressParamsEnterprise {
   AddressParamsEnterprise._();
  

  factory AddressParamsEnterprise({
    required SpendingParams spendingPath,
  }) = _AddressParamsEnterprise;
}

