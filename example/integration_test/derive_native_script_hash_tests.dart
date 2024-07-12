import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

import 'derive_native_script_hash_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('deriveNativeScriptHash', () {
    late CardanoLedgerConnection cardanoApp;
    late bool isAppXS;

    setUpAll(() async {
      cardanoApp = await establishCardanoConnection();
      print('Connected to device: ${cardanoApp.device.name}');
      isAppXS = (await cardanoApp.getVersion()).flags.isAppXS;
    });

    group('Valid native scripts - isAppXs true', () {
      if (!isAppXS) {
        markTestSkipped('Skipping tests as Ledger isAppXS is false');
        return;
      }
      for (final testCase in validNativeScriptTestCases) {
        test(testCase.testName, () async {
          expectVespr(
            () => cardanoApp.deriveNativeScriptHash(
              testCase.script,
              testCase.displayFormat,
            ),
            throwsA(isA<LedgerException>()),
          );
        });
      }
    });

    group('Valid native scripts - isAppXs false', () {
      if (isAppXS) {
        markTestSkipped('Skipping tests as Ledger isAppXS is true');
        return;
      }
      for (final testCase in validNativeScriptTestCases) {
        test(testCase.testName, () async {
          expectVespr(
            cardanoApp.deriveNativeScriptHash(
              testCase.script,
              testCase.displayFormat,
            ),
            equals(testCase.expectedHash),
          );
        });
      }
    });

    group('Invalid scripts', () {
      for (final testCase in invalidOnLedgerScriptTestCases) {
        test(testCase.testName, () async {
          expectVespr(
            () => cardanoApp.deriveNativeScriptHash(
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
