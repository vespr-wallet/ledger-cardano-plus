import "dart:typed_data";

import "package:bech32/bech32.dart";
import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../models/ledger_signing_path.dart";
import "constants.dart";
import "exceptions.dart";

Uint8List useBinaryWriter(Uint8List Function(ByteDataWriter writer) invoker) {
  final writer = ByteDataWriter();
  return invoker(writer);
}

Uint8List ipStringToBytes(String ipString) {
  try {
    // IPv6 first so embedded IPv4 ("::ffff:1.2.3.4") stays IPv6; the stdlib parser also handles "::" compression
    return Uint8List.fromList(
      ipString.contains(":") ? Uri.parseIPv6Address(ipString) : Uri.parseIPv4Address(ipString),
    );
  } catch (e) {
    throw LedgerCardanoValidationException("Error converting IP string to bytes: $e");
  }
}

void validateUint64(BigInt? value, String fieldName) {
  if (value != null && (value.bitLength > 64 || value.sign == -1)) {
    throw LedgerCardanoValidationException("$fieldName must be positive and max 64 bits.");
  }
}

void validateInt64(BigInt? value, String fieldName) {
  if (value != null && value.bitLength > 63) {
    throw LedgerCardanoValidationException("$fieldName must have max 64 bits (including sign bit).");
  }
}

void validateBIP32Path(LedgerSigningPath? path, String fieldName) {
  if (path != null) {
    if (path.signingPath.isEmpty || path.signingPath.length > maxBIP32PathLength) {
      throw LedgerCardanoValidationException("$fieldName must contain between 1 and $maxBIP32PathLength indices");
    }
    for (final int index in path.signingPath) {
      if (index < 0 || index > max32BitValue) {
        throw LedgerCardanoValidationException(
          "$fieldName contains an index out of the valid unsigned 32-bit integer range",
        );
      }
    }
  }
}

void validateMaxStringLength(String? value, String fieldName, int maxLength) {
  if (value != null && value.length > maxLength) {
    throw LedgerCardanoValidationException("$fieldName must be maximum $maxLength characters long");
  }
}

void validate32bitUnsignedInteger(int value, String fieldName) {
  if (value < 0 || value > max32BitValue) {
    throw LedgerCardanoValidationException("$fieldName must be an unsigned 32-bit integer");
  }
}

void validateUrl(String? value, String fieldName) {
  if (value != null && value.length > maxUrlLength) {
    throw LedgerCardanoValidationException("$fieldName must be maximum $maxUrlLength characters long");
  }
}

void validateExactHexString(String? value, String fieldName, int length) {
  validateHexString(value, fieldName);
  if (value != null && value.length != length) {
    throw LedgerCardanoValidationException("$fieldName must be exactly $length characters long");
  }
}

void validateUint32(int? value, String fieldName) {
  if (value != null && (value.bitLength > 31 || value.sign == -1)) {
    throw LedgerCardanoValidationException("$fieldName must be an unsigned 32-bit integer");
  }
}

void validateHexString(String? value, String fieldName) {
  if (value != null) {
    if (value.length % 2 != 0) {
      throw LedgerCardanoValidationException("$fieldName must be a valid hex string with an even number of characters");
    }
    final hexRegex = RegExp(r"^[0-9a-fA-F]*$");
    if (!hexRegex.hasMatch(value)) {
      throw LedgerCardanoValidationException(
        "$fieldName must be a valid hex string containing only characters 0-9 or a-f",
      );
    }
  }
}

Uint8List bech32DecodeAddress(String data) {
  final Bech32 decoded = bech32.decode(data, 1000);
  final bytes = fromWords(decoded.data);
  return Uint8List.fromList(bytes);
}

List<int> fromWords(List<int> words) {
  const int bitGroupLength = 5;
  const int byteMask = 0xFF;
  int accumulator = 0;
  int bits = 0;
  final List<int> bytes = [];

  for (final int word in words) {
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
  const int bitGroupLength = 5;
  const int byteMask = 0x1F;
  int accumulator = 0;
  int bits = 0;
  final List<int> words = [];

  for (final int byte in bytes) {
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
    List.generate(hex.length ~/ 2, (i) => int.parse(hex.substring(i * 2, i * 2 + 2), radix: 16)),
  );
}
