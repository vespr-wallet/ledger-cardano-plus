import "package:freezed_annotation/freezed_annotation.dart";
import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "ledger_connection_type.dart";

part "ledger_device.freezed.dart";

@freezed
sealed class LedgerDevice with _$LedgerDevice {

  const factory LedgerDevice({
    required String id,
    required String name,
    required LedgerConnectionType connectionType,
    required int rssi,
    required LedgerDeviceType deviceInfo,
  }) = _LedgerDevice;
  const LedgerDevice._();
}
