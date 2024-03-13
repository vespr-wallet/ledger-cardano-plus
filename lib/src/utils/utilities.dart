import 'dart:typed_data';

import 'package:ledger_flutter/ledger_flutter.dart';

Uint8List useBinaryWriter(Uint8List Function(ByteDataWriter writer) invoker) {
  final writer = ByteDataWriter();
  return invoker(writer);
}
