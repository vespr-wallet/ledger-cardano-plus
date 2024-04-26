import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';

import 'dart:async';

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
      expect(serialResponse.contains('Serial:'), isTrue);
      expect(serialResponse.length, equals(14 + 'Device: ${device.name}\nSerial: '.length));
    });

    test('Should correctly get the semantic version of device and check compatibility', () async {
      try {
        final version = await cardanoApp.getVersion(device);
        final compatibility = VersionCompatibility.checkVersionCompatibility(version);

        print(
            'Device: ${device.name}\nApp Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\nDevelopment Version: ${version.testMode ? "Yes" : "No"}');

        // Check major and minor version
        expect(version.versionMajor, equals(5));
        expect(version.versionMinor, equals(0));

        // Check debug flag
        expect(version.testMode, isFalse);

        // Check compatibility details
        expect(compatibility.isCompatible, isTrue);
        expect(compatibility.recommendedVersion, isNull);
        expect(compatibility.supportsByronAddressDerivation, equals(!version.flags.isAppXS));
        expect(compatibility.supportsMary, isTrue);
        expect(compatibility.supportsCatalystRegistration, isTrue);
        expect(compatibility.supportsCIP36, isFalse);
        expect(compatibility.supportsZeroTtl, isTrue);
        expect(compatibility.supportsPoolRegistrationAsOwner, equals(!version.flags.isAppXS));
        expect(compatibility.supportsPoolRegistrationAsOperator, equals(!version.flags.isAppXS));
        expect(compatibility.supportsPoolRetirement, equals(!version.flags.isAppXS));
        expect(compatibility.supportsNativeScriptHashDerivation, equals(!version.flags.isAppXS));
        expect(compatibility.supportsMultisigTransaction, isTrue);
        expect(compatibility.supportsMint, isTrue);
        expect(compatibility.supportsAlonzo, isTrue);
        expect(compatibility.supportsReqSignersInOrdinaryTx, isTrue);
        expect(compatibility.supportsBabbage, isTrue);
        expect(compatibility.supportsCIP36Vote, isFalse);
        expect(compatibility.supportsConway, isFalse);
      } catch (e) {
        print('Error fetching version: $e');
      }
    });

    test('Complete test', () async {
      print("Tests run");
    });
  });
}
