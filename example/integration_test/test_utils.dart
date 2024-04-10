import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

final ledgerOptions = LedgerOptions(
  maxScanDuration: const Duration(seconds: 30),
  prescanDuration: const Duration(seconds: 10),
);

Future<CardanoLedgerApp> getCardanoLedgerApp() async {
  final ledger = Ledger(options: ledgerOptions);
  final cardanoLedgerApp = CardanoLedgerApp(ledger);
  return cardanoLedgerApp;
}
