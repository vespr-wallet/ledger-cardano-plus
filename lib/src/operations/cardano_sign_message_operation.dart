import "dart:typed_data";

import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../../ledger_cardano_plus.dart";
import "../utils/serialization_utils.dart";

class CardanoSignMessageOperation extends LedgerComplexOperation<SignedMessageData> {
  final ParsedMessageData msgData;
  final CardanoVersion version;
  final CardanoNetwork network;

  const CardanoSignMessageOperation({
    required this.msgData,
    required this.version,
    required this.network,
  });

  LedgerSimpleOperation _createSendOperation({
    required int p1,
    required Uint8List data,
  }) {
    return LedgerSimpleOperation(
      cla: claCardano,
      ins: InstructionType.signMessage.insValue,
      p1: p1,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: "Sign Message",
    );
  }

  @override
  Future<SignedMessageData> invoke(LedgerSendFct send) async {
    if (!VersionCompatibility.checkVersionCompatibility(version).supportsMessageSigning) {
      throw LedgerCardanoVersionNotSupported(
        message: "CIP-8 message signing",
        wantedVersion: "7.1.0",
        era: "Conway",
      );
    }

    // P1 values
    const int p1StageInit = 0x01;
    const int p1StageChunk = 0x02;
    const int p1StageConfirm = 0x03;

    // INIT
    await send(
      _createSendOperation(
        p1: p1StageInit,
        data: SerializationUtils.serializeMessageDataInit(
          version: version,
          msgData: msgData,
          network: network,
        ),
      ),
    );

    // CHUNK
    final msgBytes = hex.decode(msgData.messageHex);

    Uint8List getChunkData(int start, int end) {
      final chunk = msgBytes.sublist(start, end);
      return Uint8List.fromList([
        ...SerializationUtils.serializeUint32(chunk.length),
        ...chunk,
      ]);
    }

    final firstChunkSize = msgData.isAscii ? maxCIP8MessageFirstChunkAsciiSize : maxCIP8MessageFirstChunkHexSize;

    int start = 0;
    int end = msgBytes.length < firstChunkSize ? msgBytes.length : firstChunkSize;

    await send(
      _createSendOperation(
        p1: p1StageChunk,
        data: getChunkData(start, end),
      ),
    );
    start = end;

    if (start < msgBytes.length) {
      // non-hashed messages must be processed in a single APDU
      if (!msgData.hashPayload) {
        throw LedgerCardanoValidationException("MESSAGE_DATA_LONG_NON_HASHED_MSG");
      }
    }

    while (start < msgBytes.length) {
      end = msgBytes.length < start + maxCIP8MessageHiddenChunkSize
          ? msgBytes.length
          : start + maxCIP8MessageHiddenChunkSize;

      await send(
        _createSendOperation(
          p1: p1StageChunk,
          data: getChunkData(start, end),
        ),
      );

      start = end;
    }

    // CONFIRM
    final confirmResponse = await send(
      _createSendOperation(
        p1: p1StageConfirm,
        data: Uint8List(0),
      ),
    );

    final signatureHex = hex.encode(confirmResponse.read(ed25519SignatureLength));

    final signingPublicKeyHex = hex.encode(confirmResponse.read(publicKeyLength));

    final addressFieldSizeBuf = confirmResponse.read(4);
    final addressFieldSize =
        (addressFieldSizeBuf[0] << 24) |
        (addressFieldSizeBuf[1] << 16) |
        (addressFieldSizeBuf[2] << 8) |
        addressFieldSizeBuf[3];

    final addressFieldHex = hex.encode(confirmResponse.read(addressFieldSize));

    return SignedMessageData(
      signatureHex: signatureHex,
      signingPublicKeyHex: signingPublicKeyHex,
      addressFieldHex: addressFieldHex,
    );
  }
}
