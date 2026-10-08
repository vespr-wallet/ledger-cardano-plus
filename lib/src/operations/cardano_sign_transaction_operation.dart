import "dart:math";
import "dart:typed_data";

import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../../ledger_cardano_plus.dart";
import "../utils/serialization_utils.dart";

part "sign_transaction/sign_transaction_v7.dart";
part "sign_transaction/sign_transaction_v8.dart";

class CardanoSignTransactionOperation extends LedgerComplexOperation<SignedTransactionData> {
  final ParsedSigningRequest signingRequest;
  final CardanoVersion cardanoVersion;

  const CardanoSignTransactionOperation({
    required this.signingRequest,
    required this.cardanoVersion,
  });

  CardanoNetwork get network => signingRequest.tx.network;

  @override
  Future<SignedTransactionData> invoke(LedgerSendFct send) async {
    VersionCompatibility.ensureRequestSupportedByAppVersion(cardanoVersion, signingRequest);

    if (cardanoVersion.versionMajor >= 8) return _invokeV8(send);
    return _invokeV7(send);
  }

  Future<Witness> _signTxGetWitness(LedgerSigningPath path, LedgerSendFct send) async {
    final Uint8List data = SerializationUtils.pathToBuf(path.signingPath);

    final response = await send(
      LedgerSimpleOperation(
        cla: claCardano,
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageWitnesses,
        p2: p2Unused,
        data: data,
        prependDataLength: true,
        debugName: "Sign Transaction Get Witness",
      ),
    );

    if (response.remainingLength != ed25519SignatureLength) {
      throw LedgerCardanoSdkInternalException(
        "_signTxGetWitness: Unexpected response length for witness signature",
      );
    }

    final witnessSignature = response.read(response.remainingLength);
    final witnessSignatureHex = hex.encode(witnessSignature);

    return Witness(
      path: path,
      witnessSignatureHex: witnessSignatureHex,
    );
  }
}
