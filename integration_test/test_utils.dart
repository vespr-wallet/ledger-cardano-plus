import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

final ledgerOptions = LedgerOptions(
  scanMode: ScanMode.balanced,
  maxScanDuration: const Duration(seconds: 3),
);

Future<CardanoLedgerApp> getCardanoLedgerApp() async {
  final usbManager = LedgerUsbManager();
  final ledger = Ledger(options: ledgerOptions, usbManager: usbManager);
  final devices = await usbManager.listDevices();
  print('Devices: $devices');
  if (devices.isEmpty) {
    throw Exception('No USB devices found');
  }
  final cardanoLedgerApp = CardanoLedgerApp(ledger);
  return cardanoLedgerApp;
}
