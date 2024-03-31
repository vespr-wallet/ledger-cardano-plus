import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_token.freezed.dart';

@freezed
sealed class ParsedToken<T> with _$ParsedToken<T> {
  const ParsedToken._();

  const factory ParsedToken({
    required String assetNameHex,
    required T amount,
  }) = _ParsedToken<T>;
}
