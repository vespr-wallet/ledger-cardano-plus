import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "witness.freezed.dart";

@freezed
sealed class Witness with _$Witness {

  factory Witness({
    required LedgerSigningPath path,
    required String witnessSignatureHex,
  }) = _Witness;
  Witness._() {
    validateBIP32Path(path, "path");
    validateHexString(witnessSignatureHex, "witnessSignatureHex");
  }
}
