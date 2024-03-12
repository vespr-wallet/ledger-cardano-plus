import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class CardanoDeriveAddressOperation extends ComplexLedgerOperation<String> {
  final List<int> bip32SpendingPath;
  final List<int> bip32StakingPath;
  final CardanoNetwork network;

  const CardanoDeriveAddressOperation({
    required this.bip32SpendingPath,
    required this.bip32StakingPath,
    required this.network,
  });

  @override
  Future<String> invoke(LedgerSendFct send) async {
    final ByteDataWriter writer = ByteDataWriter();

    writer.writeUint8(initialWriterValue);
    writer.writeUint8(network.networkId);

    _appendSpendingDataSource(writer, bip32SpendingPath);
    _appendStakingDataSource(writer, bip32StakingPath);

    final response = await send(
      SendOperation(
        ins: InstructionType.deriveAddress.insValue,
        p1: p1ReturnAddressToHost,
        p2: p2Unused,
        data: writer.toBytes(),
        prependDataLength: true,
      ),
    );

    final addressBytes = response.read(response.remainingLength);
    return hex.encode(addressBytes);
  }

  static void _appendSpendingDataSource(
      ByteDataWriter writer, List<int> bipPath) {
    SerializationUtils.writerSerializedPath(writer, bipPath);
  }

  static void _appendStakingDataSource(
      ByteDataWriter writer, List<int> bipPath) {
    writer.writeUint8(0x22);
    SerializationUtils.writerSerializedPath(writer, bipPath);
  }
}
