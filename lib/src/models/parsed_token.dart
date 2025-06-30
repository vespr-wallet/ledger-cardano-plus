import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/constants.dart";
import "../utils/utilities.dart";

part "parsed_token.freezed.dart";

@freezed
sealed class ParsedToken with _$ParsedToken {

  factory ParsedToken({
    required String assetNameHex,
    required BigInt amount,
  }) = _ParsedToken;
  ParsedToken._() {
    validateInt64(amount, "amount");
    validateMaxStringLength(assetNameHex, "assetNameHex", stringLength64Bytes);
  }
}
