import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/constants.dart";
import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "parsed_operational_certificate.freezed.dart";

@freezed
sealed class ParsedOperationalCertificate with _$ParsedOperationalCertificate {

  factory ParsedOperationalCertificate({
    required String kesPublicKeyHex,
    required BigInt kesPeriod,
    required BigInt issueCounter,
    required LedgerSigningPath coldKeyPath,
  }) = _ParsedOperationalCertificate;
  ParsedOperationalCertificate._() {
    validateExactHexString(
        kesPublicKeyHex, "kesPublicKeyHex", kesPublicKeyLength);
  }
}
