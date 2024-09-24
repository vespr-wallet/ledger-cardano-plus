import 'dart:typed_data';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus_dart.dart';

const _ledgerSuccessCode = 0x9000;

class CardanoTransformer extends LedgerTransformer {
  final LedgerConnectionType connectionType;
  const CardanoTransformer(this.connectionType);

  @override
  Future<Uint8List> onTransform(List<Uint8List> transform) async {
    if (transform.isEmpty) {
      throw LedgerDeviceException(
        message: 'No response data from Ledger.',
        errorCode: -10,
        connectionType: connectionType.toSdk(),
      );
    }

    final lastItem = transform.last;
    if (lastItem.length < 2) {
      throw LedgerDeviceException(
        message: 'Response data from Ledger is too short.',
        errorCode: -11,
        connectionType: connectionType.toSdk(),
      );
    }

    final statusCode =
        (lastItem[lastItem.length - 2] << 8) | lastItem[lastItem.length - 1];

    switch (statusCode) {
      case _ledgerSuccessCode:
        final output = <Uint8List>[];
        for (var data in transform) {
          int offset = (data.length >= 2) ? 2 : 0;
          output.add(data.sublist(0, data.length - offset));
        }

        final result = Uint8List.fromList(output.expand((e) => e).toList());
        return result;
      default:
        throw LedgerCardanoResponseCodeException.fromLedgerStatusCode(
            statusCode);
    }
  }
}
