import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'datum.freezed.dart';

enum DatumType { hash, inline }

@freezed
sealed class Datum with _$Datum {
  Datum._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      DatumHash() => () {
          validateHexString(thisClass.datumHashHex, 'datumHashHex');
        },
      DatumInline() => () {
          validateHexString(thisClass.datumHex, 'datumHex');
        },
    };
    assertInvoker();
  }

  factory Datum.hash({
    required String datumHashHex,
  }) = DatumHash;

  factory Datum.inline({
    required String datumHex,
  }) = DatumInline;

  late final DatumType type = switch (this) {
    DatumHash() => DatumType.hash,
    DatumInline() => DatumType.inline,
  };
}
