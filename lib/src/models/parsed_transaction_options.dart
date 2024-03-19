import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_transaction_options.freezed.dart';

@freezed
class ParsedTransactionOptions with _$ParsedTransactionOptions {
  const ParsedTransactionOptions._();

  const factory ParsedTransactionOptions({
    required bool tagCborSets,
  }) = ParsedTransactionOptions_data;

}