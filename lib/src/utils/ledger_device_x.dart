import 'package:ledger_cardano_plus/ledger_cardano_plus_models.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart' as sdk;

extension LedgerDeviceX on LedgerDevice {
  sdk.LedgerDevice toSdk() => sdk.LedgerDevice(
        id: id,
        name: name,
        rssi: rssi,
        connectionType: switch (connectionType) {
          LedgerConnectionType.bluetooth => sdk.ConnectionType.ble,
          LedgerConnectionType.usb => sdk.ConnectionType.usb,
        },
      );
}

extension SdkLedgerDeviceX on sdk.LedgerDevice {
  LedgerDevice fromSdk() => LedgerDevice(
        id: id,
        name: name,
        rssi: rssi,
        connectionType: switch (connectionType) {
          sdk.ConnectionType.ble => LedgerConnectionType.bluetooth,
          sdk.ConnectionType.usb => LedgerConnectionType.usb,
        },
      );
}
