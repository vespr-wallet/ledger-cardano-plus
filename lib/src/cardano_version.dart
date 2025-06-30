import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/flags.dart';
import 'package:ledger_cardano_plus/src/models/version_compatibility.dart';
import 'package:ledger_cardano_plus/src/utils/exceptions.dart';

part 'cardano_version.freezed.dart';

@freezed
sealed class CardanoVersion with _$CardanoVersion {
  CardanoVersion._();

  factory CardanoVersion({
    required bool testMode,
    required int versionMajor,
    required int versionMinor,
    required int versionPatch,
    required bool locked,
    required Flags flags,
  }) = _CardanoVersion;

  @override
  late final int versionCode =
      versionMajor * 10000 + versionMinor * 100 + versionPatch;

  @override
  late final String versionName = '$versionMajor.$versionMinor.$versionPatch';

  @override
  late final VersionCompatibility compatibility =
      VersionCompatibility.checkVersionCompatibility(this);

  factory CardanoVersion.fromVersionCode(int versionCode) => CardanoVersion(
        testMode: false,
        versionMajor: versionCode ~/ 10000,
        versionMinor: (versionCode % 10000) ~/ 100,
        versionPatch: versionCode % 100,
        locked: false,
        flags: const Flags(isDebug: false, isAppXS: false),
      );

  void requireConway(String caller) {
    if (!compatibility.supportsConway) {
      throw LedgerCardanoVersionNotSupported(
        message: caller,
        era: "Conway",
        wantedVersion: ">=7.0.0",
      );
    }
  }

  void requireBabbage(String caller) {
    if (!compatibility.supportsBabbage) {
      throw LedgerCardanoVersionNotSupported(
        message: caller,
        era: "Babbage",
        wantedVersion: ">=5.0.0",
      );
    }
  }

  void requireAlonzo(String caller) {
    if (!compatibility.supportsAlonzo) {
      throw LedgerCardanoVersionNotSupported(
        message: caller,
        wantedVersion: ">=4.0.0",
        era: "Alonzo",
      );
    }
  }

  void requireMary(String caller) {
    if (!compatibility.supportsMary) {
      throw LedgerCardanoVersionNotSupported(
        message: caller,
        wantedVersion: ">=2.2.0",
        era: "Mary",
      );
    }
  }
}
