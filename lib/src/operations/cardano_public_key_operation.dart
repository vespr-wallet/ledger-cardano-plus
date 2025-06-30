import "dart:typed_data";

import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../models/extended_public_key.dart";
import "../utils/constants.dart";
import "../utils/utilities.dart";

class GetExtendedPublicKeyOperation extends LedgerComplexOperation<ExtendedPublicKey> {
  final List<int> bip32Path;

  const GetExtendedPublicKeyOperation({
    required this.bip32Path,
  });

  @override
  Future<ExtendedPublicKey> invoke(LedgerSendFct send) async {
    final data = useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(bip32Path.length * 4 + 1);
      writer.writeUint8(bip32Path.length);
      for (final path in bip32Path) {
        writer.writeUint32(path);
      }
      return writer.toBytes();
    });

    final sendOperation = LedgerSimpleOperation(
      cla: claCardano,
      ins: InstructionType.getExtendedPublicKey.insValue,
      p1: p1Unused,
      p2: p2Unused,
      data: data,
      prependDataLength: false,
      debugName: "Get Extended Public Key",
    );

    final readerResponse = await send(sendOperation);

    final keyAndChainCode = readerResponse.read(64);

    final publicKeyBytes = Uint8List.sublistView(keyAndChainCode, 0, 32);
    final chainCodeBytes = Uint8List.sublistView(keyAndChainCode, 32, 64);

    return ExtendedPublicKey(
      publicKeyHex: hex.encode(publicKeyBytes),
      chainCodeHex: hex.encode(chainCodeBytes),
      xPub: bech32EncodeAddress("xpub", keyAndChainCode),
      acctXvk: bech32EncodeAddress("acct_xvk", keyAndChainCode),
      acctVk: bech32EncodeAddress("acct_vk", publicKeyBytes),
    );
  }
}
