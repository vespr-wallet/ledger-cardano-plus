import "package:ledger_flutter_plus/ledger_flutter_plus.dart" as sdk;

import "ledger_connection_type.dart";

extension LedgerConnectionTypeX on LedgerConnectionType {
  static LedgerConnectionType fromSdk(sdk.ConnectionType connectionType) {
    switch (connectionType) {
      case sdk.ConnectionType.ble:
        return LedgerConnectionType.bluetooth;
      case sdk.ConnectionType.usb:
        return LedgerConnectionType.usb;
    }
  }

  sdk.ConnectionType toSdk() {
    switch (this) {
      case LedgerConnectionType.bluetooth:
        return sdk.ConnectionType.ble;
      case LedgerConnectionType.usb:
        return sdk.ConnectionType.usb;
    }
  }
}
