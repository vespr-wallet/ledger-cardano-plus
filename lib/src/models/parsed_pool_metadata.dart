import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/utilities.dart";

part "parsed_pool_metadata.freezed.dart";

@freezed
sealed class ParsedPoolMetadata with _$ParsedPoolMetadata {

  factory ParsedPoolMetadata({
    required String url,
    required String hashHex,
  }) = _ParsedPoolMetadata;
  ParsedPoolMetadata._() {
    validateUrl(url, "url");
    validateHexString(hashHex, "hashHex");
  }
}
