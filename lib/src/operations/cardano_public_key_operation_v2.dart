
import 'package:buffer/buffer.dart';
import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'cardano_ledger_operation.dart';
import 'complex_ledger_operations.dart';
import 'ledger_operations.dart';

class GetExtendedPublicKeyOperationV2
    extends ComplexLedgerOperation<ExtendedPublicKey> {
  final List<int> bip32Path;
  final String accountType;

  GetExtendedPublicKeyOperationV2({
    required this.bip32Path,
    required this.accountType,
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
      p1: ReturnType.unused.p1Value,
      p2: 0,
      data: data,
      expectResponseLength: false,
    );

    final readerResponse = await send(sendOperation);

    final publicKeyBytes = readerResponse.read(32);
    final chainCodeBytes = readerResponse.read(32);

    final publicKeyHex = hex.encode(publicKeyBytes);
    final chainCodeHex = hex.encode(chainCodeBytes);

    return ExtendedPublicKey(
      publicKeyHex: publicKeyHex,
      chainCodeHex: chainCodeHex,
      accountType: accountType,
    );
  }
}
