import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/ledger_connection_type.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus_dart.dart';

part 'ledger_device.freezed.dart';

@freezed
class LedgerDevice with _$LedgerDevice {
  const LedgerDevice._();

  const factory LedgerDevice({
    required String id,
    required String name,
    required LedgerConnectionType connectionType,
    required int rssi,
    required LedgerDeviceType deviceInfo,
  }) = _LedgerDevice;
}
