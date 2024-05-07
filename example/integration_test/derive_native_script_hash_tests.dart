import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'derive_native_script_hash_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('deriveNativeScriptHash', () {
    late Ledger ledger;
    late CardanoLedgerApp cardanoApp;
    late LedgerDevice device;
    late bool isAppXS;

    setUpAll(() async {
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 10)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      print("Connecting to device: ${device.id}");
      await ledger.connect(device);
      print("Connected to device: ${device.name}");
      isAppXS = (await cardanoApp.getVersion(device)).flags.isAppXS;
    });

    group('Valid native scripts - isAppXs true', () async {
      if (!isAppXS) {
        print('Skipping tests as Ledger isAppXS is false');
        return;
      }
      for (final testCase in validNativeScriptTestCases) {
        test(testCase.testName, () async {
          expectVespr(
            () => cardanoApp.deriveNativeScriptHash(
              device,
              testCase.script,
              testCase.displayFormat,
            ),
            throwsA(isA<LedgerException>()),
          );
        });
      }
    });

    group('Valid native scripts - isAppXs false', () async {
      if (isAppXS) {
        print('Skipping tests as Ledger isAppXS is true');
        return;
      }
      for (final testCase in validNativeScriptTestCases) {
        test(testCase.testName, () async {
          test(testCase.testName, () async {
            expectVespr(
              cardanoApp.deriveNativeScriptHash(
                device,
                testCase.script,
                testCase.displayFormat,
              ),
              equals(testCase.expectedHash),
            );
          });
        });
      }
    });

    group('Invalid scripts', () {
      for (final testCase in invalidOnLedgerScriptTestCases) {
        test(testCase.testName, () async {
          expectVespr(
            () => cardanoApp.deriveNativeScriptHash(
              device,
              testCase.script,
              NativeScriptHashDisplayFormat.bech32,
            ),
            throwsA(isA<LedgerException>()),
          );
        });
      }
    });
  });
}
