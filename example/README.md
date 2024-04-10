<br />
<div align="center">

<h1 align="center">ledger-cardano</h1>

<p align="center">
    A Flutter Ledger App Plugin for the Cardano blockchain
    <br />
    <a href="https://pub.dev/documentation/ledger_algorand/latest/"><strong>« Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/vespr-wallet/ledger-cardano/issues">Report Bug</a>
    · <a href="https://github.com/vespr-wallet/ledger-cardano/issues">Request Feature</a>
    · <a href="https://pub.dev/packages/ledger_flutter">Ledger Flutter</a>
  </p>
</div>
<br/>

---

```dart
/// Create a new instance of LedgerOptions.
final options = LedgerOptions(
  maxScanDuration: const Duration(milliseconds: 5000),
);

/// Create a new instance of Ledger.
final ledger = Ledger(
  options: options,
);

/// Create a new Cardano Ledger Plugin.
final cardanoApp = CardanoLedgerApp(ledger);

/// Scan for devices
ledger.scan().listen((device) => print(device));

/// or get a connected one
final device = ledger.devices.firstOrNull;

/// Fetch a list of accounts/public keys from your ledger.
final accounts = await cardanoApp.getAccounts(device);
```