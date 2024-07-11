import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'sign_cip36_vote_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signCIP36Vote', () {
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

    tearDownAll(() async {
      await ledger.disconnect(device);
    });

    for (final testCase in testsCIP36Vote) {
      test(testCase.testName, () async {
        final response = await cardanoApp.signCIP36Vote(device, testCase.cVote);
        expectVespr(response, equals(testCase.expected));
      });
    }
  });
}