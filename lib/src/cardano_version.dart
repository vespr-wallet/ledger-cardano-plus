import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _CardanoVersion;

  /// Get the version code.
  late final int versionCode =
      versionMajor * 10000 + versionMinor * 100 + versionPatch;

  /// Get the version name.
  late final String versionName = '$versionMajor.$versionMinor.$versionPatch';

  factory CardanoVersion.fromVersionCode(int versionCode) => CardanoVersion(
        testMode: false,
        versionMajor: versionCode ~/ 10000,
        versionMinor: (versionCode % 10000) ~/ 100,
        versionPatch: versionCode % 100,
        locked: false,
      );
}
