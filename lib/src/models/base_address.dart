import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'base_address.freezed.dart';

@freezed
sealed class BaseAddress with _$BaseAddress {
  BaseAddress._();

  factory BaseAddress.basePaymentKeyStakeKey() = BasePaymentKeyStakeKey;

  factory BaseAddress.basePaymentScriptStakeKey() = BasePaymentScriptStakeKey;

  factory BaseAddress.basePaymentKeyStakeScript() = BasePaymentKeyStakeScript;

  factory BaseAddress.basePaymentScriptStakeScript() = BasePaymentScriptStakeScript;

  late final AddressType baseAddressType = switch (this) {
    BasePaymentKeyStakeKey() => AddressType.basePaymentKeyStakeKey,
    BasePaymentScriptStakeKey() => AddressType.basePaymentScriptStakeKey,
    BasePaymentKeyStakeScript() => AddressType.basePaymentKeyStakeScript,
    BasePaymentScriptStakeScript() => AddressType.basePaymentScriptStakeScript,
  };
}
