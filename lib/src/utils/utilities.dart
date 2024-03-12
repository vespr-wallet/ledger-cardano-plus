import 'dart:typed_data';
import 'package:buffer/buffer.dart';

Uint8List useBinaryWriter(
    Uint8List Function(ByteDataWriter writer) invoker) {
  final writer = ByteDataWriter();
  return invoker(writer);
}