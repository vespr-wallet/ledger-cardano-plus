import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/flags.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';
import 'package:ledger_cardano/src/utils/exceptions.dart';

part 'cardano_version.freezed.dart';

@freezed
class CardanoVersion with _$CardanoVersion {
  CardanoVersion._();

  factory CardanoVersion({
    required bool testMode,
    required int versionMajor,
    required int versionMinor,
    required int versionPatch,
    required bool locked,
    required Flags flags,
  }) = _CardanoVersion;

  late final int versionCode = versionMajor * 10000 + versionMinor * 100 + versionPatch;

  late final String versionName = '$versionMajor.$versionMinor.$versionPatch';

  late final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(this);

  factory CardanoVersion.fromVersionCode(int versionCode) => CardanoVersion(
        testMode: false,
        versionMajor: versionCode ~/ 10000,
        versionMinor: (versionCode % 10000) ~/ 100,
        versionPatch: versionCode % 100,
        locked: false,
        flags: const Flags(isDebug: false, isAppXS: false),
      );

  void requireConway(String? caller) {
    if (!compatibility.supportsConway) {
      throw VersionNotSupported(caller ?? "Unknown operation", "Conway");
    }
  }

  void requireBabbage(String? caller) {
    if (!compatibility.supportsBabbage) {
      throw VersionNotSupported(caller ?? "Unknown operation", "Babbage");
    }
  }

  void requireAlonzo(String? caller) {
    if (!compatibility.supportsAlonzo) {
      throw VersionNotSupported(caller ?? "Unknown operation", "Alonzo");
    }
  }

  void requireMary(String? caller) {
    if (!compatibility.supportsMary) {
      throw VersionNotSupported(caller ?? "Unknown operation", "Mary");
    }
  }
}
