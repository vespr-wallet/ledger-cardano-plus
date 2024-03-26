import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_operational_certificate.freezed.dart';

@freezed
sealed class ParsedOperationalCertificate with _$ParsedOperationalCertificate {
  ParsedOperationalCertificate._() {
    if (kesPublicKeyHex.length != kesPublicKeyLength) {
      throw ValidationException("KES public key hex must be exactly $kesPublicKeyLength characters long.");
    }
  }

  factory ParsedOperationalCertificate({
    required String kesPublicKeyHex,
    required BigInt kesPeriod,
    required BigInt issueCounter,
    required List<int> coldKeyPath,
  }) = _ParsedOperationalCertificate;
}
