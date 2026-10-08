import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

import 'test_utils.dart';



Future<String> _fetchSerial(CardanoLedgerConnection cardanoApp) async {
  try {
    final serial = await cardanoApp.getSerialNumber();
    print('Serial: $serial');
    return 'Device: ${cardanoApp.device.name}\nSerial: $serial';
  } on LedgerDeviceException catch (e) {
    return 'Error fetching serial: ${e.message}, Code: ${e.errorCode}';
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Cardano Ledger App Tests', () {
    late CardanoLedgerConnection cardanoApp;

    setUpAll(() async {
      cardanoApp = await establishCardanoConnection();
      print('Connected to device: ${cardanoApp.device.name}');
    });

    tearDownAll(() async {
      await cardanoApp.disconnect();
    });

    testWidgets('Should correctly get the serial number of the device', (WidgetTester tester) async {
      final serialResponse = await _fetchSerial(cardanoApp);
      expectVespr(serialResponse.contains('Serial:'), isTrue);
      expectVespr(serialResponse.length, equals(14 + 'Device: ${cardanoApp.device.name}\nSerial: '.length));
    }, timeout: testTimeout);

    test('Should correctly get the semantic version of device and check compatibility', () async {
      try {
        final version = await cardanoApp.getVersion();
        final compatibility = VersionCompatibility.checkVersionCompatibility(version);

        print(
          'Device: ${cardanoApp.device.name}\n'
          'App Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\n'
          'Development Version: ${version.testMode ? "Yes" : "No"}',
        );

        expectVespr(version.versionMajor, anyOf(equals(7), equals(8)));

        // Check debug flag
        expectVespr(version.testMode, isFalse);

        // Flags present in both v7 and v8
        expectVespr(compatibility.isCompatible, isTrue);
        expectVespr(compatibility.recommendedVersion, isNull);
        expectVespr(compatibility.supportsByronAddressDerivation, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsMary, isTrue);
        expectVespr(compatibility.supportsCatalystRegistration, isTrue);
        expectVespr(compatibility.supportsCIP36, isTrue);
        expectVespr(compatibility.supportsZeroTtl, isTrue);
        expectVespr(compatibility.supportsPoolRegistrationAsOwner, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsPoolRegistrationAsOperator, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsPoolRetirement, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsNativeScriptHashDerivation, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsMultisigTransaction, isTrue);
        expectVespr(compatibility.supportsMint, isTrue);
        expectVespr(compatibility.supportsAlonzo, isTrue);
        expectVespr(compatibility.supportsReqSignersInOrdinaryTx, isTrue);
        expectVespr(compatibility.supportsBabbage, isTrue);
        expectVespr(compatibility.supportsCIP36Vote, isTrue);
        expectVespr(compatibility.supportsConway, isTrue);
        expectVespr(compatibility.supportsMessageSigning, isTrue);

        // v8-only flags
        final isV8 = version.versionMajor >= 8;
        expectVespr(compatibility.supportsCombinedCerts, equals(isV8));
        expectVespr(compatibility.supportsUnrestrictedTransaction, equals(isV8));
        expectVespr(compatibility.supportsMultipleVoters, equals(isV8));
        expectVespr(compatibility.supportsMultipleVotesPerVoter, equals(isV8));
      } catch (e, st) {
        fail('Error fetching version: $e\n$st');
      }
    }, timeout: testTimeout);

    test('Complete test', () async {
      print("Tests run");
    }, timeout: testTimeout);
  });
}
