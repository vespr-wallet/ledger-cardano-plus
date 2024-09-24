import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano_plus/src/models/spending_params.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'address_params_base.freezed.dart';

@freezed
sealed class AddressParamsBase with _$AddressParamsBase {
  AddressParamsBase._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      AddressParamsBaseStakingPath() => () {
          validateBIP32Path(thisClass.stakingPath, 'stakingPath');
        },
      AddressParamsBaseStakingKeyHash() => () {
          validateHexString(thisClass.stakingKeyHashHex, 'stakingKeyHashHex');
        },
      AddressParamsBaseStakingScriptHash() => () {
          validateHexString(
              thisClass.stakingScriptHashHex, 'stakingScriptHashHex');
        },
    };
    assertinvoker();
  }

  factory AddressParamsBase.stakingPath({
    required SpendingParams spendingParams,
    required LedgerSigningPath stakingPath,
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
