import 'dart:typed_data';

import 'package:ledger_cardano/src/models/parsed_operational_certificate.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

class CardanoSignOperationalCertificateOperation extends ComplexLedgerOperation<Uint8List> {
  final ParsedOperationalCertificate operationalCertificate;

  const CardanoSignOperationalCertificateOperation({
    required this.operationalCertificate,
  });

  @override
  Future<Uint8List> invoke(LedgerSendFct send) async {
    final data = SerializationUtils.serializeOperationalCertificate(operationalCertificate);

    final response = await send(
      SendOperation(
        ins: InstructionType.signOperationalCertificate.insValue,
        p1: p1Unused,
        p2: p2Unused,
        data: data,
        prependDataLength: true,
        debugName: 'Sign Operational Certificate',
      ),
    );

    if (response.remainingLength != ed25519SignatureLength) {
      throw ValidationException(
          'Response data length does not match expected ed25519 signature length of $ed25519SignatureLength bytes');
    }

    return response.read(ed25519SignatureLength);
  }
}
