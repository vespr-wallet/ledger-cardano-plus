import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus_models.dart';

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

