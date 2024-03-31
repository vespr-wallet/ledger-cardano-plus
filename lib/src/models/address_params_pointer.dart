import 'package:freezed_annotation/freezed_annotation.dart';
import 'blockchain_pointer.dart';
import 'spending_params.dart';

part 'address_params_pointer.freezed.dart';

@freezed
sealed class AddressParamsPointer with _$AddressParamsPointer {
  const AddressParamsPointer._();

  const factory AddressParamsPointer({
    required SpendingParams spendingParams,
    required BlockchainPointer stakingBlockchainPointer,
  }) = _AddressParamsPointer;
}
