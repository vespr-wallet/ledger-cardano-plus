import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_token.freezed.dart';

@freezed
sealed class ParsedToken with _$ParsedToken {
  const ParsedToken._();

  const factory ParsedToken({
    required String assetNameHex,
    required BigInt amount,
  }) = _ParsedToken;
}
