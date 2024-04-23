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
    bool? isAppXS;

    setUpAll(() async {
      ledger = Ledger(options: LedgerOptions(maxScanDuration: const Duration(seconds: 5)));
      cardanoApp = CardanoLedgerApp(ledger);
      device = await ledger.scan().first;
      print("Connecting to device: ${device.id}");
      await ledger.connect(device);
      isAppXS = (await cardanoApp.getVersion(device)).flags.isAppXS;
    });

    group('Should successfully derive Byron address - isAppXS true', () {
      for (var testCase in byronTestCases) {
        test(testCase.testName, () async {
          if (isAppXS == true) {
            expect(() => deriveAddress(cardanoApp, device, testCase.network, testCase.addressParams),
                throwsA(isA<LedgerException>()));
          } else {
            print('Skipping test as isAppXS is not true');
          }
        });
      }
    });

    group('Should successfully derive Byron address - isAppXS false', () {
      for (var testCase in byronTestCases) {
        test(testCase.testName, () async {
          if (isAppXS == false) {
            final result = await deriveAddress(cardanoApp, device, testCase.network, testCase.addressParams);
            expect(addressHexToBase58(result), equals(testCase.expectedResult));
          } else {
            print('Skipping test as isAppXS is not false');
          }
        });
      }
    });

    group('Should successfully derive Shelley address - isAppXS true', () {
      for (var testCase in shelleyTestCases) {
        test(testCase.testName, () async {
          if (isAppXS == true) {
            expect(() => deriveAddress(cardanoApp, device, testCase.network, testCase.addressParams),
                throwsA(isA<LedgerException>()));
          } else {
            print('Skipping test as isAppXS is not true');
          }
        });
      }
    });

    group('Should successfully derive Shelley address - isAppXS false', () {
      for (var testCase in shelleyTestCases) {
        test(testCase.testName, () async {
          if (isAppXS == false) {
            final result = await deriveAddress(cardanoApp, device, testCase.network, testCase.addressParams);
            expect(result, equals(testCase.expectedResult));
          } else {
            print('Skipping test as isAppXS is not false');
          }
        });
      }
    });

    group('Should successfully derive change addresses - isAppXS true', () {
      final testCases = [
        (accountIndex: 0, addressIndex: 0),
        (accountIndex: 0, addressIndex: 10),
        (accountIndex: 10, addressIndex: 0),
        (accountIndex: 10, addressIndex: 10),
      ];

      for (final testCase in testCases) {
        test(
            'Derive address for account index ${testCase.accountIndex} and address index ${testCase.addressIndex} - isAppXS true',
            () async {
          if (isAppXS == true) {
            expect(
                () => cardanoApp.deriveChangeAddress(
                      device,
                      accountIndex: testCase.accountIndex,
                      addressIndex: testCase.addressIndex,
                      network: CardanoNetwork.mainnet(),
                    ),
                throwsA(isA<LedgerException>()));
          } else {
            print('Skipping test as isAppXS is not true');
          }
        });
      }
    });

    group('Should successfully derive change addresses - isAppXS false', () {
      final testCases = [
        (accountIndex: 0, addressIndex: 0),
        (accountIndex: 0, addressIndex: 10),
        (accountIndex: 10, addressIndex: 0),
        (accountIndex: 10, addressIndex: 10),
      ];

      for (final testCase in testCases) {
        test(
            'Derive address for account index ${testCase.accountIndex} and address index ${testCase.addressIndex} - isAppXS false',
            () async {
          if (isAppXS == false) {
            final result = await cardanoApp.deriveChangeAddress(
              device,
              accountIndex: testCase.accountIndex,
              addressIndex: testCase.addressIndex,
              network: CardanoNetwork.mainnet(),
            );
            print('Derived address: $result');
          } else {
            print('Skipping test as isAppXS is not false');
          }
        });
      }
    });

    group('Should successfully derive stake addresses - isAppXS true', () {
      final testCases = [
        (accountIndex: 0, addressIndex: 0),
        (accountIndex: 10, addressIndex: 0),
      ];

      for (final testCase in testCases) {
        test(
            'Derive stake address for account index ${testCase.accountIndex} and address index ${testCase.addressIndex} - isAppXS true',
            () async {
          if (isAppXS == true) {
            expect(
                () => cardanoApp.deriveStakingAddress(
                      device,
                      accountIndex: testCase.accountIndex,
                      addressIndex: testCase.addressIndex,
                      network: CardanoNetwork.mainnet(),
                    ),
                throwsA(isA<LedgerException>()));
          } else {
            print('Skipping test as isAppXS is not true');
          }
        });
      }
    });

    group('Should successfully derive stake addresses - isAppXS false', () {
      final testCases = [
        (accountIndex: 0, addressIndex: 0),
        (accountIndex: 10, addressIndex: 0),
      ];

      for (final testCase in testCases) {
        test(
            'Derive stake address for account index ${testCase.accountIndex} and address index ${testCase.addressIndex} - isAppXS false',
            () async {
          if (isAppXS == false) {
            final result = await cardanoApp.deriveStakingAddress(
              device,
              accountIndex: testCase.accountIndex,
              addressIndex: testCase.addressIndex,
              network: CardanoNetwork.mainnet(),
            );
            print('Derived address: $result');
          } else {
            print('Skipping test as isAppXS is not false');
          }
        });
      }
    });
    group('Should successfully derive enterprise addresses', () {
      final testCases = [
        (
          accountIndex: 0,
          addressIndex: 0,
          expectedResult: 'addr1vy2vzmtlgvjrhkq50rngh8d482zj3l20kyrc6kx4ffl3zfqcrdgvh',
          network: CardanoNetwork.mainnet()
        ),
        (
          accountIndex: 10,
          addressIndex: 0,
          expectedResult: 'addr_test1vpf4jerytynpz59c0ccwgnfps2femgp897j8jc7rg4y466g0v0qvd',
          network: CardanoNetwork.legacyTestnet()
        ),
        (
          accountIndex: 10,
          addressIndex: 10,
          expectedResult: 'addr_test1vzsy262p96rys22ruefh6c9wzt3a4q2hz60f7n4lvqakdqscssrqe',
          network: CardanoNetwork.preprod()
        ),
        (
          accountIndex: 0,
          addressIndex: 10,
          expectedResult: 'addr_test1vqzfjtzrv4jwps470wmgwq7kzjf8cxscz40tq0s32t8muwgd5je78',
          network: CardanoNetwork.preview()
        ),
      ];

      for (final testCase in testCases) {
        test(
            'Derive enterprise address for account index ${testCase.accountIndex} and address index ${testCase.addressIndex}',
            () async {
          try {
            final result = await cardanoApp.deriveEnterpriseAddress(
              device,
              accountIndex: testCase.accountIndex,
              addressIndex: testCase.addressIndex,
              network: testCase.network,
            );
            expect(result, equals(testCase.expectedResult));
            print('Derived enterprise address: $result');
          } catch (e) {
            if (e is LedgerException) {
              print('LedgerException caught: ${e.message}');
            } else {
              rethrow;
            }
          }
        });
      }
    });
  });
}