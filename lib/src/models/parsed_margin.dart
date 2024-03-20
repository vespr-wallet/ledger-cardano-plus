import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_margin.freezed.dart';

@freezed
sealed class ParsedMargin with _$ParsedMargin {
  ParsedMargin._();

  factory ParsedMargin({
    required String numerator,
    required String denominator,
  }) = _ParsedMargin;
}
