import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'cvote_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signCVote', () {
    late Ledger ledger;
    late CardanoLedgerApp cardanoApp;
    late LedgerDevice device;

    setUpAll(() async {
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 5)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      print("Connecting to device: ${device.id}");
      await ledger.connect(device);
      print('Connected to device: ${device.name}');
    });

    group('signCatalystRegistration', () {
      test('Catalyst registration signing with version check', () async {
        final appVersion = await cardanoApp.getVersion(device);
        final filteredTests = testsCatalystRegistration
            .where((test) => (test.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode)
            .toList();

        if (filteredTests.length != testsCatalystRegistration.length) {
          print("Skipped ${testsCatalystRegistration.length - filteredTests.length} tests due to min cardano version");
        }

        for (final testCase in filteredTests) {
          test(testCase.testName, () async {
            final result = await cardanoApp.signTransaction(device, testCase.request);
            expectVespr(result, equals(testCase.expected));
          });
        }
      });
    });

    group('signCVoteRegistrationCIP36', () {
      test('CIP36 registration signing with version check', () async {
        final appVersion = await cardanoApp.getVersion(device);
        final filteredTests = testsCVoteRegistrationCIP36
            .where((test) => (test.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode)
            .toList();

        if (filteredTests.length != testsCVoteRegistrationCIP36.length) {
          print("Skipped ${testsCVoteRegistrationCIP36.length - filteredTests.length} tests due to min cardano version");
        }

        for (final testCase in filteredTests) {
          test(testCase.testName, () async {
            final result = await cardanoApp.signTransaction(device, testCase.request);
            expectVespr(result, equals(testCase.expected));
          });
        }
      });
    });

    group('Specific Test Case: Sign tx with Catalyst registration metadata with base address', () {
      test('Sign tx with Catalyst registration metadata with base address', () async {
        final testCase = testsCatalystRegistration.firstWhere(
          (test) => test.testName == 'Sign tx with Catalyst registration metadata with base address',
        );
        expectVespr(
          () => cardanoApp.signTransaction(device, testCase.request),
          equals(testCase.expected),
        );
      });
    });

    group('Specific Test Case: Sign tx with CIP36 registration with vote key path', () {
      test('Sign tx with CIP36 registration with vote key path', () async {
        final testCase = testsCVoteRegistrationCIP36.firstWhere(
          (test) => test.testName == 'Sign tx with CIP36 registration with vote key path',
        );
        expectVespr(
          () => cardanoApp.signTransaction(device, testCase.request),
          equals(testCase.expected),
        );
      });
    });
  });
}