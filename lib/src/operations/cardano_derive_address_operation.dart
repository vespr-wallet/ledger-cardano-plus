import "dart:typed_data";

import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../models/parsed_address_params.dart";
import "../models/shelley_address_params.dart";
import "../models/staking_data_source.dart";
import "../utils/cardano_networks.dart";
import "../utils/constants.dart";
import "../utils/serialization_utils.dart";
import "../utils/utilities.dart";

class CardanoDeriveAddressOperation extends LedgerComplexOperation<String> {
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
      LedgerSimpleOperation(
        cla: claCardano,
        ins: InstructionType.deriveAddress.insValue,
        p1: p1ReturnDataToHost,
        p2: p2Unused,
        data: data,
        prependDataLength: true,
        debugName: "Derive Address",
      ),
    );

    final addressBytes = response.read(response.remainingLength);
    return hex.encode(addressBytes);
  }

  Uint8List serializeAddressParams(ParsedAddressParams params) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(params.addressType.value);

      final void Function() invoker = switch (params) {
        ByronAddressParams() => () {
            writer.writeUint32(network.networkMagic);
            writer.write(SerializationUtils.serializeSpendingDataSource(params.spendingDataSource));
            writer.writeUint8(StakingDataSource.none().stakingDataSourceValue);
          },
        ShelleyAddressParams() => () {
            writer.writeUint8(network.networkId);
            final shelleyParams = params.shelleyAddressParams;
            final void Function() shelleyInvoker = switch (shelleyParams) {
              BasePaymentKeyStakeKey() => () {
                  writer.write(SerializationUtils.serializeSpendingDataSource(shelleyParams.spendingDataSource));
                  writer.write(SerializationUtils.serializeStakingDataSource(shelleyParams.stakingDataSource));
                },
              BasePaymentScriptStakeKey() => () {
                  writer.write(SerializationUtils.serializeSpendingDataSource(shelleyParams.spendingDataSource));
                  writer.write(SerializationUtils.serializeStakingDataSource(shelleyParams.stakingDataSource));
                },
              BasePaymentKeyStakeScript() => () {
                  writer.write(SerializationUtils.serializeSpendingDataSource(shelleyParams.spendingDataSource));
                  writer.write(SerializationUtils.serializeStakingDataSource(shelleyParams.stakingDataSource));
                },
              BasePaymentScriptStakeScript() => () {
                  writer.write(SerializationUtils.serializeSpendingDataSource(shelleyParams.spendingDataSource));
                  writer.write(SerializationUtils.serializeStakingDataSource(shelleyParams.stakingDataSource));
                },
              EnterpriseKey() => () {
                  writer.write(SerializationUtils.serializeSpendingDataSource(shelleyParams.spendingDataSource));
                  writer.writeUint8(StakingDataSource.none().stakingDataSourceValue);
                },
              EnterpriseScript() => () {
                  writer.write(SerializationUtils.serializeSpendingDataSource(shelleyParams.spendingDataSource));
                  writer.writeUint8(StakingDataSource.none().stakingDataSourceValue);
                },
              PointerKey() => () {
                  writer.write(SerializationUtils.serializeSpendingDataSource(shelleyParams.spendingDataSource));
                  writer.write(SerializationUtils.serializeStakingDataSource(shelleyParams.stakingDataSource));
                },
              PointerScript() => () {
                  writer.write(SerializationUtils.serializeSpendingDataSource(shelleyParams.spendingDataSource));
                  writer.write(SerializationUtils.serializeStakingDataSource(shelleyParams.stakingDataSource));
                },
              RewardKey() => () {
                  writer.write(SerializationUtils.serializeStakingDataSource(shelleyParams.stakingDataSource));
                },
              RewardScript() => () {
                  writer.writeUint8(StakingDataSource.scriptHash(scriptHashHex: shelleyParams.stakingScriptHashHex)
                      .stakingDataSourceValue);
                  SerializationUtils.writeSerializedHex(writer, shelleyParams.stakingScriptHashHex);
                },
            };

            shelleyInvoker();
          },
      };

      invoker();

      return writer.toBytes();
    });
  }
}
