import 'dart:async';

import 'package:example/sample_utils/operations.dart';
import 'package:example/widgets/available_devices.dart';
import 'package:flutter/material.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:permission_handler/permission_handler.dart';

const _awaitingLedgerResponse = '[Awaiting Ledger Response...]';

void main() {
  CardanoLedger.debugPrintEnabled = true;
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
  late final CardanoLedger cardanoLedgerConnector = CardanoLedger.ble(
    onPermissionRequest: ({required bool unsupported}) async {
      if (unsupported) {
        return false;
      }

      Map<Permission, PermissionStatus> statuses = await [
        Permission.location,
        Permission.bluetoothScan,
        Permission.bluetoothConnect,
        Permission.bluetoothAdvertise,
      ].request();

      return statuses.values.where((status) => status.isDenied).isEmpty;
    },
  );
  bool connecting = false;
  CardanoLedgerConnection? cardanoLedgerConnection;

  String? error;
  String? resultTitle;
  String? resultData;

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
      resultData = 'Unhandled Error: ${e.toString()}';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final cardanoLedgerConnection = this.cardanoLedgerConnection;
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

    if (cardanoLedgerConnection == null || error != null) {
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
              ),
          ],
        ),
      );
    }

    final selectedDevice = cardanoLedgerConnection.device;

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
        OutlinedButton(
          onPressed: () => _onOperationRequested(
            operation: "Disconnect Device",
            invoker: () async {
              final result = reset(cardanoLedgerConnection);
              await cardanoLedgerConnection.disconnect();
              setState(() {
                this.cardanoLedgerConnection = null;
                this.error = null;
                connecting = false;
              });

              return result;
            },
          ),
          child: const Text('Disconnect Device'),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () => _onOperationRequested(
            //     operation: "Reset (Force Terminate Operation)",
            //     invoker: () => _reset(cardanoApp, selectedDevice),
            //   ),
            //   child: const Text('Reset (Force Terminate Operation)'),
            // ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch Serial Number",
                invoker: () => fetchSerial(cardanoLedgerConnection),
              ),
              child: const Text('Fetch Serial Number'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch App Version",
                invoker: () => fetchVersion(cardanoLedgerConnection),
              ),
              child: const Text('Fetch App Version'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch Cardano Wallet Public Key",
                invoker: () => fetchPublicKey(cardanoLedgerConnection),
              ),
              child: const Text('Fetch Public Key'),
            ),

            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch Stake Address",
                invoker: () => fetchStakeAddress(cardanoLedgerConnection),
              ),
              child: const Text('Fetch Stake Address'),
            ),

            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch Receive Addresses",
                invoker: () => fetchReceiveAddresses(
                  cardanoLedgerConnection,
                  addressIndices: [0, 1, 2, 3],
                ),
              ),
              child: const Text('Fetch Receive Addresses'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch Change Addresses",
                invoker: () => fetchChangeAddresses(
                  cardanoLedgerConnection,
                  addressIndices: [0, 1, 2, 3],
                ),
              ),
              child: const Text('Fetch Change Addresses'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Sign Transaction",
                invoker: () => signTransaction(cardanoLedgerConnection),
              ),
              child: const Text('Sign Transaction'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Padding(
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        resultTitle ?? "[Operation]",
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const Divider(),
                      const SizedBox(height: 4),
                      Text(resultData ?? "[Ledger Result]"),
                      if (resultData == _awaitingLedgerResponse) ...[
                        const SizedBox(height: 16),
                        const CircularProgressIndicator(),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onScanForLedgerDevicesPressed() async {
    final selectedLedgerDevice = await showAdaptiveDialog<LedgerDevice>(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(content: AvailableDevices(ledger: cardanoLedgerConnector)),
    );
    if (selectedLedgerDevice != null) {
      setState(() => connecting = true);
      try {
        final establishedConnection = await cardanoLedgerConnector.connect(selectedLedgerDevice);
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
          cardanoLedgerConnection = establishedConnection;
        });
      } catch (e) {
        setState(() {
          connecting = false;
          error = e.toString();
          cardanoLedgerConnection = null;
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
}
