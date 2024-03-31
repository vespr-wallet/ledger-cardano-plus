import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/parsed_transaction_options.dart';
import 'package:ledger_cardano/src/models/transaction_signing_mode.dart';

part 'parsed_signing_request.freezed.dart';

@freezed
sealed class ParsedSigningRequest with _$ParsedSigningRequest {
  const ParsedSigningRequest._();

  const factory ParsedSigningRequest({
    required ParsedTransaction tx,
    required TransactionSigningModes signingMode,
    required List<List<int>> additionalWitnessPaths,
    required ParsedTransactionOptions options,
  }) = _ParsedSigningRequest;
}
