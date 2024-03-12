import 'package:flutter/material.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/models/parsed_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_simple_native_script.dart';
import 'package:ledger_cardano/src/operations/cardano_ledger_operation.dart';

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
  String scriptHashInfo = '';

  void _scanForDevices() async {
    devices.clear();
    await for (final device in ledger.scan()) {
      setState(() {
        devices.add(device);
      });
    }
  }

  Future<void> _testDeriveNativeScriptHash(LedgerDevice device) async {
    try {
      const simpleScript = ParsedSimpleNativeScript.pubKeyDeviceOwned(
        path: [
          0x80000000 + 1852,
          0x80000000 + 1815,
          0x80000000 + 0,
          0,
          0,
        ],
      );
      const script = ParsedNativeScript.simple(simpleScript);

      final hash = await cardanoApp.deriveNativeScriptHash(
        device,
        script,
        NativeScriptHashDisplayFormat.bech32,
      );

      setState(() {
        scriptHashInfo = 'Derived Script Hash: $hash';
      });
    } on LedgerException catch (e) {
      setState(() {
        scriptHashInfo =
            'Error deriving script hash: ${e.message}, Code: ${e.errorCode}';
      });
    } catch (e) {
      setState(() {
        scriptHashInfo = 'Error deriving script hash: ${e.toString()}';
      });
    }
  }

  Future<void> _fetchPublicKey(LedgerDevice device) async {
    try {
      final fetchedAccounts = await cardanoApp.getExtendedPublicKey(
        device,
        request: ExtendedPublicKeyRequest_Byron(),
      );

      setState(() {
        accounts = [
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

  Future<void> _fetchAccount(LedgerDevice device) async {
    try {
      final derivedAddress = await cardanoApp.deriveAddress(device);

      setState(() {
        accounts = ['Address: $derivedAddress'];
        accountsInfo = 'Derived address:\n${accounts.join('\n')}';
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
                          scriptHashInfo = '';
                        });
                        await ledger.connect(device);

                        // await _fetchSerial(device);

                        await _fetchVersion(device);

                        // await _fetchAccountV2(device);
                        // await _fetchPublicKey(device);

                        // await _testDeriveNativeScriptHash(device);
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
                  const Text('Version Info:'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(versionInfo),
                  ),
                ],
                const SizedBox(height: 20),
                if (scriptHashInfo.isNotEmpty) ...[
                  const Text('Script Hash Info:'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(scriptHashInfo),
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
