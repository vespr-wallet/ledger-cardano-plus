import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_margin.freezed.dart';

@freezed
class ParsedMargin with _$ParsedMargin {
  const ParsedMargin._();

  const factory ParsedMargin({
    required String numerator,
    required String denominator,
  }) = ParsedMarginData;
}
