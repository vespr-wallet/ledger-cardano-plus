import "package:freezed_annotation/freezed_annotation.dart";
import "spending_params.dart";

part "address_params_enterprise.freezed.dart";

@freezed
sealed class AddressParamsEnterprise with _$AddressParamsEnterprise {

  factory AddressParamsEnterprise({
    required SpendingParams spendingPath,
  }) = _AddressParamsEnterprise;
  AddressParamsEnterprise._();
}
