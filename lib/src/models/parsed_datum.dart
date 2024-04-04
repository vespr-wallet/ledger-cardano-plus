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
      ParsedDatumInline() => () {
          if (!RegExp(r'^[0-9a-fA-F]+$').hasMatch(thisClass.datumHex)) {
            throw ValidationException("Datum hex must be a valid hex string.");
          }
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

  late final DatumType datumType = switch (this) {
    ParsedDatumHash() => DatumType.hash,
    ParsedDatumInline() => DatumType.inline,
  };
}
