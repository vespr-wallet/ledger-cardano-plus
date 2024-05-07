import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'sign_operational_certificate_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signOperationalCertificate', () {
    late Ledger ledger;
    late CardanoLedgerApp cardanoApp;
    late LedgerDevice device;
    late bool isAppXS;

    setUpAll(() async {
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 5)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      await ledger.connect(device);
      isAppXS = (await cardanoApp.getVersion(device)).flags.isAppXS;
    });

    group('Should successfully sign operational certificate - isAppXS true', () {
      for (final testCase in signOperationalCertificateTests) {
        test(testCase.testName, () async {
          if (isAppXS == true) {
            expectVespr(
              () => cardanoApp.signOperationalCertificate(device, testCase.operationalCertificate),
              throwsA(isA<LedgerException>()),
            );
          } else {
            print('Skipping test as isAppXS is not true');
          }
        });
      }
    });

    group('Should successfully sign operational certificate - isAppXS false', () {
      for (final testCase in signOperationalCertificateTests) {
        test(testCase.testName, () async {
          if (isAppXS == false) {
            final Uint8List signatureBytes =
                await cardanoApp.signOperationalCertificate(device, testCase.operationalCertificate);
            final String signatureHex = hex.encode(signatureBytes);
            expectVespr(signatureHex, equals(testCase.expected));
          } else {
            print('Skipping test as isAppXS is not false');
          }
        });
      }
    });
  });
}
