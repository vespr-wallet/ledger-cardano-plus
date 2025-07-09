import "package:freezed_annotation/freezed_annotation.dart";

part "signed_message_data.freezed.dart";

enum DataSignatureType {
  paylod,
  payload_black2b_hash_28_bytes, // blake2b224 (28 bytes)
}

@freezed
sealed class SignedMessageData with _$SignedMessageData {
  const factory SignedMessageData({
    required String signatureHex,
    required String signingPublicKeyHex,
    required String addressFieldHex,
    required DataSignatureType signatureType, // whether the signature is hashed or not
  }) = _SignedMessageData;
}
