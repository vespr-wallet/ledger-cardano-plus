import 'dart:typed_data';
import 'package:collection/collection.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'utils/constants.dart';

class CardanoTransformer extends LedgerTransformer {
  const CardanoTransformer();

  @override
  Future<Uint8List> onTransform(List<Uint8List> transform) async {
    if (transform.isEmpty) {
      throw LedgerException(message: 'No response data from Ledger.');
    }

    final lastItem = transform.last;
    if (lastItem.length < 2) {
      throw LedgerException(message: 'Response data from Ledger is too short.');
    }

    final statusCode = (lastItem[lastItem.length - 2] << 8) | lastItem[lastItem.length - 1];
    final CardanoResponseCode? responseCode = CardanoResponseCode.values.firstWhereOrNull(
      (element) => element.statusCode == statusCode,
    );

    if (responseCode == null) {
      throw LedgerException(message: unknownResponseCodeMessage, errorCode: statusCode);
    } else if (responseCode != CardanoResponseCode.success) {
      throw LedgerException(message: responseCode.message, errorCode: responseCode.statusCode);
    }

    final output = <Uint8List>[];
    for (var data in transform) {
      int offset = (data.length >= 2) ? 2 : 0;
      output.add(data.sublist(0, data.length - offset));
    }

    final result = Uint8List.fromList(output.expand((e) => e).toList());
    return result;
  }
}
