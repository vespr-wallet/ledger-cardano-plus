import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_anchor.freezed.dart';

@freezed
class ParsedAnchor with _$ParsedAnchor {
  ParsedAnchor._() {
    if (hashHex.length != 64) {
      throw ValidationException("Hash hex must be exactly 64 characters long.");
    }
  }
  factory ParsedAnchor({
    required String url,
    required String hashHex,
  }) = ParsedAnchorData;
}