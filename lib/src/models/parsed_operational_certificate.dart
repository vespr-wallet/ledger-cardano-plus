import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_operational_certificate.freezed.dart';

@freezed
class ParsedOperationalCertificate with _$ParsedOperationalCertificate {
  ParsedOperationalCertificate._() {
    // Validate kesPublicKeyHex length
    if (kesPublicKeyHex.length != 64) {
      throw ValidationException("KES public key hex must be exactly 64 characters long.");
    }
  }

   factory ParsedOperationalCertificate({
    required String kesPublicKeyHex,
    required String kesPeriod,
    required String issueCounter,
    required List<int> coldKeyPath,
  }) = ParsedOperationalCertificateData;
}
