import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import 'test_utils.dart';

import 'dart:async';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late CardanoLedgerApp cardanoLedgerApp;
  late LedgerDevice device;
  final Completer<void> testCompleter = Completer<void>();
  List<LedgerDevice> devices = [];

  setUpAll(() async {
    var status = await Permission.bluetooth.request();
    if (status.isGranted) {
      print("Bluetooth permission granted.");
      cardanoLedgerApp = await getCardanoLedgerApp();
    } else {
      print("Bluetooth permission denied.");
    }
  });

  tearDownAll(() async {
    await cardanoLedgerApp.ledger.disconnect(device);
    await cardanoLedgerApp.ledger.close(ConnectionType.ble);
    if (!testCompleter.isCompleted) {
      testCompleter.complete();
    }
  });

  Future<void> fetchVersion(LedgerDevice device, CardanoLedgerApp cardanoLedgerApp) async {
    try {
      final version = await cardanoLedgerApp.getVersion(device);
      print('Device: ${device.name}\n'
          'App Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\n'
          'Development Version: ${version.testMode ? "Yes" : "No"}');
    } on LedgerException catch (e) {
      print('Error fetching version: ${e.message}, Code: ${e.errorCode}');
    }
  }

  testWidgets('Should run device tests with manual scan and test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Scan for Ledger Device')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  print("Scan button pressed");
                  devices.clear();
                  try {
                    await for (final device in cardanoLedgerApp.ledger.scan()) {
                      devices.add(device);
                      print("Device scanned: ${device.name}");
                      break;
                    }
                  } catch (e) {
                    print('Error during scan: $e');
                    if (e is TimeoutException) {
                      print("The scan operation timed out. Please check device settings and connection.");
                    }
                  }
                },
                child: const Text('Scan'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (devices.isNotEmpty) {
                    print("Connect button pressed");
                    device = devices.first;
                    print("Connecting to device: ${device.name}");
                    try {
                      print("Attempting to connect to device: ${device.name}");
                      await cardanoLedgerApp.ledger.connect(device);
                      await fetchVersion(device, cardanoLedgerApp);

                      print("Device connected: ${device.name}");
                    } catch (e) {
                      print('Error during connect: $e');
                    }
                  } else {
                    print("No devices found to connect.");
                  }
                },
                child: const Text('Connect'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  print("Test button pressed");
                  try {
                    print("Tests run");
                    testCompleter.complete();
                  } catch (e) {
                    print('Error during testing: $e');
                  }
                },
                child: const Text('Run Tests'),
              ),
            ],
          ),
        ),
      ),
    ));

    await tester.tap(find.widgetWithText(ElevatedButton, 'Scan'));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 5));

    await tester.tap(find.widgetWithText(ElevatedButton, 'Connect'));
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 5));

    await testCompleter.future;
  });
}
