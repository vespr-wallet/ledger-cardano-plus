import 'package:flutter_test/flutter_test.dart' as flutter_test;
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'cvote_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  flutter_test.group('signCVote', () {
    late Ledger ledger;
    late CardanoLedgerApp cardanoApp;
    late LedgerDevice device;

    flutter_test.setUpAll(() async {
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 5)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      print("Connecting to device: ${device.id}");
      await ledger.connect(device);
      print('Connected to device: ${device.name}');
    });

    flutter_test.group('signCatalystRegistration', () {
      late List<dynamic> filteredTests;

      flutter_test.setUpAll(() async {
        final appVersion = await cardanoApp.getVersion(device);
        filteredTests = testsCatalystRegistration
            .where((test) => (test.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode)
            .toList();

        if (filteredTests.length != testsCatalystRegistration.length) {
          print("Skipped ${testsCatalystRegistration.length - filteredTests.length} tests due to min cardano version");
        }
      });

      for (final testCase in testsCatalystRegistration) {
        flutter_test.test(testCase.testName, () async {
          if (filteredTests.contains(testCase)) {
            final result = await cardanoApp.signTransaction(device, testCase.request);
            expectVespr(result, flutter_test.equals(testCase.expected));
          } else {
            flutter_test.markTestSkipped('Test skipped due to version incompatibility');
          }
        });
      }
    });

    flutter_test.group('signCVoteRegistrationCIP36', () {
      late List<dynamic> filteredTests;

      flutter_test.setUpAll(() async {
        final appVersion = await cardanoApp.getVersion(device);
        filteredTests = testsCVoteRegistrationCIP36
            .where((test) => (test.minSupportedVersion?.versionCode ?? 0) <= appVersion.versionCode)
            .toList();

        if (filteredTests.length != testsCVoteRegistrationCIP36.length) {
          print("Skipped ${testsCVoteRegistrationCIP36.length - filteredTests.length} tests due to min cardano version");
        }
      });

      for (final testCase in testsCVoteRegistrationCIP36) {
        flutter_test.test(testCase.testName, () async {
          if (filteredTests.contains(testCase)) {
            final result = await cardanoApp.signTransaction(device, testCase.request);
            expectVespr(result, flutter_test.equals(testCase.expected));
          } else {
            flutter_test.markTestSkipped('Test skipped due to version incompatibility');
          }
        });
      }
    });

    flutter_test.test('Sign tx with Catalyst registration metadata with base address', () async {
      final testCase = testsCatalystRegistration.firstWhere(
        (test) => test.testName == 'Sign tx with Catalyst registration metadata with base address',
      );
      expectVespr(
        () => cardanoApp.signTransaction(device, testCase.request),
        flutter_test.equals(testCase.expected),
      );
    });

    flutter_test.test('Sign tx with CIP36 registration with vote key path', () async {
      final testCase = testsCVoteRegistrationCIP36.firstWhere(
        (test) => test.testName == 'Sign tx with CIP36 registration with vote key path',
      );
      expectVespr(
        () => cardanoApp.signTransaction(device, testCase.request),
        flutter_test.equals(testCase.expected),
      );
    });
  });
}
