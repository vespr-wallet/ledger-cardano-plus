import 'dart:typed_data';
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

    final statusCode =
        (lastItem[lastItem.length - 2] << 8) | lastItem[lastItem.length - 1];
    CardanoResponseCode? responseCode;
    for (var code in CardanoResponseCode.values) {
      if (code.value == statusCode) {
        responseCode = code;
        break;
      }
    }

    if (responseCode != CardanoResponseCode.success) {
      final message = _getMessageForStatusCode(responseCode);
      throw LedgerException(message: message, errorCode: statusCode);
    }

    final output = <Uint8List>[];
    for (var data in transform) {
      int offset = (data.length >= 2) ? 2 : 0;
      output.add(data.sublist(0, data.length - offset));
    }

    final result = Uint8List.fromList(output.expand((e) => e).toList());
    return result;
  }

  String _getMessageForStatusCode(CardanoResponseCode? responseCode) {
    switch (responseCode) {
      case CardanoResponseCode.errMalformedRequestHeader:
        return 'Malformed request header.';
      case CardanoResponseCode.errBadCla:
        return 'Bad CLA (Command Link Assurance).';
      case CardanoResponseCode.errUnknownIns:
        return 'Unknown instruction.';
      case CardanoResponseCode.errStillInCall:
        return 'Still in call.';
      case CardanoResponseCode.errInvalidRequestParameters:
        return 'Invalid request parameters.';
      case CardanoResponseCode.errInvalidState:
        return 'Invalid state.';
      case CardanoResponseCode.errInvalidData:
        return 'Invalid data.';
      case CardanoResponseCode.errInvalidBip44Path:
        return 'Invalid BIP44 path.';
      case CardanoResponseCode.errRejectedByUser:
        return 'Rejected by user.';
      case CardanoResponseCode.errRejectedByPolicy:
        return 'Rejected by policy.';
      case CardanoResponseCode.errDeviceLocked:
        return 'Device is locked.';
      default:
        return 'Unknown error.';
    }
  }
}
