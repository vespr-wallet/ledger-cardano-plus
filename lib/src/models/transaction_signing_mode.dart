import 'package:freezed_annotation/freezed_annotation.dart';

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
    OrdinaryTransaction() => 3,
    PoolRegistrationAsOwner() => 4,
    PoolRegistrationAsOperator() => 5,
    MultisigTransaction() => 6,
    PlutusTransaction() => 7,
  };
}
