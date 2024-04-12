import 'dart:typed_data';
import 'package:base_x/base_x.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

String addressHexToBase58(String addressHex) {
  final base58 = BaseXCodec('123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz');
  final bytes = hex.decode(addressHex);
  return base58.encode(Uint8List.fromList(bytes));
}

Future<String> deriveAddress(
    CardanoLedgerApp cardanoApp, LedgerDevice device, CardanoNetwork network, ParsedAddressParams params) async {
  final operation = CardanoDeriveAddressOperation(
    params: params,
    network: network,
  );

  final addressResult = await cardanoApp.ledger.sendComplexOperation<String>(
    device,
    operation,
    transformer: const CardanoTransformer(),
  );

  Uint8List addressBytes = hexToBytes(addressResult);
  String prefix = switch (network) {
    NetworkMainnet() => 'addr',
    NetworkLegacyTestnet() => 'addr_test',
    NetworkPreProd() => 'addr',
    NetworkPreview() => 'addr',
    NetworkConway() => 'addr',
    NetworkCustom() => 'addr',
  };
  return bech32EncodeAddress(prefix, addressBytes);
}
