import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_credential.dart';

part 'parsed_withdrawal.freezed.dart';

@freezed
sealed class ParsedWithdrawal with _$ParsedWithdrawal {
  ParsedWithdrawal._();

  factory ParsedWithdrawal({
    required BigInt amount,
    required ParsedCredential stakeCredential,
  }) = _ParsedWithdrawal;
}
