import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

import 'sign_operational_certificate_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signOperationalCertificate', () {
    late CardanoLedgerConnection cardanoApp;
    late bool isAppXS;

    setUpAll(() async {
      cardanoApp = await establishCardanoConnection();
      print('Connected to device: ${cardanoApp.device.name}');
      isAppXS = (await cardanoApp.getVersion()).flags.isAppXS;
    });

    group('Should successfully sign operational certificate - isAppXS true', () {
      for (final testCase in signOperationalCertificateTests) {
        test(testCase.testName, () async {
          if (isAppXS == true) {
            expectVespr(
              () => cardanoApp.signOperationalCertificate(testCase.operationalCertificate),
              throwsA(isA<LedgerException>()),
            );
          } else {
            markTestSkipped('Skipping test as isAppXS is not true');
          }
        });
      }
    });

    group('Should successfully sign operational certificate - isAppXS false', () {
      for (final testCase in signOperationalCertificateTests) {
        test(testCase.testName, () async {
          if (isAppXS == false) {
            final Uint8List signatureBytes =
                await cardanoApp.signOperationalCertificate(testCase.operationalCertificate);
            final String signatureHex = hex.encode(signatureBytes);
            expectVespr(signatureHex, equals(testCase.expected));
          } else {
            markTestSkipped('Skipping test as isAppXS is not false');
          }
        });
      }
    });
  });
}
