import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'sign_operational_certificate_test_cases.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signOperationalCertificate', () {
    late Ledger ledger;
    late CardanoLedgerApp cardanoApp;
    late LedgerDevice device;

    setUpAll(() async {
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 5)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      await ledger.connect(device);
    });

    for (final testCase in signOperationalCertificateTests) {
      test(testCase.testName, () async {
        final isAppXS = (await cardanoApp.getVersion(device)).flags.isAppXS;
        final promise = cardanoApp.signOperationalCertificate(device, testCase.operationalCertificate);

        if (isAppXS) {
          expect(promise, throwsA(isA<LedgerException>()));
        } else {
          final Uint8List signatureBytes = await promise;
          final String signatureHex = hex.encode(signatureBytes);
          expect(signatureHex, equals(testCase.expected));
        }
      });
    }
  });
}
