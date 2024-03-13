import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class SerializationUtils {
  static void writerSerializedPath(ByteDataWriter writer, List<int> path) {
    writer.writeUint8(path.length);
    for (var index in path) {
      writer.writeUint32(index);
    }
  }

  static void writeSerializedHex(ByteDataWriter writer, String hexString) {
    writer.write(hex.decode(hexString));
  }

  static void writeSerializedUint64(ByteDataWriter writer, int value) {
    // If dart doesn't support 64-bit integers, it means you need to pass two 32-bit integers as arguments
    throw Exception('wrong implementation');

    // Dart does not natively support 64-bit integers, so we split the value into two 32-bit parts.
    writer.writeUint32(value >> 32);
    writer.writeUint32(value & 0xFFFFFFFF);
  }
}
