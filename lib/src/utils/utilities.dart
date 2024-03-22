import 'dart:io';
import 'dart:typed_data';

import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

Uint8List useBinaryWriter(Uint8List Function(ByteDataWriter writer) invoker) {
  final writer = ByteDataWriter();
  return invoker(writer);
}

Uint8List ipStringToBytes(String ipString) {
  try {
    InternetAddress address = InternetAddress(ipString);
    return Uint8List.fromList(address.rawAddress);
  } catch (e) {
    throw ValidationException('Error converting IP string to bytes: $e');
  }
}
