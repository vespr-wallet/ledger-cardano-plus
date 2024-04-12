import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'parsed_anchor.freezed.dart';

@freezed
sealed class ParsedAnchor with _$ParsedAnchor {
  ParsedAnchor._() {
    validateExactHexString(hashHex, 'hashHex', stringLength64Bytes);
    validateUrl(url, 'url');
  }
  factory ParsedAnchor({
    required String url,
    required String hashHex,
  }) = _ParsedAnchor;
}
