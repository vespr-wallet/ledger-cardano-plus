import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/cardano_version.dart';

part 'version_compatibility.freezed.dart';

@freezed
class VersionCompatibility with _$VersionCompatibility {
  const VersionCompatibility._();

  const factory VersionCompatibility({
    required bool isCompatible,
    required String? recommendedVersion,
    required bool supportsNativeScriptHashDerivation,
    required bool supportsOperationalCertificateSigning,
    required bool supportsByronAddressDerivation,
    required bool supportsMary,
    required bool supportsCatalystRegistration,
    required bool supportsCIP36,
    required bool supportsZeroTtl,
    required bool supportsPoolRegistrationAsOwner,
    required bool supportsPoolRegistrationAsOperator,
    required bool supportsPoolRetirement,
    required bool supportsMultisigTransaction,
    required bool supportsMint,
    required bool supportsAlonzo,
    required bool supportsReqSignersInOrdinaryTx,
    required bool supportsBabbage,
    required bool supportsCIP36Vote,
    required bool supportsConway,
  }) = _VersionCompatibility;

  factory VersionCompatibility.checkVersionCompatibility(CardanoVersion version) {
    final isAppXS = version.flags.isAppXS;
    final int major = version.versionMajor;
    final int minor = version.versionMinor;

    bool isVersionInRange(int minMajor, int minMinor, [int maxMajor = 7]) {
      return (major > minMajor || (major == minMajor && minor >= minMinor)) && major <= maxMajor;
    }

    return VersionCompatibility(
      isCompatible: isVersionInRange(2, 2),
      recommendedVersion: isVersionInRange(2, 2) ? null : ">=7.0",
      supportsNativeScriptHashDerivation: isVersionInRange(3, 0) && !isAppXS,
      supportsOperationalCertificateSigning: isVersionInRange(2, 4),
      supportsByronAddressDerivation: isVersionInRange(2, 2) && !isAppXS,
      supportsMary: isVersionInRange(2, 2),
      supportsCatalystRegistration: isVersionInRange(2, 3),
      supportsCIP36: isVersionInRange(6, 0),
      supportsZeroTtl: isVersionInRange(2, 3),
      supportsPoolRegistrationAsOwner: isVersionInRange(2, 2) && !isAppXS,
      supportsPoolRegistrationAsOperator: isVersionInRange(2, 4) && !isAppXS,
      supportsPoolRetirement: isVersionInRange(2, 4) && !isAppXS,
      supportsMultisigTransaction: isVersionInRange(3, 0),
      supportsMint: isVersionInRange(3, 0),
      supportsAlonzo: isVersionInRange(4, 0),
      supportsReqSignersInOrdinaryTx: isVersionInRange(4, 1),
      supportsBabbage: isVersionInRange(5, 0),
      supportsCIP36Vote: isVersionInRange(6, 0),
      supportsConway: isVersionInRange(7, 0),
    );
  }
}