import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_datum.freezed.dart';

@freezed
sealed class ParsedDatum with _$ParsedDatum {
  ParsedDatum._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      ParsedDatumHash() => () {
          if (thisClass.datumHashHex.length != datumHashLength) {
            throw ValidationException("Datum hash hex must be exactly $datumHashLength characters long.");
          }
        },
      ParsedDatumInline() => () {},
    };

    assertInvoker();
  }

  factory ParsedDatum.hash({
    required String datumHashHex,
  }) = ParsedDatumHash;

  factory ParsedDatum.inline({
    required String datumHex,
  }) = ParsedDatumInline;
}
