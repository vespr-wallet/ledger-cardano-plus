import "package:freezed_annotation/freezed_annotation.dart";

part "address_params_byron.freezed.dart";

@freezed
sealed class AddressParamsByron with _$AddressParamsByron {

  factory AddressParamsByron({
    required List<int> spendingPath,
  }) = _AddressParamsByron;
  AddressParamsByron._();
}
