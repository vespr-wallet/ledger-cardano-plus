import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'parsed_datum.freezed.dart';

@freezed
sealed class ParsedDatum with _$ParsedDatum {
  ParsedDatum._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      ParsedDatumHash() => () {
          validateExactHexString(thisClass.datumHashHex, 'Datum hash hex', datumHashLength);
        },
      ParsedDatumInline() => () {
          validateHexString(thisClass.datumHex, 'Datum hex');
        },
    };
    assertInvoker();
  }

  factory ParsedDatum.hash({
    required String datumHashHex,
  }) = ParsedDatumHash;

  factory ParsedDatum.inline({
    required String datumHex,
  }) = ParsedDatumInline;

  late final int datumValue = switch (this) {
    ParsedDatumHash() => 0,
    ParsedDatumInline() => 1,
  };
}
