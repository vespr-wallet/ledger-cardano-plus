import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'parsed_operational_certificate.freezed.dart';

@freezed
sealed class ParsedOperationalCertificate with _$ParsedOperationalCertificate {
  ParsedOperationalCertificate._() {
    validateExactHexString(
        kesPublicKeyHex, 'kesPublicKeyHex', kesPublicKeyLength);
  }

  factory ParsedOperationalCertificate({
    required String kesPublicKeyHex,
    required BigInt kesPeriod,
    required BigInt issueCounter,
    required LedgerSigningPath coldKeyPath,
  }) = _ParsedOperationalCertificate;
}
