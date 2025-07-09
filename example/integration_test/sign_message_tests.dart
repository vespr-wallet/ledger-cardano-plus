import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import 'sign_message_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signMessage', () {
    late CardanoLedgerConnection cardanoApp;

    setUpAll(() async {
      cardanoApp = await establishCardanoConnection();
      print('Connected to device: ${cardanoApp.device.name}');
    });

    tearDownAll(() async {
      await cardanoApp.disconnect();
    });

    for (final testCase in testsSignMessage) {
      test(testCase.testName, () async {
        final result = await cardanoApp.signMessage(
          messageData: testCase.messageData,
          network: testCase.network,
        );

        expectVespr(result.signatureHex, equals(testCase.expected.signatureHex));
        expectVespr(result.signingPublicKeyHex, equals(testCase.expected.signingPublicKeyHex));
        expectVespr(result.addressFieldHex, equals(testCase.expected.addressFieldHex));
        expectVespr(result.signatureType, equals(testCase.expected.signatureType));
      });
    }
  });
} 