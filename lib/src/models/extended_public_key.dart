import 'package:freezed_annotation/freezed_annotation.dart';

part 'extended_public_key.freezed.dart';

@freezed
sealed class ExtendedPublicKey with _$ExtendedPublicKey {
  const ExtendedPublicKey._();

  const factory ExtendedPublicKey({
    required String publicKeyHex,
    required String chainCodeHex,
    required String accountType,
  }) = _ExtendedPublicKey;
}

@freezed
sealed class ExtendedPublicKeyRequest with _$ExtendedPublicKeyRequest {
  const ExtendedPublicKeyRequest._();

  const factory ExtendedPublicKeyRequest.shelley({
    required int accountIndex,
  }) = ExtendedPublicKeyRequest_Shelley;

  const factory ExtendedPublicKeyRequest.byron(
      // TODO: is there anything that's needed?
      ) = ExtendedPublicKeyRequest_Byron;

  // TODO Stake - Cold Keys

  // TODO Voting

  const factory ExtendedPublicKeyRequest.custom({
    required List<int> customPath,
  }) = ExtendedPublicKeyRequest_Custom;
}
