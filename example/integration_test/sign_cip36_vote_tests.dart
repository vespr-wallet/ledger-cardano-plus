import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';

import 'sign_cip36_vote_test_cases.dart';
import 'test_utils.dart';

void main() {
  // TODO update test to expect error on old version
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signCIP36Vote', () {
    late CardanoLedgerConnection cardanoApp;

    setUpAll(() async {
      cardanoApp = await establishCardanoConnection();
      print('Connected to device: ${cardanoApp.device.name}');
    });

    tearDownAll(() async {
      await cardanoApp.disconnect();
    });

    for (final testCase in testsCIP36Vote) {
      test(testCase.testName, () async {
        final response = await cardanoApp.signCIP36Vote(testCase.cVote);
        expectVespr(response, equals(testCase.expected));
      });
    }
  });
}
