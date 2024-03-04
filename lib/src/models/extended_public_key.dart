import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

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
  ExtendedPublicKeyRequest._();

  factory ExtendedPublicKeyRequest.shelley({
    required int accountIndex,
  }) = ExtendedPublicKeyRequest_Shelley;

  factory ExtendedPublicKeyRequest.byron(
      // TODO: is there anything that's needed?
      ) = ExtendedPublicKeyRequest_Byron;

  factory ExtendedPublicKeyRequest.stake({
    required int accountIndex,
  }) = ExtendedPublicKeyRequest_Stake;

  factory ExtendedPublicKeyRequest.cip36({
    required int accountIndex,
  }) = ExtendedPublicKeyRequest_CIP36;

  // TODO Stake - Cold Keys

  // TODO Voting

  factory ExtendedPublicKeyRequest.custom({
    required List<int> customPath,
  }) = ExtendedPublicKeyRequest_Custom;

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
        //TODO: For Alex: Check if this is the only valid Byron derivation path
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

  late final String accountType = switch (this) {
    ExtendedPublicKeyRequest_Shelley() => "Shelley",
    ExtendedPublicKeyRequest_Byron() => "Byron",
    ExtendedPublicKeyRequest_Custom() => "Custom",
    ExtendedPublicKeyRequest_Stake() => "Stake",
    ExtendedPublicKeyRequest_CIP36() => "CIP36",
  };

  // TODO use this to check if the cardano app version on ledger supports operation
  // TODO add the correct min version for each request type
  late final int minSupportedVersionCode = switch (this) {
    ExtendedPublicKeyRequest_Shelley() => 1,
    ExtendedPublicKeyRequest_Byron() => 2,
    ExtendedPublicKeyRequest_Custom() => 3,
    ExtendedPublicKeyRequest_Stake() => 4,
    ExtendedPublicKeyRequest_CIP36() => 5,
  };
}
