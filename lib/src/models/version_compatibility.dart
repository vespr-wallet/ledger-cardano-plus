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
  }) = _VersionCompatibility;

  factory VersionCompatibility.checkVersionCompatibility(CardanoVersion version) {
    final bool isCompatible = version.versionMajor >= 3;
    final bool supportsNativeScriptHashDerivation = version.versionMajor >= 3;
    final bool supportsOperationalCertificateSigning =
        version.versionMajor > 2 || (version.versionMajor == 2 && version.versionMinor >= 4);

    return VersionCompatibility(
      isCompatible: isCompatible,
      recommendedVersion: isCompatible ? null : ">=3.0.0",
      supportsNativeScriptHashDerivation: supportsNativeScriptHashDerivation,
      supportsOperationalCertificateSigning: supportsOperationalCertificateSigning,
    );
  }
}
