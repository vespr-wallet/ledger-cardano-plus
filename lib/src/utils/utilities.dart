import 'dart:typed_data';

import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/validation_exception.dart';
import 'package:bech32/bech32.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

Uint8List useBinaryWriter(Uint8List Function(ByteDataWriter writer) invoker) {
  final writer = ByteDataWriter();
  return invoker(writer);
}

Uint8List ipStringToBytes(String ipString) {
  try {
    if (ipString.contains('.')) {
      // IPv4 address
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
      // IPv6 address
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

void validateUint64(BigInt? value, String fieldName) {
  if (value != null && (value.bitLength > 64 || value.sign == -1)) {
    throw ValidationException('$fieldName must be positive and max 64 bits.');
  }
}

void validateInt64(BigInt? value, String fieldName) {
  if (value != null && value.bitLength > 63) {
    throw ValidationException('$fieldName must have max 64 bits (including sign bit).');
  }
}

void validateBIP32Path(LedgerSigningPath? path, String fieldName) {
  if (path != null) {
    if (path.signingPath.isEmpty || path.signingPath.length > maxBIP32PathLength) {
      throw ValidationException('$fieldName must contain between 1 and $maxBIP32PathLength indices');
    }
    for (int index in path.signingPath) {
      if (index < 0 || index > max32BitValue) {
        throw ValidationException('$fieldName contains an index out of the valid unsigned 32-bit integer range');
      }
    }
  }
}

void validateMaxStringLength(String? value, String fieldName, int maxLength) {
  if (value != null && value.length > maxLength) {
    throw ValidationException('$fieldName must be maximum $maxLength characters long');
  }
}

void validate32bitUnsignedInteger(int value, String fieldName) {
  if (value < 0 || value > max32BitValue) {
    throw ValidationException('$fieldName must be an unsigned 32-bit integer');
  }
}

void validateUrl(String? value, String fieldName) {
  if (value != null && value.length > maxUrlLength) {
    throw ValidationException('$fieldName must be maximum $maxUrlLength characters long');
  }
}

void validateExactHexString(String? value, String fieldName, int length) {
  validateHexString(value, fieldName);
  if (value != null && value.length != length) {
    throw ValidationException('$fieldName must be exactly $length characters long');
  }
}

void validateUint32(int? value, String fieldName) {
  if (value != null && (value.bitLength > 31 || value.sign == -1)) {
    throw ValidationException('$fieldName must be an unsigned 32-bit integer');
  }
}

void validateHexString(String? value, String fieldName) {
  if (value != null) {
    if (value.length % 2 != 0) {
      throw ValidationException('$fieldName must be a valid hex string with an even number of characters');
    }
    final hexRegex = RegExp(r'^[0-9a-fA-F]+$');
    if (!hexRegex.hasMatch(value)) {
      throw ValidationException('$fieldName must be a valid hex string containing only characters 0-9 or a-f');
    }
  }
}

Uint8List bech32DecodeAddress(String data) {
  final Bech32 decoded = bech32.decode(data, 1000);
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
