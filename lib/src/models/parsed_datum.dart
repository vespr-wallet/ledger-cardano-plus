import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_datum.freezed.dart';

@freezed
class ParsedDatum with _$ParsedDatum {
  ParsedDatum._();

  factory ParsedDatum.hash({
    required String datumHashHex,
  }) {
    if (datumHashHex.length != 64) {
      throw ValidationException("Datum hash hex must be exactly 64 characters long.");
    }
    return ParsedDatum.hash(datumHashHex: datumHashHex);
  }

  factory ParsedDatum.inline({
    required String datumHex,
  }) = DatumInline;
}
