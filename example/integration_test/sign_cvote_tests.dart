import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';

import 'cvote_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signCVote', () {
    late CardanoLedgerConnection cardanoApp;
    late CardanoVersion appVersion;

    setUpAll(() async {
      cardanoApp = await establishCardanoConnection();
      print('Connected to device: ${cardanoApp.device.name}');
      appVersion = await cardanoApp.getVersion();
    });

    group('signCatalystRegistration', () {
      for (final testCase in testsCatalystRegistration) {
        test(testCase.testName, () async {
          if (appVersion.versionCode >= (testCase.minSupportedVersion?.versionCode ?? 0)) {
            final result = await cardanoApp.signTransaction(testCase.request);
            expectVespr(result, equals(testCase.expected));
          } else {
            markTestSkipped('Test skipped due to version incompatibility');
          }
        });
      }
    });

    group('signCVoteRegistrationCIP36', () {
      for (final testCase in testsCVoteRegistrationCIP36) {
        test(testCase.testName, () async {
          if (appVersion.versionCode >= (testCase.minSupportedVersion?.versionCode ?? 0)) {
            final result = await cardanoApp.signTransaction(testCase.request);
            expectVespr(result, equals(testCase.expected));
          } else {
            markTestSkipped('Test skipped due to version incompatibility');
          }
        });
      }
    });
  });
}
