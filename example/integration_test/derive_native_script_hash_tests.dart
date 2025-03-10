import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
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
      for (final testCase in validNativeScriptTestCases) {
        test(testCase.testName, () async {
          if (!isAppXS) {
            markTestSkipped('Skipping tests as Ledger isAppXS is false');
          } else {
            expectVespr(
              () => cardanoApp.deriveNativeScriptHash(
                testCase.script,
                testCase.displayFormat,
              ),
              throwsA(isA<LedgerException>()),
            );
          }
        });
      }
    });

    group('Valid native scripts - isAppXs false', () {
      for (final testCase in validNativeScriptTestCases) {
        test(testCase.testName, () async {
          if (isAppXS) {
            markTestSkipped('Skipping tests as Ledger isAppXS is true');
          } else {
            expectVespr(
              cardanoApp.deriveNativeScriptHash(
                testCase.script,
                testCase.displayFormat,
              ),
              equals(testCase.expectedHash),
            );
          }
        });
      }
    });

    group('Invalid dart validation rejection scripts', () {
      // dart throws before sending to ledger
      for (final testCase in invalidValidationTestCases) {
        test(testCase.testName, () async {
          expectVespr(
            testCase.script,
            throwsA(isA<LedgerCardanoValidationException>()),
          );
        });
      }
    });

    group('Invalid ledger rejection scripts', () {
      // ledger device dejects those
      for (final testCase in invalidOnLedgerScriptTestCases) {
        test(testCase.testName, () async {
          expectVespr(
            cardanoApp.deriveNativeScriptHash(
              testCase.script(),
              NativeScriptHashDisplayFormat.bech32,
            ),
            throwsA(isA<InvalidDataException>()),
          );
        });
      }
    });
  });
}
