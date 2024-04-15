import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'byron_address_test_cases.dart';
import 'shelley_address_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Cardano Ledger App Address Derivation Tests', () {
    late Ledger ledger;
    late CardanoLedgerApp cardanoApp;
    late LedgerDevice device;

    setUpAll(() async {
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 5)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      print("Connecting to device: ${device.id}");
      await ledger.connect(device);
      print("Connected to device: ${device.name}");
    });

    group('Should successfully derive Byron address', () {
      for (var testCase in byronTestCases) {
        test(testCase.testName, () async {
          final isAppXS = (await cardanoApp.getVersion(device)).flags.isAppXS;
          if (isAppXS) {
            expect(() => deriveAddress(cardanoApp, device, testCase.network, testCase.addressParams),
                throwsA(isA<LedgerException>()));
          } else {
            final result = await deriveAddress(cardanoApp, device, testCase.network, testCase.addressParams);
            expect(addressHexToBase58(result), equals(testCase.expectedResult));
          }
        });
      }
    });

    group('Should successfully derive Shelley address', () {
      for (var testCase in shelleyTestCases) {
        test(testCase.testName, () async {
          final result = await deriveAddress(cardanoApp, device, testCase.network, testCase.addressParams);
          expect(result, equals(testCase.expectedResult));
        });
      }
    });

    group('Should successfully derive change addresses', () {
      final testCases = [
        {'accountIndex': 0, 'addressIndex': 0},
        {'accountIndex': 0, 'addressIndex': 10},
        {'accountIndex': 10, 'addressIndex': 0},
        {'accountIndex': 10, 'addressIndex': 10},
      ];

      for (final testCase in testCases) {
        test(
            'Derive address for account index ${testCase['accountIndex']} and address index ${testCase['addressIndex']}',
            () async {
          final result = await cardanoApp.deriveChangeAddress(
            device,
            accountIndex: testCase['accountIndex'] as int,
            addressIndex: testCase['addressIndex'] as int,
          );
          print('Derived address: $result');
        });
      }
    });
    
     group('Should successfully derive stake addresses', () {
      final testCases = [
        {'accountIndex': 0, 'addressIndex': 0},
        {'accountIndex': 10, 'addressIndex': 0},
      ];

      for (final testCase in testCases) {
        test(
            'Derive address for account index ${testCase['accountIndex']} and address index ${testCase['addressIndex']}',
            () async {
          final result = await cardanoApp.deriveStakingAddress(
            device,
            accountIndex: testCase['accountIndex'] as int,
            addressIndex: testCase['addressIndex'] as int,
          );
          print('Derived address: $result');
        });
      }
    });
    
  });
}
