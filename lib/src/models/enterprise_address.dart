import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'enterprise_address.freezed.dart';

@freezed
sealed class EnterpriseAddress with _$EnterpriseAddress {
  EnterpriseAddress._();

  factory EnterpriseAddress.enterpriseKey() = EnterpriseKey;

  factory EnterpriseAddress.enterpriseScript() = EnterpriseScript;

  late final AddressType enterpriseAddressType = switch (this) {
    EnterpriseKey() => AddressType.enterpriseKey,
    EnterpriseScript() => AddressType.enterpriseScript,
  };
} 