import 'dart:typed_data';
import 'package:base_x/base_x.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

import 'get_extended_public_key_test_cases.dart';

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

Future<void> testSingleKey(
    List<ExtendedPublicKeyTestCase> tests, CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  for (final testCase in tests) {
    final response = await cardanoApp.getExtendedPublicKey(
      device,
      request: ExtendedPublicKeyRequest_Custom(customPath: testCase.path),
    );

    expect(response.publicKeyHex, equals(testCase.expected.publicKey));
    expect(response.chainCodeHex, equals(testCase.expected.chainCode));
  }
}

Future<void> testMultipleKeys(
    List<ExtendedPublicKeyTestCase> tests, CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  final requests = tests.map((testCase) => ExtendedPublicKeyRequest_Custom(customPath: testCase.path)).toList();
  final results = await cardanoApp.getExtendedPublicKeys(device, requests: requests);

  expect(results.length, equals(tests.length));
  for (int i = 0; i < tests.length; i++) {
    expect(results[i].publicKeyHex, equals(tests[i].expected.publicKey));
    expect(results[i].chainCodeHex, equals(tests[i].expected.chainCode));
  }
}
