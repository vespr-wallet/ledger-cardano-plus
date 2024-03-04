import 'package:flutter/material.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:ledger_cardano/src/models/extended_public_key.dart';

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
  String accountsInfo = '';

  void _scanForDevices() async {
    devices.clear();
    await for (final device in ledger.scan()) {
      setState(() {
        devices.add(device);
      });
    }
  }

  Future<void> _fetchAccount(LedgerDevice device) async {
    try {
      final fetchedAccounts = await cardanoApp.getExtendedPublicKey(
        device,
        request: ExtendedPublicKeyRequest_Shelley(accountIndex: 0),
      );

      setState(() {
        accounts = [
          'Account Type: ${fetchedAccounts.accountType}',
          'publicKeyHex: \'${fetchedAccounts.publicKeyHex}\',\n'
              'chainCodeHex: \'${fetchedAccounts.chainCodeHex}\''
        ];
        accountsInfo = 'Fetched Accounts:\n${accounts.join('\n')}';
      });
      print('Fetched Accounts: ${accounts.join('\n')}');
    } on LedgerException catch (e) {
      setState(() {
        accountsInfo =
            'Error fetching accounts: ${e.message}, Code: ${e.errorCode}';
      });
      print('Error fetching accounts: ${e.message}, Code: ${e.errorCode}');
    } catch (e) {
      setState(() {
        accountsInfo = 'Generic Error fetching accounts: ${e.toString()}';
      });
      print('Generic Error fetching accounts: ${e.toString()}');
    }
  }

  Future<void> _fetchSerial(LedgerDevice device) async {
    try {
      final serial = await cardanoApp.getSerialNumber(device);
      setState(() {
        versionInfo = 'Device: ${device.name}\n'
            'Serial: $serial\n';
      });

      print('Serial: $serial');
    } on LedgerException catch (e) {
      setState(() {
        versionInfo =
            'Error fetching version: ${e.message}, Code: ${e.errorCode}';
      });
    }
  }

  Future<void> _fetchVersion(LedgerDevice device) async {
    try {
      final version = await cardanoApp.getVersion(device);
      setState(() {
        versionInfo = 'Device: ${device.name}\n'
            'App Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\n'
            'Development Version: ${version.testMode ? "Yes" : "No"}';
      });
    } on LedgerException catch (e) {
      setState(() {
        versionInfo =
            'Error fetching version: ${e.message}, Code: ${e.errorCode}';
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _scanForDevices,
                  child: const Text('Scan for Devices'),
                ),
                const SizedBox(height: 20),
                const Text('Available Devices:'),
                ...devices.map((device) => ListTile(
                      title: Text(device.name),
                      onTap: () async {
                        setState(() {
                          versionInfo = 'Connecting...';
                          accountsInfo = '';
                        });
                        await ledger.connect(device);
                        // await _fetchAccount(device);
                        // await _fetchSerial(device);
                        await _fetchVersion(device);
                      },
                    )),
                const SizedBox(height: 20),
                if (accounts.isNotEmpty || accountsInfo.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(accountsInfo),
                  ),
                ],
                const SizedBox(height: 20),
                if (versionInfo.isNotEmpty) ...[
                  const Text('Device Info:'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(versionInfo),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
