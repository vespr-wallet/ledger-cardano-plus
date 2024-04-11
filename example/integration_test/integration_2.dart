import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

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

    testWidgets('Fetch serial number from connected device', (WidgetTester tester) async {
      await _fetchSerial(cardanoApp, device);
    });

    test('Fetch version from connected device', () async {
      try {
        final version = await cardanoApp.getVersion(device);
        print(
            'Device: ${device.name}\nApp Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\nDevelopment Version: ${version.testMode ? "Yes" : "No"}');
      } catch (e) {
        print('Error fetching version: $e');
      }
    });

    test('Complete test', () async {
      print("Tests run");
    });
  });
}
