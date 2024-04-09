import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'complex_ledger_operations.dart';
import 'ledger_operations.dart';

class GetExtendedPublicKeyOperation extends ComplexLedgerOperation<ExtendedPublicKey> {
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

    final publicKeyBytes = readerResponse.read(32);
    final chainCodeBytes = readerResponse.read(32);

    final publicKeyHex = hex.encode(publicKeyBytes);
    final chainCodeHex = hex.encode(chainCodeBytes);

    return ExtendedPublicKey(
      publicKeyHex: publicKeyHex,
      chainCodeHex: chainCodeHex,
    );
  }
}
