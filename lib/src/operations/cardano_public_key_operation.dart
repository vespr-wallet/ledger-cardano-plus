import 'dart:typed_data';

import 'package:ledger_cardano_plus/src/models/extended_public_key.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/hex_utils.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';
import 'complex_ledger_operations.dart';
import 'ledger_operations.dart';

class GetExtendedPublicKeyOperation
    extends ComplexLedgerOperation<ExtendedPublicKey> {
  final List<int> bip32Path;

  const GetExtendedPublicKeyOperation({
    required this.bip32Path,
  });

  @override
  Future<ExtendedPublicKey> invoke(LedgerSendFct send) async {
    final data = useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(bip32Path.length * 4 + 1);
      writer.writeUint8(bip32Path.length);
      for (var path in bip32Path) {
        writer.writeUint32(path);
      }
      return writer.toBytes();
    });

    final sendOperation = SendOperation(
      ins: InstructionType.getExtendedPublicKey.insValue,
      p1: p1Unused,
      p2: p2Unused,
      data: data,
      prependDataLength: false,
      debugName: 'Get Extended Public Key',
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
