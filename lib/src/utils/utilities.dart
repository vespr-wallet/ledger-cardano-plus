import 'dart:typed_data';

import 'package:bech32/bech32.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

Uint8List useBinaryWriter(Uint8List Function(ByteDataWriter writer) invoker) {
  final writer = ByteDataWriter();
  return invoker(writer);
}

Uint8List bech32DecodeAddress(String data) {
  final Bech32 decoded = bech32.decode(data);
  final bytes = fromWords(decoded.data);
  return Uint8List.fromList(bytes);
}

List<int> fromWords(List<int> words) {
  int bitGroupLength = 5;
  int byteMask = 0xFF;
  int accumulator = 0;
  int bits = 0;
  List<int> bytes = [];

  for (int word in words) {
    accumulator = (accumulator << bitGroupLength) | word;
    bits += bitGroupLength;

    while (bits >= 8) {
      bits -= 8;
      bytes.add((accumulator >> bits) & byteMask);
    }
  }

  return bytes;
}

String bech32EncodeAddress(String hrp, List<int> data) {
  final words = toWords(data);
  final bech32Data = Bech32(hrp, words);
  return Bech32Encoder().convert(bech32Data, maxHumanAddressLength);
}

List<int> toWords(List<int> bytes) {
  int bitGroupLength = 5;
  int byteMask = 0x1F;
  int accumulator = 0;
  int bits = 0;
  List<int> words = [];

  for (int byte in bytes) {
    accumulator = (accumulator << 8) | byte;
    bits += 8;

    while (bits >= bitGroupLength) {
      bits -= bitGroupLength;
      words.add((accumulator >> bits) & byteMask);
    }
  }

  if (bits > 0) {
    words.add((accumulator << (bitGroupLength - bits)) & byteMask);
  }

  return words;
}

Uint8List hexToBytes(String hex) {
  return Uint8List.fromList(
      List.generate(hex.length ~/ 2, (i) => int.parse(hex.substring(i * 2, i * 2 + 2), radix: 16)));
}
