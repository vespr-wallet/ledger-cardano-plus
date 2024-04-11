import 'dart:async';

import 'package:example/sample_utils/operations.dart';
import 'package:example/widgets/available_devices.dart';
import 'package:flutter/material.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

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
    }
    setState(() {});
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
        OutlinedButton(
          onPressed: () => _onOperationRequested(
            operation: "Disconnect Device",
            invoker: () async {
              final result = reset(cardanoApp, selectedDevice);
              await ledger.disconnect(selectedDevice);
              setState(() {
                this.selectedDevice = null;
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
                invoker: () => fetchSerial(cardanoApp, selectedDevice),
              ),
              child: const Text('Fetch Serial Number'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch App Version",
                invoker: () => fetchVersion(cardanoApp, selectedDevice),
              ),
              child: const Text('Fetch App Version'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch Cardano Wallet Public Key",
                invoker: () => fetchPublicKey(cardanoApp, selectedDevice),
              ),
              child: const Text('Fetch Cardano Wallet Public Key'),
            ),

            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch Stake Address",
                invoker: () => fetchStakeAddress(cardanoApp, selectedDevice),
              ),
              child: const Text('Fetch Stake Address'),
            ),

            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch First Receive and Change Addresses",
                invoker: () => fetchReceiveAndChangeAddress(
                  cardanoApp,
                  selectedDevice,
                  addressIndex: 0,
                ),
              ),
              child: const Text('Fetch First Receive and Change Addresses'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Fetch Second Receive and Change Addresses",
                invoker: () => fetchReceiveAndChangeAddress(
                  cardanoApp,
                  selectedDevice,
                  addressIndex: 1,
                ),
              ),
              child: const Text('Fetch Second Receive and Change Addresses'),
            ),
            ElevatedButton(
              onPressed: () => _onOperationRequested(
                operation: "Sign Transaction",
                invoker: () => signTransactionWithoutOutputs(
                  cardanoApp,
                  selectedDevice,
                ),
              ),
              child: const Text('Fetch Second Receive and Change Addresses'),
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
        await ledger.connect(selectedLedgerDevice,
            options: LedgerOptions(
                // requireLocationServicesEnabled: UniversalPlatform.isAndroid,
                ));
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
}
