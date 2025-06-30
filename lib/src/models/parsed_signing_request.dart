import "package:freezed_annotation/freezed_annotation.dart";
import "ledger_signing_path.dart";
import "parsed_transaction.dart";
import "parsed_transaction_options.dart";
import "transaction_signing_mode.dart";

part "parsed_signing_request.freezed.dart";

@freezed
sealed class ParsedSigningRequest with _$ParsedSigningRequest {
  factory ParsedSigningRequest({
    required ParsedTransaction tx,
    required TransactionSigningModes signingMode,
    required List<LedgerSigningPath> additionalWitnessPaths,
    ParsedTransactionOptions? options,
  }) = _ParsedSigningRequest;
  ParsedSigningRequest._();
}
