// ignore: depend_on_referenced_packages
import 'package:matcher/src/expect/async_matcher.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:base_x/base_x.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_cardano/src/models/shelley_address_params.dart';

import 'get_extended_public_key_test_cases.dart';

FutureOr<void> expectVespr(dynamic actual, dynamic matcher) async {
  switch (actual) {
    case Function():
      late dynamic result;
      late bool resultIsError;
      try {
        result = actual();
        resultIsError = false;
      } catch (err) {
        result = err;
        resultIsError = true;
      }
      if (resultIsError) {
        return expectLater(() => throw result, matcher, reason: StackTrace.current.toString());
      } else if (result is Future && matcher is! AsyncMatcher) {
        return expectLater(result, completion(matcher), reason: StackTrace.current.toString());
      } else {
        return expectLater(result, matcher, reason: StackTrace.current.toString());
      }
    case Future():
      if (matcher is! AsyncMatcher) {
        return expectLater(actual, completion(matcher), reason: StackTrace.current.toString());
      } else {
        return expectLater(actual, matcher, reason: StackTrace.current.toString());
      }
    default:
      return expect(actual, matcher, reason: StackTrace.current.toString());
  }
}

String addressHexToBase58(String addressHex) {
  final base58 = BaseXCodec('123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz');
  final bytes = hex.decode(addressHex);
  return base58.encode(Uint8List.fromList(bytes));
}

String base58ToHex(String base58Address) {
  final base58 = BaseXCodec('123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz');
  final bytes = base58.decode(base58Address);
  return bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
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
  final String Function() encoder = switch (params) {
    ByronAddressParams() => () => addressHexToBase58(addressResult),
    ShelleyAddressParams(shelleyAddressParams: final shelleyParams) => () {
        final String bech32Hrp = switch (shelleyParams) {
          RewardKey() => network.stakeBech32Hrp,
          RewardScript() => network.stakeBech32Hrp,
          _ => network.paymentBech32Hrp,
        };
        return bech32EncodeAddress(bech32Hrp, addressBytes);
      },
  };
  return encoder();
}

String bech32ToHex(String bech32Address) {
  Uint8List addressBytes = bech32DecodeAddress(bech32Address);
  return addressBytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
}

Future<void> testSingleKey(
    List<ExtendedPublicKeyTestCase> tests, CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  final appVersion = await cardanoApp.getVersion(device);
  for (final testCase in tests) {
    if ((testCase.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode) {
      final response = await cardanoApp.getExtendedPublicKey(
        device,
        request: ExtendedPublicKeyRequest_Custom(customPath: testCase.path),
      );

      expectVespr(response.publicKeyHex, equals(testCase.expected.publicKey));
      expectVespr(response.chainCodeHex, equals(testCase.expected.chainCode));
    } else {
      print("Skipped test for ${testCase.path} due to unsupported version");
    }
  }
}

Future<void> testMultipleKeys(
  List<ExtendedPublicKeyTestCase> allTests,
  CardanoLedgerApp cardanoApp,
  LedgerDevice device,
) async {
  final appVersion = await cardanoApp.getVersion(device);
  final tests = allTests.where((t) => (t.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode).toList();
  if (tests.length != allTests.length) {
    print("Skipped ${allTests.length - tests.length} tests due to min cardano version");
  }

  final requests = tests.map((testCase) => ExtendedPublicKeyRequest_Custom(customPath: testCase.path)).toList();
  final results = await cardanoApp.getExtendedPublicKeys(device, requests: requests);

  expectVespr(results.length, equals(tests.length));
  for (int i = 0; i < tests.length; i++) {
    expectVespr(results[i].publicKeyHex, equals(tests[i].expected.publicKey));
    expectVespr(results[i].chainCodeHex, equals(tests[i].expected.chainCode));
  }
}
