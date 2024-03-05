import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cardano_version.freezed.dart';

@freezed
class CardanoVersion with _$CardanoVersion {
  const CardanoVersion._();

  const factory CardanoVersion({
    required bool testMode,
    required int versionMajor,
    required int versionMinor,
    required int versionPatch,
    required bool locked,
  }) = _CardanoVersion;

  /// Get the version code.
  int get versionCode =>
      versionMajor * 10000 + versionMinor * 100 + versionPatch;

  /// Get the version name.
  String get versionName => '$versionMajor.$versionMinor.$versionPatch';

  static CardanoVersion fromVersionCode(int versionCode) {
    return CardanoVersion(
      testMode: false,
      versionMajor: versionCode ~/ 10000,
      versionMinor: (versionCode % 10000) ~/ 100,
      versionPatch: versionCode % 100,
      locked: false,
    );
  }
}
