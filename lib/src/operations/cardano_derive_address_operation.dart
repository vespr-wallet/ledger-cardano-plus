import 'dart:typed_data';

import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class CardanoDeriveAddressOperation extends ComplexLedgerOperation<String> {
  final ParsedAddressParams params;
  final CardanoNetwork network;

  const CardanoDeriveAddressOperation({
    required this.params,
    required this.network,
  });

  @override
  Future<String> invoke(LedgerSendFct send) async {
    final data = serializeAddressParams(params);

    final response = await send(
      SendOperation(
        ins: InstructionType.deriveAddress.insValue,
        p1: p1ReturnDataToHost,
        p2: p2Unused,
        data: data,
        prependDataLength: true,
        debugName: 'Derive Address',
      ),
    );

    final addressBytes = response.read(response.remainingLength);
    return hex.encode(addressBytes);
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
