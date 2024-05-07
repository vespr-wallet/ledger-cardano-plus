import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';

import 'dart:async';

import 'test_utils.dart';

Future<String> _fetchSerial(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    final serial = await cardanoApp.getSerialNumber(device);
    print('Serial: $serial');
    return 'Device: ${device.name}\nSerial: $serial';
  } on LedgerException catch (e) {
    return 'Error fetching serial: ${e.message}, Code: ${e.errorCode}';
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Cardano Ledger App Tests', () {
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

    testWidgets('Should correctly get the serial number of the device', (WidgetTester tester) async {
      final serialResponse = await _fetchSerial(cardanoApp, device);
      expectVespr(serialResponse.contains('Serial:'), isTrue);
      expectVespr(serialResponse.length, equals(14 + 'Device: ${device.name}\nSerial: '.length));
    });

    test('Should correctly get the semantic version of device and check compatibility', () async {
      try {
        final version = await cardanoApp.getVersion(device);
        final compatibility = VersionCompatibility.checkVersionCompatibility(version);

        print(
            'Device: ${device.name}\nApp Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\nDevelopment Version: ${version.testMode ? "Yes" : "No"}');

        // Check major and minor version
        expectVespr(version.versionMajor, equals(5));
        expectVespr(version.versionMinor, equals(0));

        // Check debug flag
        expectVespr(version.testMode, isFalse);

        // Check compatibility details
        expectVespr(compatibility.isCompatible, isTrue);
        expectVespr(compatibility.recommendedVersion, isNull);
        expectVespr(compatibility.supportsByronAddressDerivation, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsMary, isTrue);
        expectVespr(compatibility.supportsCatalystRegistration, isTrue);
        expectVespr(compatibility.supportsCIP36, isFalse);
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
        expectVespr(compatibility.supportsCIP36Vote, isFalse);
        expectVespr(compatibility.supportsConway, isFalse);
      } catch (e) {
        print('Error fetching version: $e');
      }
    });

    test('Complete test', () async {
      print("Tests run");
    });
  });
}
