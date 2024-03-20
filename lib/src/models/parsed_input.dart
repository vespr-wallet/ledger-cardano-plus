import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_input.freezed.dart';

@freezed
sealed class ParsedInput with _$ParsedInput {
  ParsedInput._();

  factory ParsedInput({
    required String txHashHex,
    required int outputIndex,
    List<int>? path,
  }) = _ParsedInput;
}
