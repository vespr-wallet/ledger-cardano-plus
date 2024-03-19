import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_credential.dart';

part 'parsed_withdrawal.freezed.dart';

@freezed
class ParsedWithdrawal with _$ParsedWithdrawal {
  const ParsedWithdrawal._();

  const factory ParsedWithdrawal({
    required String amount,
    required ParsedCredential stakeCredential,
  }) = ParsedWithdrawalData;

}