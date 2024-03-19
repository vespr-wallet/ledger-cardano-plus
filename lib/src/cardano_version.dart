import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/flags.dart';

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
    required Flags_mode flags,
  }) = _CardanoVersion;

  late final int versionCode = versionMajor * 10000 + versionMinor * 100 + versionPatch;

  late final String versionName = '$versionMajor.$versionMinor.$versionPatch';

  factory CardanoVersion.fromVersionCode(int versionCode) => CardanoVersion(
        testMode: false,
        versionMajor: versionCode ~/ 10000,
        versionMinor: (versionCode % 10000) ~/ 100,
        versionPatch: versionCode % 100,
        locked: false,
        flags: const Flags_mode(isDebug: false, isAppXS: false),
      );
}

