// ignore: depend_on_referenced_packages
// ignore_for_file: avoid_print

import 'package:base_x/base_x.dart';
import 'package:matcher/src/expect/async_matcher.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:permission_handler/permission_handler.dart';

import 'get_extended_public_key_test_cases.dart';

Future<CardanoLedgerConnection> establishCardanoConnection() async {
  final ledger = CardanoLedger.ble(
    onPermissionRequest: (status) async {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.location,
        Permission.bluetoothScan,
        Permission.bluetoothConnect,
        Permission.bluetoothAdvertise,
      ].request();

      return statuses.values.where((status) => status.isDenied).isEmpty;
    },
  );
  final device = await ledger.scanForDevices().first;
  print("Connecting to device: ${device.id}");
  return ledger.connect(device);
}

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

Future<String> deriveAddress(
  CardanoLedgerConnection cardanoApp,
  CardanoNetwork network,
  ParsedAddressParams params,
) =>
    cardanoApp.deriveAddressGeneric(network: network, params: params);

String bech32ToHex(String bech32Address) {
  Uint8List addressBytes = bech32DecodeAddress(bech32Address);
  return addressBytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
}

Future<void> testSingleKey(
  List<ExtendedPublicKeyTestCase> tests,
  CardanoLedgerConnection cardanoApp,
) async {
  final appVersion = await cardanoApp.getVersion();
  for (final testCase in tests) {
    if ((testCase.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode) {
      final response = await cardanoApp.getExtendedPublicKey(
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
  CardanoLedgerConnection cardanoApp,
) async {
  final appVersion = await cardanoApp.getVersion();
  final tests = allTests.where((t) => (t.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode).toList();
  if (tests.length != allTests.length) {
    print("Skipped ${allTests.length - tests.length} tests due to min cardano version");
  }

  final requests = tests.map((testCase) => ExtendedPublicKeyRequest_Custom(customPath: testCase.path)).toList();
  final results = await cardanoApp.getExtendedPublicKeys(requests: requests);

  expectVespr(results.length, equals(tests.length));
  for (int i = 0; i < tests.length; i++) {
    expectVespr(results[i].publicKeyHex, equals(tests[i].expected.publicKey));
    expectVespr(results[i].chainCodeHex, equals(tests[i].expected.chainCode));
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
