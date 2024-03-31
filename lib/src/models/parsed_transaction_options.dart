import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_transaction_options.freezed.dart';

@freezed
sealed class ParsedTransactionOptions with _$ParsedTransactionOptions {
  const ParsedTransactionOptions._();

  const factory ParsedTransactionOptions({
    required bool tagCborSets,
  }) = _ParsedTransactionOptions;
}
