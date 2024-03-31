import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_input.freezed.dart';

@freezed
sealed class ParsedInput with _$ParsedInput {
  const ParsedInput._();

  const factory ParsedInput({
    required String txHashHex,
    required int outputIndex,
    List<int>? path,
  }) = _ParsedInput;
}
