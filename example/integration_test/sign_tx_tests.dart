import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import 'cases/sign_tx_alonzo.dart';
import 'cases/sign_tx_babbage.dart';
import 'cases/sign_tx_babbage_trezor_comparison.dart';
import 'cases/sign_tx_conway_no_certs.dart';
import 'cases/sign_tx_conway_voting_procedures.dart';
import 'cases/sign_tx_conway_with_certs.dart';
import 'cases/sign_tx_mary.dart';
import 'cases/sign_tx_multi_delegation.dart';
import 'cases/sitn_tx_alonzo_trezor_comparison.dart';
import 'sign_tx_test_cases.dart';
import 'test_utils.dart';

extension SignTxTestX on List<SignTxTestCase> {
  void testGroup({
    required String groupName,
    required CardanoVersion appVersion,
    required CardanoLedgerConnection cardanoApp,
  }) => group(groupName, () {
    for (final testCase in this) {
      versionConstrainedTest(
        testCase.testName,
        appVersion: appVersion,
        minSupportedVersion: testCase.minSupportedVersion,
        body: () async {
          final result = await cardanoApp.signTransaction(testCase.request);
          expectVespr(result, equals(testCase.expected));
        },
      );
    }
  });
}

void main() async {
  CardanoLedger.debugPrintEnabled = true;
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final CardanoLedgerConnection cardanoApp = await establishCardanoConnection();
  final CardanoVersion appVersion = await cardanoApp.getVersion();
  print('Connected to device: ${cardanoApp.device.name}');

  group('signTx', () {
    testsConwayVotingProcedures.testGroup(
      groupName: 'signTxConwayVotingProcedures',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsMultidelegation.testGroup(
      groupName: 'signTxMultidelegation',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsConwayWithCertificates.testGroup(
      groupName: 'signTxConwayWithCertificates',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsAlonzo.testGroup(
      groupName: 'signTxAlonzo',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsBabbage.testGroup(
      groupName: 'signTxBabbage',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsByron.testGroup(
      groupName: 'signTxByron',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsShelleyNoCertificates.testGroup(
      groupName: 'signTxShelleyNoCertificates',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsShelleyWithCertificates.testGroup(
      groupName: 'signTxShelleyWithCertificates',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsConwayWithoutCertificates.testGroup(
      groupName: 'signTxConwayWithoutCertificates',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsMultisig.testGroup(
      groupName: 'signTxMultisig',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsAllegra.testGroup(
      groupName: 'signTxAllegra',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsMary.testGroup(
      groupName: 'signTxMary',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsAlonzoTrezorComparison.testGroup(
      groupName: 'signTxTrezorComparison',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsBabbageTrezorComparison.testGroup(
      groupName: 'signTxBabbageTrezorComparison',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );

    testsByron.testGroup(
      groupName: 'signTxByron',
      appVersion: appVersion,
      cardanoApp: cardanoApp,
    );
  });
}
