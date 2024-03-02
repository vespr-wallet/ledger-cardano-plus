import 'package:freezed_annotation/freezed_annotation.dart';

part 'extended_public_key.freezed.dart';

@freezed
sealed class ExtendedPublicKey with _$ExtendedPublicKey {
  const ExtendedPublicKey._();

  const factory ExtendedPublicKey({
    required String publicKeyHex,
    required String chainCodeHex,
  }) = _ExtendedPublicKey;
}
