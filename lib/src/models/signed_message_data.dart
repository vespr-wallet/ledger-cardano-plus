import "package:freezed_annotation/freezed_annotation.dart";

part "signed_message_data.freezed.dart";

@freezed
sealed class SignedMessageData with _$SignedMessageData {
  const factory SignedMessageData({
    required String signatureHex,
    required String signingPublicKeyHex,
    required String addressFieldHex,
  }) = _SignedMessageData;
} 
