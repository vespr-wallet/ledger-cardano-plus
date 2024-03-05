import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class SerializationUtils {
  static void serializePath(ByteDataWriter writer, List<int> path) {
    writer.writeUint8(path.length);
    for (var index in path) {
      writer.writeUint32(index);
    }
  }

  static void serializeHex(ByteDataWriter writer, String hexString) {
    var bytes = hex.decode(hexString);
    writer.writeUint8(bytes.length);
    writer.write(bytes);
  }

  static void serializeUint64(ByteDataWriter writer, int value) {
    // Dart does not natively support 64-bit integers, so we split the value into two 32-bit parts.
    writer.writeUint32(value >> 32);
    writer.writeUint32(value & 0xFFFFFFFF);
  }
}
