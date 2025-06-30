import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/constants.dart";
import "../utils/utilities.dart";

part "cvote_public_key.freezed.dart";

@freezed
sealed class CVotePublicKey with _$CVotePublicKey {

  factory CVotePublicKey({
    required String value,
  }) = _CVotePublicKey;
  CVotePublicKey._() {
    validateExactHexString(value, "CVotePublicKey", cvotePublicKeyLength * 2);
  }
}
