import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/transaction.dart';
import 'package:ledger_cardano/src/models/transaction_signing_mode.dart';
import 'package:ledger_cardano/src/models/parsed_transaction_options.dart';

part 'sign_transaction_request.freezed.dart';

@freezed
sealed class SignTransactionRequest with _$SignTransactionRequest {
  const SignTransactionRequest._();

  const factory SignTransactionRequest({
    required Transaction tx,
    required TransactionSigningModes signingMode,
    List<List<int>>? additionalWitnessPaths,
    ParsedTransactionOptions? options,
  }) = _SignTransactionRequest;
}
