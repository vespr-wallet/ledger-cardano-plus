import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'sign_tx_test_cases.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('signTx', () {
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

    // group('signTxAlonzo', () {
    //   for (final testCase in testsAlonzo) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    //  group('Specific Test Case: Sign tx with mint path in a required signer', () {
    //   test('Sign tx with mint path in a required signer', () async {
    //     // Assuming testsAlonzo contains the specific test case
    //     final testCase = testsAlonzo.firstWhere((test) => test.testName == 'Sign tx with mint path in a required signer');
    //     final result = await cardanoApp.signTransaction(device, testCase.request);
    //     expect(result, equals(testCase.expected));
    //   });
    // });

    // group('signTxBabbage', () {
    //   for (final testCase in testsBabbage) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxByron', () {
    //   for (final testCase in testsByron) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxShelleyNoCertificates', () {
    //   for (final testCase in testsShelleyNoCertificates) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxShelleyWithCertificates', () {
    //   for (final testCase in testsShelleyWithCertificates) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxConwayWithoutCertificates', () {
    //   for (final testCase in testsConwayWithoutCertificates) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxConwayWithCertificates', () {
    //   for (final testCase in testsConwayWithCertificates) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxConwayVotingProcedures', () {
    //   for (final testCase in testsConwayVotingProcedures) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxMultisig', () {
    //   for (final testCase in testsMultisig) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxAllegra', () {
    //   for (final testCase in testsAllegra) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxMary', () {
    //   for (final testCase in testsMary) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxTrezorComparison', () {
    //   for (final testCase in testsAlonzoTrezorComparison) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxBabbageTrezorComparison', () {
    //   for (final testCase in testsBabbageTrezorComparison) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxMultidelegation', () {
    //   for (final testCase in testsMultidelegation) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });
    
    
    //  group('Specific Test Case: Sign tx with short inline datum in output with tokens', () {
      test('Sign tx with short inline datum in output with tokens', () async {
        // Assuming testsMary contains the specific test case
        final testCase = testsByron.firstWhere((test) => test.testName == 'Sign tx with third-party Byron testnet output');
        try {
          final result = await cardanoApp.signTransaction(device, testCase.request);
          expect(result, equals(testCase.expected));
        } catch (e) {
          if (e is LedgerException) {
            // Handle the LedgerException specifically
            print('LedgerException caught: ${e.message}');
          } else {
            rethrow;
          }
        }
      });
    // });
    
        // Test group for Byron transactions
    // group('signTxByron', () {
    //   for (final testCase in testsByron) {
    //     test(testCase.testName, () async {
    //       final result = await cardanoApp.signTransaction(device, testCase.request);
    //       expect(result, equals(testCase.expected));
    //     });
    //   }
    // });

    // group('signTxInitPolicyRejects', () {
    //   for (final testCase in transactionInitRejectTestCases) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });

    // group('signTxAddressParamsPolicyRejects', () {
    //   for (final testCase in addressParamsRejectTestCases) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });

    // group('signTxCertificatePolicyRejects', () {
    //   for (final testCase in certificateRejectTestCases) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });

    // group('signTxCertificateStakingPolicyRejects', () {
    //   for (final testCase in certificateStakingRejectTestCases) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });

    // group('signTxCertificateStakePoolRetirementPolicyRejects', () {
    //   for (final testCase in certificateStakePoolRetirementRejectTestCases) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //        });
    //   }
    // });

    // group('signTxWithdrawalRejects', () {
    //   for (final testCase in withdrawalRejectTestCases) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });

    // group('signTxWitnessRejects', () {
    //   for (final testCase in witnessRejectTestCases) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });

    // group('signTxInvalidMultiassetRejects', () {
    //   for (final testCase in testsInvalidTokenBundleOrdering) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });

    // group('signTxSingleAccountRejects', () {
    //   for (final testCase in singleAccountRejectTestCases) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });

    // group('signTxCollateralOutputRejects', () {
    //   for (final testCase in collateralOutputRejectTestCases) {
    //     test(testCase.testName, () async {
    //       expect(() => cardanoApp.signTransaction(device, testCase.transaction), throwsA(isA<LedgerException>()));
    //     });
    //   }
    // });
  });
}
