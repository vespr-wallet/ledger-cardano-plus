import 'dart:typed_data';

import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class CardanoDeriveAddressOperation extends ComplexLedgerOperation<String> {
  static const int initialWriterValue = 0x00;
  static const int stakingDataSourcePrefix = 0x22;

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
    final data = useBinaryWriter((writer) {
      writer.writeUint8(initialWriterValue);
      writer.writeUint8(network.networkId);

      _appendSpendingDataSource(writer, bip32SpendingPath);
      _appendStakingDataSource(writer, bip32StakingPath);

      return writer.toBytes();
    });

    final response = await send(
      SendOperation(
        ins: InstructionType.deriveAddress.insValue,
        p1: p1ReturnDataToHost,
        p2: p2Unused,
        data: data,
        prependDataLength: true,
      ),
    );

    final addressBytes = response.read(response.remainingLength);
    return hex.encode(addressBytes);
  }

  static void _appendSpendingDataSource(ByteDataWriter writer, List<int> bipPath) {
    SerializationUtils.writerSerializedPath(writer, bipPath);
  }

  static void _appendStakingDataSource(ByteDataWriter writer, List<int> bipPath) {
    writer.writeUint8(stakingDataSourcePrefix);
    SerializationUtils.writerSerializedPath(writer, bipPath);
  }

  Uint8List serializeAddressParams(ParsedAddressParams params) {
    final buffer = ByteDataWriter();
    buffer.writeUint8(params.type.value);
    if (params.type == AddressType.byron) {
      buffer.writeUint32(network.protocolMagic);
    } else {
      buffer.writeUint8(network.networkId);
    }
    buffer.write(SerializationUtils.serializeSpendingDataSource(params.spendingDataSource));
    buffer.write(SerializationUtils.serializeStakingDataSource(params.stakingDataSource));

    return buffer.toBytes();
  }
}
