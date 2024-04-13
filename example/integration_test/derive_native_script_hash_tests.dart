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
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 5)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      print('device: $device');
      await ledger.connect(device);
      print('connected device: $device');
    });

    group('Valid native scripts', () {
      for (final testCase in validNativeScriptTestCases) {
        test(testCase.testName, () async {
          final isAppXS = (await cardanoApp.getVersion(device)).flags.isAppXS;
          final promise = cardanoApp.deriveNativeScriptHash(
            device,
            testCase.script,
            testCase.displayFormat,
          );

          if (isAppXS) {
            expect(promise, throwsA(isA<LedgerException>()));
          } else {
            final result = await promise;
            expect(result, equals(testCase.expectedHash));
          }
        });
      }
    });

    group('Invalid scripts', () {
      for (final testCase in invalidOnLedgerScriptTestCases) {
        test(testCase.testName, () async {
          final isAppXS = (await cardanoApp.getVersion(device)).flags.isAppXS;
          final promise = cardanoApp.deriveNativeScriptHash(
            device,
            testCase.script,
            NativeScriptHashDisplayFormat.bech32,
          );

          if (isAppXS) {
            expect(promise, throwsA(isA<LedgerException>()));
          } else {
            expect(promise, throwsA(isA<LedgerException>()));
          }
        });
      }
    });
  });
}
