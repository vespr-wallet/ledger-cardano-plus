import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'parsed_pool_owner.freezed.dart';

@freezed
sealed class ParsedPoolOwner with _$ParsedPoolOwner {
  ParsedPoolOwner._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      DeviceOwnedPoolOwner() => () => validateBIP32Path(thisClass.path, 'path'),
      ThirdPartyPoolOwner() => () => validateHexString(thisClass.hashHex, 'hashHex'),
    };
    assertInvoker();
  }

  factory ParsedPoolOwner.deviceOwned({
    required List<int> path,
  }) = DeviceOwnedPoolOwner;

  factory ParsedPoolOwner.thirdParty({
    required String hashHex,
  }) = ThirdPartyPoolOwner;

  late final int poolOwnerValue = switch (this) {
    DeviceOwnedPoolOwner() => 1,
    ThirdPartyPoolOwner() => 2,
  };
}
