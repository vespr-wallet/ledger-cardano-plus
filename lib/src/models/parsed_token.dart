import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'parsed_token.freezed.dart';

@freezed
sealed class ParsedToken with _$ParsedToken {
  ParsedToken._() {
    validateInt64(amount, 'amount');
    validateMaxStringLength(assetNameHex, 'assetNameHex', stringLength64Bytes);
  }

  factory ParsedToken({
    required String assetNameHex,
    required BigInt amount,
  }) = _ParsedToken;
}
