import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'transaction_signing_mode.freezed.dart';

@freezed
sealed class TransactionSigningModes with _$TransactionSigningModes {
   TransactionSigningModes._();

   factory TransactionSigningModes.ordinaryTransaction() = OrdinaryTransaction;
  factory TransactionSigningModes.multisigTransaction() = MultisigTransaction;
  factory TransactionSigningModes.poolRegistrationAsOwner() = PoolRegistrationAsOwner;
  factory TransactionSigningModes.poolRegistrationAsOperator() = PoolRegistrationAsOperator;
  factory TransactionSigningModes.plutusTransaction() = PlutusTransaction;
  
  late final int value = switch (this) {
    OrdinaryTransaction() => TransactionSigningMode.ordinaryTransaction.value,
    MultisigTransaction() => TransactionSigningMode.multisigTransaction.value,
    PoolRegistrationAsOwner() => TransactionSigningMode.poolRegistrationAsOwner.value,
    PoolRegistrationAsOperator() => TransactionSigningMode.poolRegistrationAsOperator.value,
    PlutusTransaction() => TransactionSigningMode.plutusTransaction.value,
  };
}

