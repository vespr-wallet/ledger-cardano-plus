import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';

part 'extended_public_key.freezed.dart';

@freezed
sealed class ExtendedPublicKey with _$ExtendedPublicKey {
  const ExtendedPublicKey._();

  const factory ExtendedPublicKey({
    // bech32 extended public key ; ED25519-BIP32 public key (32 bytes) + chain code (32 bytes)
    required String xPub,
    // bech32 extended public key ; ED25519-BIP32 public key (32 bytes) + chain code (32 bytes)
    required String acctXvk,
    // bech32 public key ; ED25519-BIP32 public key (32 bytes)
    required String acctVk,
    required String publicKeyHex,
    required String chainCodeHex,
  }) = _ExtendedPublicKey;
}

@freezed
sealed class ExtendedPublicKeyRequest with _$ExtendedPublicKeyRequest {
  ExtendedPublicKeyRequest._();

  factory ExtendedPublicKeyRequest.shelley({
    required int accountIndex,
  }) = ExtendedPublicKeyRequest_Shelley;

  factory ExtendedPublicKeyRequest.byron() = ExtendedPublicKeyRequest_Byron;

  factory ExtendedPublicKeyRequest.stake({
    required int accountIndex,
  }) = ExtendedPublicKeyRequest_Stake;

  factory ExtendedPublicKeyRequest.cip36({
    required int accountIndex,
  }) = ExtendedPublicKeyRequest_CIP36;

  factory ExtendedPublicKeyRequest.custom({
    required List<int> customPath,
  }) = ExtendedPublicKeyRequest_Custom;

  @override
  late final List<int> derivationPath = switch (this) {
    ExtendedPublicKeyRequest_Shelley(accountIndex: final accIndex) => [
        harden + 1852,
        harden + 1815,
        harden + accIndex,
      ],
    ExtendedPublicKeyRequest_Byron() => [
        harden + 44,
        harden + 1815,
        harden + 0,
      ],
    ExtendedPublicKeyRequest_Stake(accountIndex: final accIndex) => [
        harden + 1852,
        harden + 1815,
        harden + accIndex,
        2,
        0,
      ],
    ExtendedPublicKeyRequest_CIP36(accountIndex: final accIndex) => [
        harden + 1694,
        harden + 1815,
        harden + accIndex,
        0,
        0,
      ],
    ExtendedPublicKeyRequest_Custom(customPath: final customPath) => customPath,
  };

  @override
  late final int minSupportedVersionCode = switch (this) {
    ExtendedPublicKeyRequest_Shelley() => 20200, // Version 2.2.0
    ExtendedPublicKeyRequest_Byron() =>
      20200, // Version 2.2.0, supportsByronAddressDerivation
    ExtendedPublicKeyRequest_Custom() =>
      50001, // Version 5.0.1, last official build
    ExtendedPublicKeyRequest_Stake() =>
      20200, // Version 2.2.0, supportsPoolRegistrationAsOwner
    ExtendedPublicKeyRequest_CIP36() => 60000, // Version 6.0.0, supportsCIP36
  };
}
