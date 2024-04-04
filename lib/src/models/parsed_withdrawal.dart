import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'parsed_credential.dart';

part 'parsed_withdrawal.freezed.dart';

@freezed
sealed class ParsedWithdrawal with _$ParsedWithdrawal {
  ParsedWithdrawal._(){
    validateUint64(amount, 'amount');
  }

  factory ParsedWithdrawal({
    required BigInt amount,
    required ParsedCredential stakeCredential,
  }) = _ParsedWithdrawal;
}
