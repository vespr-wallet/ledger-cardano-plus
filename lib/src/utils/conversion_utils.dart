import 'dart:typed_data';

import 'package:base_x/base_x.dart';
import 'package:ledger_cardano_plus/src/utils/hex_utils.dart';

String addressHexToBase58(String addressHex) {
  final base58 =
      BaseXCodec('123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz');
  final bytes = hex.decode(addressHex);
  return base58.encode(Uint8List.fromList(bytes));
}

String base58ToHex(String base58Address) {
  final base58 =
      BaseXCodec('123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz');
  final bytes = base58.decode(base58Address);
  return bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
}
