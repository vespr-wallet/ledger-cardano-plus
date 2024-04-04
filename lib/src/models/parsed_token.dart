import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'parsed_token.freezed.dart';

@freezed
sealed class ParsedToken with _$ParsedToken {
  ParsedToken._() {
    validateInt64(amount, 'amount');
    validateMaxHexString(assetNameHex, 'assetNameHex', maxHexStringLength);
  }

  factory ParsedToken({
    required String assetNameHex,
    required BigInt amount,
  }) = _ParsedToken;
}
