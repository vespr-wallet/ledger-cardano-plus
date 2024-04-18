



void main() {
  // IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // late CardanoLedgerApp cardanoLedgerApp;
  // late LedgerDevice device;
  // final Completer<void> testCompleter = Completer<void>();
  // List<LedgerDevice> devices = [];

  // setUpAll(() async {
  //   // Request Bluetooth permission
  //   var status = await Permission.bluetooth.request();
  //   if (status.isGranted) {
  //     print("Bluetooth permission granted.");
  //     cardanoLedgerApp = await getCardanoLedgerApp();
  //   } else {
  //     print("Bluetooth permission denied.");
  //     // Handle the case where Bluetooth permission is not granted
  //   }
  // });

  // tearDownAll(() async {
  //   await cardanoLedgerApp.ledger.disconnect(device);
  //   await cardanoLedgerApp.ledger.close(ConnectionType.ble);
  //   if (!testCompleter.isCompleted) {
  //     testCompleter.complete();
  //   }
  // });

  // testWidgets('Should run device tests with manual scan and test', (WidgetTester tester) async {
  //   await tester.pumpWidget(MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(title: const Text('Scan for Ledger Device')),
  //       body: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             ElevatedButton(
  //               onPressed: () async {
  //                 print("Scan button pressed");
  //                 devices.clear();
  //                 try {
  //                   await for (final device in cardanoLedgerApp.ledger.scan()) {
  //                     devices.add(device);
  //                     print("Device scanned: ${device.name}");
  //                     break; // Stop after the first device is found
  //                   }
  //                 } catch (e) {
  //                   print('Error during scan: $e');
  //                   if (e is TimeoutException) {
  //                     print("The scan operation timed out. Please check device settings and connection.");
  //                   }
  //                 }
  //               },
  //               child: const Text('Scan'),
  //             ),
  //             const SizedBox(height: 20),
  //             ElevatedButton(
  //               onPressed: () async {
  //                 if (devices.isNotEmpty) {
  //                   print("Connect button pressed");
  //                   device = devices.first; // Connect to the first available device
  //                   print("Connecting to device: ${device.name}");
  //                   try {
  //                     print("Attempting to connect to device: ${device.name}");
  //                     await cardanoLedgerApp.ledger.connect(device).timeout(const Duration(seconds: 30)); // Increased timeout to 30 seconds
  //                     print("Device connected: ${device.name}");
  //                   } catch (e) {
  //                     print('Error during connect: $e');
  //                   }
  //                 } else {
  //                   print("No devices found to connect.");
  //                 }
  //               },
  //               child: const Text('Connect'),
  //             ),
  //             const SizedBox(height: 20),
  //             ElevatedButton(
  //               onPressed: () async {
  //                 print("Test button pressed");
  //                 try {
  //                   await cardanoLedgerApp.runTests(device);
  //                   print("Tests run");
  //                   testCompleter.complete(); // Complete the test when done
  //                 } catch (e) {
  //                   print('Error during testing: $e');
  //                 }
  //               },
  //               child: const Text('Run Tests'),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   ));

  //   // Tap the scan button
  //   await tester.tap(find.widgetWithText(ElevatedButton, 'Scan'));
  //   await tester.pumpAndSettle();
  //   await Future.delayed(const Duration(seconds: 5)); // 5 seconds delay

  //   // Tap the connect button
  //   await tester.tap(find.widgetWithText(ElevatedButton, 'Connect'));
  //   await tester.pumpAndSettle();
  //   await Future.delayed(const Duration(seconds: 5)); // 5 seconds delay

  //   // Tap the run tests button
  //   await tester.tap(find.widgetWithText(ElevatedButton, 'Run Tests'));
  //   await tester.pumpAndSettle();
  //   await Future.delayed(const Duration(seconds: 5)); // 5 seconds delay

  //   // Wait for the test to complete
  //   await testCompleter.future;
  // });
}
