// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

import 'byron_address_test_cases.dart';
import 'shelley_address_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Cardano Ledger App Address Derivation Tests', () {
    late CardanoLedgerConnection cardanoApp;
    bool? isAppXS;

    setUpAll(() async {
      cardanoApp = await establishCardanoConnection();
      print('Connected to device: ${cardanoApp.device.name}');
      isAppXS = (await cardanoApp.getVersion()).flags.isAppXS;
    });

    group('Should successfully derive Byron address - isAppXS true', () {
      for (var testCase in byronTestCases) {
        test(testCase.testName, () async {
          if (isAppXS == true) {
            expectVespr(
              () => deriveAddress(cardanoApp, testCase.network, testCase.addressParams),
              throwsA(isA<LedgerException>()),
            );
          } else {
            markTestSkipped('Skipping test as isAppXS is not true');
          }
        });
      }
    });

    group('Should successfully derive Byron address - isAppXS false', () {
      for (var testCase in byronTestCases) {
        test(testCase.testName, () async {
          if (isAppXS == false) {
            final result = await deriveAddress(cardanoApp, testCase.network, testCase.addressParams);
            expectVespr(result, equals(testCase.expectedResult));
          } else {
            markTestSkipped("Skipping test as isAppXS is not false");
          }
        });
      }
    });

    group('Should successfully derive Shelley address - isAppXS true', () {
      for (var testCase in shelleyTestCases) {
        test(testCase.testName, () async {
          if (isAppXS == true) {
            final result = await deriveAddress(cardanoApp, testCase.network, testCase.addressParams);
            expectVespr(result, equals(testCase.expectedResult));
          } else {
            markTestSkipped('Skipping test as isAppXS is not true');
          }
        });
      }
    });

    group('Should successfully derive Shelley address - isAppXS false', () {
      for (var testCase in shelleyTestCases) {
        test(testCase.testName, () async {
          if (isAppXS == false) {
            final appVersion = await cardanoApp.getVersion();
            if (testCase.minSupportedVersion != null &&
                appVersion.versionCode < testCase.minSupportedVersion!.versionCode) {
              markTestSkipped(
                'Skipping test as app version ${appVersion.versionName} is not supported for ${testCase.minSupportedVersion!.versionName}',
              );
              return;
            }
            final result = await deriveAddress(cardanoApp, testCase.network, testCase.addressParams);
            expectVespr(result, equals(testCase.expectedResult));
          } else {
            markTestSkipped('Skipping test as isAppXS is not false');
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
              expectVespr(
                () => cardanoApp.deriveChangeAddress(
                  accountIndex: testCase.accountIndex,
                  addressIndex: testCase.addressIndex,
                  network: CardanoNetwork.mainnet(),
                ),
                throwsA(isA<LedgerException>()),
              );
            } else {
              markTestSkipped('Skipping test as isAppXS is not true');
            }
          },
        );
      }
    });

    group('Should successfully derive change addresses - isAppXS false', () {
      final testCases = [
        (
          accountIndex: 0,
          addressIndex: 0,
          expectedResult:
              'addr1qx666n5qs5c8gjqjfr2v4c3ny209ng5s0rsthnuels0el0sayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwq6avqke',
        ),
        (
          accountIndex: 0,
          addressIndex: 10,
          expectedResult:
              'addr1qxc0k6hvzxus5hqeakxuu36enw9jmmhxpqwz7wq7masapnsayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwq48vmjg',
        ),
        (
          accountIndex: 10,
          addressIndex: 0,
          expectedResult:
              'addr1q80w2mc2r5wf2vxln90mkke9kd55qwlfrc3h8glnthncqtg72d76aeaa0d7ag4qrvn8gpcymlsg8fapzvcu3s6k7ncgq4eqdg4',
        ),
        (
          accountIndex: 10,
          addressIndex: 10,
          expectedResult:
              'addr1q85rdqns5vnqyg7q7hvavs0n80geh78jygsn2f0mp23fv2c72d76aeaa0d7ag4qrvn8gpcymlsg8fapzvcu3s6k7ncgqjpxnv6',
        ),
      ];

      for (final testCase in testCases) {
        test(
          'Derive address for account index ${testCase.accountIndex} and address index ${testCase.addressIndex} - isAppXS false',
          () async {
            if (isAppXS == false) {
              expectVespr(
                cardanoApp.deriveChangeAddress(
                  accountIndex: testCase.accountIndex,
                  addressIndex: testCase.addressIndex,
                  network: CardanoNetwork.mainnet(),
                ),
                equals(testCase.expectedResult),
              );
            } else {
              markTestSkipped('Skipping test as isAppXS is not false');
            }
          },
        );
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
              expectVespr(
                () => cardanoApp.deriveStakingAddress(
                  accountIndex: testCase.accountIndex,
                  addressIndex: testCase.addressIndex,
                  network: CardanoNetwork.mainnet(),
                ),
                throwsA(isA<LedgerException>()),
              );
            } else {
              markTestSkipped('Skipping test as isAppXS is not true');
            }
          },
        );
      }
    });

    group('Should successfully derive stake addresses - isAppXS false', () {
      final testCases = [
        (
          accountIndex: 0,
          addressIndex: 0,
          expectedResult: 'stake1uywjy7h05jmhx9y3wzy94td6xz4txynuccgam0zfn800v8qq33z29',
        ),
        (
          accountIndex: 10,
          addressIndex: 0,
          expectedResult: 'stake1uy09xldwu77hklw52spkfn5quzdlcyr57s3xvwgcdt0fuyq2c0hwn',
        ),
      ];

      for (final testCase in testCases) {
        test(
          'Derive stake address for account index ${testCase.accountIndex} and address index ${testCase.addressIndex} - isAppXS false',
          () async {
            if (isAppXS == false) {
              expectVespr(
                cardanoApp.deriveStakingAddress(
                  accountIndex: testCase.accountIndex,
                  addressIndex: testCase.addressIndex,
                  network: CardanoNetwork.mainnet(),
                ),
                equals(testCase.expectedResult),
              );
            } else {
              markTestSkipped('Skipping test as isAppXS is not false');
            }
          },
        );
      }
    });
    group('Should successfully derive enterprise addresses', () {
      final testCases = [
        (
          accountIndex: 0,
          addressIndex: 0,
          expectedResult: 'addr1vy2vzmtlgvjrhkq50rngh8d482zj3l20kyrc6kx4ffl3zfqcrdgvh',
          network: CardanoNetwork.mainnet(),
        ),
        (
          accountIndex: 10,
          addressIndex: 0,
          expectedResult: 'addr_test1vpf4jerytynpz59c0ccwgnfps2femgp897j8jc7rg4y466g0v0qvd',
          network: CardanoNetwork.legacyTestnet(),
        ),
        (
          accountIndex: 10,
          addressIndex: 10,
          expectedResult: 'addr_test1vzsy262p96rys22ruefh6c9wzt3a4q2hz60f7n4lvqakdqscssrqe',
          network: CardanoNetwork.preprod(),
        ),
        (
          accountIndex: 0,
          addressIndex: 10,
          expectedResult: 'addr_test1vqzfjtzrv4jwps470wmgwq7kzjf8cxscz40tq0s32t8muwgd5je78',
          network: CardanoNetwork.preview(),
        ),
      ];

      for (final testCase in testCases) {
        test(
          'Derive enterprise address for account index ${testCase.accountIndex} and address index ${testCase.addressIndex}',
          () async {
            expectVespr(
              cardanoApp.deriveEnterpriseAddress(
                accountIndex: testCase.accountIndex,
                addressIndex: testCase.addressIndex,
                network: testCase.network,
              ),
              equals(testCase.expectedResult),
            );
          },
        );
      }
    });
  });
}
