import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_signing_mode.freezed.dart';

@freezed
sealed class TransactionSigningModes with _$TransactionSigningModes {
  const TransactionSigningModes._();

  const factory TransactionSigningModes.ordinaryTransaction() = OrdinaryTransaction;
  const factory TransactionSigningModes.multisigTransaction() = MultisigTransaction;
  const factory TransactionSigningModes.poolRegistrationAsOwner() = PoolRegistrationAsOwner;
  const factory TransactionSigningModes.poolRegistrationAsOperator() = PoolRegistrationAsOperator;
  const factory TransactionSigningModes.plutusTransaction() = PlutusTransaction;
}

