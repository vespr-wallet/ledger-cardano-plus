import 'package:flutter/material.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Ledger ledger = Ledger(
    options: LedgerOptions(maxScanDuration: const Duration(seconds: 5)),
  );
  late final CardanoLedgerApp cardanoApp = CardanoLedgerApp(ledger);
  List<LedgerDevice> devices = []; 
  List<String> accounts = [];
  String versionInfo = '';

  void _scanForDevices() async {
    devices.clear(); // Clear existing devices before scanning
    await for (final device in ledger.scan()) {
      setState(() {
        devices.add(device); // Add scanned devices to the list
      });
    }
  }

  void _fetchAccountsAndVersion(LedgerDevice device) async {
    try {
      // Fetch accounts
      final fetchedAccounts = await cardanoApp.getAccounts(device);
      // Fetch version info
      final version = await cardanoApp.getVersion(device);
      setState(() {
        accounts = fetchedAccounts;
        versionInfo = 'Device: ${device.name}\nApp Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}';
      });
    } on LedgerException catch (e) {
      setState(() {
        versionInfo = 'Error: ${e.message}, Code: ${e.errorCode}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cardano Ledger Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: _scanForDevices,
                child: const Text('Scan for Devices'),
              ),
              const SizedBox(height: 20), // Add some spacing
              const Text('Available Devices:'),
              ...devices.map((device) => ElevatedButton(
                    onPressed: () => _fetchAccountsAndVersion(device),
                    child: Text(device.name),
                  )),
              if (accounts.isNotEmpty) const Text('Fetched Accounts:'),
              ...accounts.map((account) => Text(account)),
              if (versionInfo.isNotEmpty) Text(versionInfo),
            ],
          ),
        ),
      ),
    );
  }
}