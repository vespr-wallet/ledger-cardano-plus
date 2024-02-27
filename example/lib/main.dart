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
  CardanoLedgerApp? cardanoApp;
  List<String> accounts = [];
  String versionInfo = ''; 

  @override
  void initState() {
    super.initState();
    cardanoApp = CardanoLedgerApp(ledger);
  }

  void _scanAndFetchAccounts() async {
    await for (final device in ledger.scan()) {
      // Fetch accounts
      final fetchedAccounts = await cardanoApp!.getAccounts(device);
      // Fetch version info
      final version = await cardanoApp!.getVersion(device); // Fetch the version
      setState(() {
        accounts = fetchedAccounts;
        versionInfo = 'App Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}'; 
      });
      break; 
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
              const Text('Fetched Accounts:'),
              ...accounts.map((account) => Text(account)).toList(),
              if (versionInfo.isNotEmpty) Text(versionInfo), 
              ElevatedButton(
                onPressed: () {
                  _scanAndFetchAccounts();
                },
                child: const Text('Scan for Devices'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
