import 'dart:async';
import 'dart:typed_data';

import 'package:example/widgets/available_devices.dart';
import 'package:flutter/material.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/models/parsed_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_simple_native_script.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/models/parsed_complex_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_operational_certificate.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/models/parsed_signing_request.dart';
import 'package:ledger_cardano/src/models/signed_transaction_data.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/parsed_input.dart';
import 'package:ledger_cardano/src/models/transaction_signing_mode.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';

const _awaitingLedgerResponse = '[Awaiting Ledger Response...]';

void main() {
  CardanoLedgerApp.debugPrintEnabled = true;
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: MyApp(),
          ),
        ),
      ),
    );
  }
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

  bool connecting = false;
  String? error;
  LedgerDevice? selectedDevice;
  String? resultTitle;
  String? resultData;

  List<String> accounts = [];
  String versionInfo = '';
  String accountsInfo = '';
  String scriptHashInfo = '';
  String signatureHex = '';
  String serialInfo = '';
  String publicKeyInfo = '';

  void _onOperationRequested({
    required String operation,
    required FutureOr<String> Function() invoker,
  }) async {
    try {
      resultTitle = operation;
      resultData = _awaitingLedgerResponse;

      setState(() {});

      resultData = await invoker();
    } catch (e) {
      resultData = 'Not Handled Error: ${e.toString()}';
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedDevice = this.selectedDevice;
    final error = this.error;

    if (connecting) {
      return const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Connecting to Ledger Device...',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            CircularProgressIndicator(),
          ],
        ),
      );
    }

    if (selectedDevice == null || error != null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: _onScanForLedgerDevicesPressed,
              child: const Text('Scan for Ledger Devices'),
            ),
            if (error != null)
              Text(
                'Error connecting to selected device\n$error',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              )
          ],
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Connected to ${selectedDevice.name}\n${selectedDevice.id}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(),
        const SizedBox(height: 8),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: [
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Reset",
                invoker: () async {
                  final result = _reset(cardanoApp, selectedDevice);
                  await ledger.disconnect(selectedDevice);
                  setState(() {
                    this.selectedDevice = null;
                    this.error = null;
                    connecting = false;
                  });

                  return result;
                },
              ),
              child: const Text('Reset'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch Serial Number",
                invoker: () => _fetchSerial(cardanoApp, selectedDevice),
              ),
              child: const Text('Fetch Serial Number'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch App Version",
                invoker: () => _fetchVersion(cardanoApp, selectedDevice),
              ),
              child: const Text('Fetch App Version'),
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            constraints: const BoxConstraints(
              minWidth: double.infinity,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: AnimatedSize(
              duration: const Duration(milliseconds: 300),
              // clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(resultTitle ?? "[Operation]", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Divider(),
                  const SizedBox(height: 4),
                  Text(resultData ?? "[Ledger Result]"),
                  if (resultData == _awaitingLedgerResponse) ...[
                    const SizedBox(height: 16),
                    const CircularProgressIndicator(),
                  ]
                ],
              ),
            ),
          ),
        ),

        // ...devices.map((device) => ListTile(
        //       title: Text(device.name),
        //       onTap: () async {
        //         setState(() {
        //           versionInfo = '';
        //           accountsInfo = '';
        //           scriptHashInfo = '';
        //           signatureHex = '';
        //           serialInfo = '';
        //           publicKeyInfo = '';
        //         });

        //         await ledger.connect(device);
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(
        //             content: Text("Connected to Ledger Device"),
        //           ),
        //         );

        //         await Future.delayed(const Duration(seconds: 1));
        //         // Read the serial number of the ledger device
        //         await _fetchSerial(device);
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(
        //             content: Text("Fetched Serial Number from Ledger"),
        //           ),
        //         );

        //         await Future.delayed(const Duration(seconds: 3));
        //         // Read Ledger's Cardano app version
        //         await _fetchVersion(device);
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(
        //             content: Text("Fetched Cardano App Version from Ledger"),
        //           ),
        //         );

        //         await Future.delayed(const Duration(seconds: 3));
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(
        //             content: Text("Fetching Cardano Wallet Public Key"),
        //           ),
        //         );
        //         // Fetch extended public key for the wallet
        //         await _fetchPublicKey(device);

        //         await Future.delayed(const Duration(seconds: 3));
        //         // Fetch receive/change/staking addresses for the wallet
        //         await _fetchAccount(device);

        //         await Future.delayed(const Duration(seconds: 2));
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           const SnackBar(
        //             content: Text("Signing Cardano Transaction"),
        //           ),
        //         );
        //         await Future.delayed(const Duration(seconds: 3));
        //         // Approve/sign transactions (and return witnesses)
        //         await _testSignTransactionWithoutOutputs(device);
        //       },
        //     )),
        // const SizedBox(height: 20),
        // if (serialInfo.isNotEmpty && versionInfo.isEmpty) ...[
        //   const Text('Serial Info:'),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text(serialInfo),
        //   ),
        // ],
        // const SizedBox(height: 20),
        // if (versionInfo.isNotEmpty && publicKeyInfo.isEmpty) ...[
        //   const Text('App Version Info:'),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text(versionInfo),
        //   ),
        // ],
        // const SizedBox(height: 20),
        // if (publicKeyInfo.isNotEmpty && accountsInfo.isEmpty) ...[
        //   const Text('Public Key Info:'),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text(publicKeyInfo),
        //   ),
        // ],
        // const SizedBox(height: 20),
        // if (accountsInfo.isNotEmpty && signatureHex.isEmpty) ...[
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text(accountsInfo),
        //   ),
        // ],
      ],
    );
  }

  void _onScanForLedgerDevicesPressed() async {
    final selectedLedgerDevice = await showAdaptiveDialog<LedgerDevice>(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(content: AvailableDevices(ledger: ledger)),
    );
    if (selectedLedgerDevice != null) {
      setState(() => connecting = true);
      try {
        await ledger.connect(selectedLedgerDevice);
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Connected"),
            duration: Duration(seconds: 1),
          ),
        );
        setState(() {
          connecting = false;
          error = null;
          selectedDevice = selectedLedgerDevice;
        });
      } catch (e) {
        setState(() {
          connecting = false;
          error = e.toString();
          selectedDevice = null;
        });
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Failed to connect"),
            duration: Duration(seconds: 1),
          ),
        );
      }
    }
  }

  Future<void> _testDeriveNativeScriptHash(LedgerDevice device) async {
    try {
      final simpleScript = ParsedSimpleNativeScript.pubKeyDeviceOwned(
        path: [
          0x80000000 + 1852,
          0x80000000 + 1815,
          0x80000000 + 0,
          0,
          0,
        ],
      );

      final script = ParsedNativeScript.simple(simpleScript);

      final hash = await cardanoApp.deriveNativeScriptHash(
        device,
        script,
        NativeScriptHashDisplayFormat.bech32,
      );

      setState(() {
        scriptHashInfo = 'Derived Script Hash: $hash';
      });
      print('Derived Script Hash: $hash');
    } on LedgerException catch (e) {
      setState(() {
        scriptHashInfo = 'Error deriving script hash: ${e.message}, Code: ${e.errorCode}';
      });
    } catch (e) {
      setState(() {
        scriptHashInfo = 'Error deriving script hash: ${e.toString()}';
      });
      print('Error deriving script hash: ${e.toString()}');
    }
  }

  Future<void> _testDeriveComplexNativeScriptHash(LedgerDevice device) async {
    try {
      // Constructing the complex script
      final complexScript = ParsedNativeScript.complex(
        ParsedComplexNativeScript.all(scripts: [
          ParsedNativeScript.simple(
            ParsedSimpleNativeScript.pubKeyThirdParty(
              keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
            ),
          ),
          ParsedNativeScript.complex(
            ParsedComplexNativeScript.any(scripts: [
              ParsedNativeScript.simple(
                ParsedSimpleNativeScript.pubKeyThirdParty(
                  keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
                ),
              ),
              ParsedNativeScript.simple(
                ParsedSimpleNativeScript.pubKeyThirdParty(
                  keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
                ),
              ),
            ]),
          ),
          ParsedNativeScript.complex(
            ParsedComplexNativeScript.nOfK(
              requiredCount: 2,
              scripts: [
                ParsedNativeScript.simple(
                  ParsedSimpleNativeScript.pubKeyThirdParty(
                    keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
                  ),
                ),
                ParsedNativeScript.simple(
                  ParsedSimpleNativeScript.pubKeyThirdParty(
                    keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
                  ),
                ),
                ParsedNativeScript.simple(
                  ParsedSimpleNativeScript.pubKeyThirdParty(
                    keyHashHex: 'cecb1d427c4ae436d28cc0f8ae9bb37501a5b77bcc64cd1693e9ae20',
                  ),
                ),
              ],
            ),
          ),
          ParsedNativeScript.simple(
            ParsedSimpleNativeScript.invalidBefore(slot: BigInt.from(100)),
          ),
          ParsedNativeScript.simple(
            ParsedSimpleNativeScript.invalidHereafter(slot: BigInt.from(200)),
          ),
        ]),
      );

      // Deriving the script hash
      final hash = await cardanoApp.deriveNativeScriptHash(
        device,
        complexScript,
        NativeScriptHashDisplayFormat.bech32,
      );

      // Updating the UI state with the derived script hash
      setState(() {
        scriptHashInfo = 'Derived Complex Script Hash: $hash';
      });
      print('Derived Complex Script Hash: $hash');
    } on LedgerException catch (e) {
      setState(() {
        scriptHashInfo = 'Error deriving complex script hash: ${e.message}, Code: ${e.errorCode}';
      });
    } catch (e) {
      setState(() {
        scriptHashInfo = 'Error deriving complex script hash: ${e.toString()}';
      });
      print('Error deriving complex script hash: ${e.toString()}');
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
        publicKeyInfo = 'Fetched Accounts:\n${accounts.join('\n')}';
      });
      print('Fetched Accounts: ${accounts.join('\n')}');
    } on LedgerException catch (e) {
      setState(() {
        publicKeyInfo = 'Error fetching public key: ${e.message}, Code: ${e.errorCode}';
      });
      print('Error fetching public key: ${e.message}, Code: ${e.errorCode}');
    } catch (e) {
      setState(() {
        publicKeyInfo = 'Generic Error fetching public key: ${e.toString()}';
      });
      print('Generic Error fetching public key: ${e.toString()}');
    }
  }

  Future<void> _fetchAccount(LedgerDevice device) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Requesting Staking Address from Ledger"),
        ),
      );
      await Future.delayed(const Duration(seconds: 1));

      final stakingAddress = await cardanoApp.deriveStakingAddress(device);
      setState(() {
        accounts = [
          "Staking Address (1852'/1815'/0'/2/0)\n$stakingAddress",
        ];
        accountsInfo = 'Derived addresses:\n\n${accounts.join('\n\n')}';
      });

      await Future.delayed(const Duration(seconds: 1));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Requesting First Receive Address from Ledger"),
        ),
      );
      await Future.delayed(const Duration(seconds: 1));

      final firstReceiveAddress = await cardanoApp.deriveReceiveAddress(device, addressIndex: 0);
      setState(() {
        accounts = [
          "Staking Address (1852'/1815'/0'/2/0)\n$stakingAddress",
          "First Receive Address (1852'/1815'/0'/1/0)\n$firstReceiveAddress",
        ];
        accountsInfo = 'Derived addresses:\n\n${accounts.join('\n\n')}';
      });

      await Future.delayed(const Duration(seconds: 1));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Requesting First Change Address from Ledger"),
        ),
      );
      await Future.delayed(const Duration(seconds: 1));

      final firstChangeAddress = await cardanoApp.deriveChangeAddress(device, addressIndex: 0);
      setState(() {
        accounts = [
          "Staking Address (1852'/1815'/0'/2/0)\n$stakingAddress",
          "First Receive Address (1852'/1815'/0'/1/0)\n$firstReceiveAddress",
          "First Change Address (1852'/1815'/0'/2/0)\n$firstChangeAddress",
        ];
        accountsInfo = 'Derived addresses:\n\n${accounts.join('\n\n')}';
      });

      await Future.delayed(const Duration(seconds: 1));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Requesting Second Receive Address from Ledger"),
        ),
      );
      await Future.delayed(const Duration(seconds: 1));

      final secondReceiveAddress = await cardanoApp.deriveReceiveAddress(device, addressIndex: 1);
      setState(() {
        accounts = [
          "Staking Address (1852'/1815'/0'/2/0)\n$stakingAddress",
          "First Receive Address (1852'/1815'/0'/1/0)\n$firstReceiveAddress",
          "First Change Address (1852'/1815'/0'/2/0)\n$firstChangeAddress",
          "Second Receive Address (1852'/1815'/0'/1/1)\n$secondReceiveAddress",
        ];
        accountsInfo = 'Derived addresses:\n\n${accounts.join('\n\n')}';
      });

      await Future.delayed(const Duration(seconds: 1));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Requesting Second Change Address from Ledger"),
        ),
      );
      await Future.delayed(const Duration(seconds: 1));

      final secondChangeAddress = await cardanoApp.deriveChangeAddress(device, addressIndex: 1);
      setState(() {
        accounts = [
          "Staking Address (1852'/1815'/0'/2/0)\n$stakingAddress",
          "First Receive Address (1852'/1815'/0'/1/0)\n$firstReceiveAddress",
          "First Change Address (1852'/1815'/0'/2/0)\n$firstChangeAddress",
          "Second Receive Address (1852'/1815'/0'/1/1)\n$secondReceiveAddress",
          "Second Change Address (1852'/1815'/0'/2/1)\n$secondChangeAddress",
        ];
        accountsInfo = 'Derived addresses:\n\n${accounts.join('\n\n')}';
      });

      print('Fetched Accounts: ${accounts.join('\n')}');
    } on LedgerException catch (e) {
      setState(() {
        accountsInfo = 'Error fetching accounts: ${e.message}, Code: ${e.errorCode}';
      });
      print('Error fetching accounts: ${e.message}, Code: ${e.errorCode}');
    } catch (e) {
      setState(() {
        accountsInfo = 'Generic Error fetching accounts: ${e.toString()}';
      });
      print('Generic Error fetching accounts: ${e.toString()}');
    }
  }

  Future<void> _testSignTransactionWithoutOutputs(LedgerDevice device) async {
    try {
      // Constructing the transaction to sign
      final txToSign = ParsedSigningRequest(
        signingMode: OrdinaryTransaction(),
        tx: ParsedTransaction(
          network: CardanoNetwork.mainnet,
          inputs: [
            ParsedInput(
              txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
              outputIndex: 0,
              path: [
                harden + 1852,
                harden + 1815,
                harden + 0,
                0,
                0,
              ],
            ),
          ],
          outputs: [],
          fee: BigInt.parse('42'),
          ttl: BigInt.parse('10'),
        ),
        additionalWitnessPaths: [],
      );

      // Signing the transaction
      final SignedTransactionData signedTx = await cardanoApp.signTransaction(
        device,
        txToSign,
      );

      // Updating the UI state with the signed transaction data
      setState(() {
        signatureHex = 'Signed Transaction: {\n'
            '  txHashHex: \'${signedTx.txHashHex}\',\n'
            '  witnesses: [\n'
            '    {\n'
            '      path: ${signedTx.witnesses.first.path},\n' // Assuming path is an array you'd like to display differently
            '      witnessSignatureHex: \'${signedTx.witnesses.first.witnessSignatureHex}\'\n'
            '    }\n'
            '  ],\n'
            '}';
      });

      // Logging the signed transaction data
      print('Signed Transaction: ${signedTx.txHashHex}');
    } on LedgerException catch (e) {
      setState(() {
        signatureHex = 'Error signing transaction: ${e.message}, Code: ${e.errorCode}';
      });
      print('Error signing transaction: ${e.message}, Code: ${e.errorCode}');
    } catch (e) {
      setState(() {
        signatureHex = 'Error signing transaction: ${e.toString()}';
      });
      print('Error signing transaction: ${e.toString()}');
    }
  }

  static Future<String> _reset(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
    try {
      await cardanoApp.reset(device);
      return "Successfully reset the ledger device";
    } on LedgerException catch (e) {
      return 'Error fetching serial: ${e.message}, Code: ${e.errorCode}';
    }
  }

  static Future<String> _fetchSerial(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
    try {
      return await cardanoApp.getSerialNumber(device);
    } on LedgerException catch (e) {
      return 'Error fetching serial: ${e.message}, Code: ${e.errorCode}';
    }
  }

  static Future<String> _fetchVersion(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
    try {
      final version = await cardanoApp.getVersion(device);
      return 'App Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\n'
          'Development Version: ${version.testMode ? "Yes" : "No"}';
    } on LedgerException catch (e) {
      return 'Error fetching version: ${e.message}, Code: ${e.errorCode}';
    }
  }

  Future<void> _testSignOperationalCertificate(LedgerDevice device) async {
    try {
      final operationalCertificate = ParsedOperationalCertificate(
        kesPublicKeyHex: '3d24bc547388cf2403fd978fc3d3a93d1f39acf68a9c00e40512084dc05f2822',
        kesPeriod: BigInt.from(47),
        issueCounter: BigInt.from(42),
        coldKeyPath: [
          harden + 1853,
          harden + 1815,
          harden + 0,
          harden + 0,
        ],
      );

      // Attempt to sign the operational certificate
      final Uint8List signature = await cardanoApp.signOperationalCertificate(
        device,
        operationalCertificate,
      );

      // Convert the signature to a hex string for comparison
      final String signatureHex = hex.encode(signature);

      setState(() {
        this.signatureHex = 'Operational Certificate Signature: $signatureHex';
      });

      // Log the result
      print('Operational Certificate Signature: $signatureHex');

      // Here you would compare signatureHex with the expected value manually
      // In a real app, you might display this on the UI or handle it as needed
    } catch (e) {
      print('Error signing operational certificate: $e');
    }
  }
}
