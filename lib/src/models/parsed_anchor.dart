import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/constants.dart";
import "../utils/utilities.dart";

part "parsed_anchor.freezed.dart";

@freezed
sealed class ParsedAnchor with _$ParsedAnchor {
  factory ParsedAnchor({
    required String url,
    required String hashHex,
  }) = _ParsedAnchor;
  ParsedAnchor._() {
    validateExactHexString(hashHex, "hashHex", stringLength64Bytes);
    validateUrl(url, "url");
  }
}
