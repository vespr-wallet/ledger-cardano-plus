import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';

@freezed
sealed class Token with _$Token {
  Token._();

  factory Token({
    required String assetNameHex,
    required BigInt amount,
  }) = _Token;

}