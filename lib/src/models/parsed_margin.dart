import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_margin.freezed.dart';

@freezed
sealed class ParsedMargin with _$ParsedMargin {
  const ParsedMargin._();

  const factory ParsedMargin({
    required BigInt numerator,
    required BigInt denominator,
  }) = _ParsedMargin;
}
