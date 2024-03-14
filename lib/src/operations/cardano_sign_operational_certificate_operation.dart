import 'dart:typed_data';

import 'package:ledger_cardano/src/models/parsed_operational_certificate.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';

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
      ),
    );

    return response.read(ed25519SignatureLength);
  }
}
