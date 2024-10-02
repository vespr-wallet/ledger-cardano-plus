import 'dart:typed_data';

import 'package:ledger_cardano_plus/src/models/parsed_operational_certificate.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/exceptions.dart';
import 'package:ledger_cardano_plus/src/utils/serialization_utils.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus_dart.dart';

class CardanoSignOperationalCertificateOperation
    extends LedgerComplexOperation<Uint8List> {
  final ParsedOperationalCertificate operationalCertificate;

  const CardanoSignOperationalCertificateOperation({
    required this.operationalCertificate,
  });

  @override
  Future<Uint8List> invoke(LedgerSendFct send) async {
    final data = SerializationUtils.serializeOperationalCertificate(
        operationalCertificate);

    final response = await send(
      LedgerSimpleOperation(
        cla: claCardano,
        ins: InstructionType.signOperationalCertificate.insValue,
        p1: p1Unused,
        p2: p2Unused,
        data: data,
        prependDataLength: true,
        debugName: 'Sign Operational Certificate',
      ),
    );

    if (response.remainingLength != ed25519SignatureLength) {
      throw LedgerCardanoSdkInternalException(
        'Response data length does not match expected ed25519 signature length of $ed25519SignatureLength bytes',
      );
    }

    return response.read(ed25519SignatureLength);
  }
}
