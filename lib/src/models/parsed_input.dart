import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/constants.dart";
import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "parsed_input.freezed.dart";

@freezed
sealed class ParsedInput with _$ParsedInput {
  factory ParsedInput({
    required String txHashHex,
    required int outputIndex,
    required LedgerSigningPath? path,
  }) = _ParsedInput;
  ParsedInput._() {
    validateExactHexString(txHashHex, "txHashHex", txHashHexMaxLength);
    validateUint32(outputIndex, "outputIndex");
    validateBIP32Path(path, "path");
  }
}
