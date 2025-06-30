import "package:freezed_annotation/freezed_annotation.dart";

part "parsed_margin.freezed.dart";

@freezed
sealed class ParsedMargin with _$ParsedMargin {
  factory ParsedMargin({
    required BigInt numerator,
    required BigInt denominator,
  }) = _ParsedMargin;
  ParsedMargin._();
}
