import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/ledger_connection_type.dart';

part 'ledger_device.freezed.dart';

@freezed
class LedgerDevice with _$LedgerDevice {
  const LedgerDevice._();

  const factory LedgerDevice({
    required String id,
    required String name,
    required LedgerConnectionType connectionType,
    required int rssi,
  }) = _LedgerDevice;
}
