import 'dart:typed_data';

import 'package:ledger_cardano/src/models/parsed_signing_request.dart';
import 'package:ledger_cardano/src/models/sign_transaction_request.dart';
import 'package:ledger_cardano/src/utils/parsing/parsing_utils.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

Uint8List useBinaryWriter(Uint8List Function(ByteDataWriter writer) invoker) {
  final writer = ByteDataWriter();
  return invoker(writer);
}

Uint8List ipStringToBytes(String ipString) {
  try {
    if (ipString.contains('.')) {
      List<String> parts = ipString.split('.');
      if (parts.length != 4) {
        throw ValidationException('Invalid IPv4 string format');
      }
      
      Uint8List bytes = Uint8List(4);
      for (int i = 0; i < 4; i++) {
        int part = int.parse(parts[i]);
        if (part < 0 || part > 255) {
          throw ValidationException('Invalid IPv4 address range');
        }
        bytes[i] = part;
      }
      
      return bytes;
    } else if (ipString.contains(':')) {
      List<String> parts = ipString.split(':');
      if (parts.length != 8) {
        throw ValidationException('Invalid IPv6 string format');
      }
      
      Uint8List bytes = Uint8List(16);
      for (int i = 0; i < 8; i++) {
        int part = int.parse(parts[i], radix: 16);
        bytes[i * 2] = (part >> 8) & 0xFF;
        bytes[i * 2 + 1] = part & 0xFF;
      }
      
      return bytes;
    } else {
      throw ValidationException('Invalid IP address format');
    }
  } catch (e) {
    throw ValidationException('Error converting IP string to bytes: $e');
  }
}

void validate(bool condition, String reason) {
  if (!condition) {
    throw ValidationException(reason);
  }
}

ParsedSigningRequest parseSignTransactionRequest(SignTransactionRequest request) {
  //TODO: validate signing mode
  final tx = parseTransaction(request.tx);
  final signingMode = parseSigningMode(request.signingMode);
  final options = parseTxOptions(request.options);

  //TODO: validate additional witness paths
  validate(request.additionalWitnessPaths != null, 'ADDITIONAL_WITNESSES_NOT_ARRAY');
  var additionalWitnessPaths = request.additionalWitnessPaths.map(
    (path) => parseBIP32Path(path, 'INVALID_PATH'),
  ).toList();

  switch (signingMode) {
    case TransactionSigningMode.ORDINARY_TRANSACTION:
      break;
    case TransactionSigningMode.MULTISIG_TRANSACTION:
      break;
    default:
      throw UnimplementedError('Signing mode not supported');
  }
}

