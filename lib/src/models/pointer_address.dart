import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'pointer_address.freezed.dart';

@freezed
sealed class PointerAddress with _$PointerAddress {
  PointerAddress._();

  factory PointerAddress.pointerKey() = PointerKey;

  factory PointerAddress.pointerScript() = PointerScript;

  late final AddressType pointerAddressType = switch (this) {
    PointerKey() => AddressType.pointerKey,
    PointerScript() => AddressType.pointerScript,
  };
}
