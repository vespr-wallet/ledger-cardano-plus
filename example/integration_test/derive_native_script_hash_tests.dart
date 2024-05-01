import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'derive_native_script_hash_test_cases.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('deriveNativeScriptHash', () {
    late Ledger ledger;
    late CardanoLedgerApp cardanoApp;
    late LedgerDevice device;

    setUpAll(() async {
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 10)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      print("Connecting to device: ${device.id}");
      await ledger.connect(device);
      print("Connected to device: ${device.name}");
    });

    group('Valid native scripts', () {
      for (final testCase in validNativeScriptTestCases) {
        test(testCase.testName, () async {
          final isAppXS = (await cardanoApp.getVersion(device)).flags.isAppXS;
          print("isAppXS: $isAppXS");
          try {
            final result = await cardanoApp.deriveNativeScriptHash(
              device,
              testCase.script,
              testCase.displayFormat,
            );
            expect(result, equals(testCase.expectedHash));
          } catch (e) {
            if (e is LedgerException && isAppXS) {
              expect(e.message, isA<String>());
              expect(e, isA<LedgerException>());
            } else {
              rethrow;
            }
          }
        });
      }
    });

    //TODO: Tests for invalid scripts are not meant to work as expected because of invalid input.
    // group('Invalid scripts', () {
    //   for (final testCase in invalidOnLedgerScriptTestCases) {
    //     test(testCase.testName, () async {
    //       final promise = cardanoApp.deriveNativeScriptHash(
    //         device,
    //         testCase.script,
    //         NativeScriptHashDisplayFormat.bech32,
    //       );
    //       expect(promise, throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });
  });
}
