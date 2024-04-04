import 'dart:typed_data';

import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

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
  print("validateUint64 $fieldName: $value ${value?.bitLength}, ${value?.sign}");
  if (value != null && (value.bitLength > 64 || value.sign == -1)) {
    throw ValidationException('$fieldName must be positive and max 64 bits.');
  }
}

void validateInt64(BigInt? value, String fieldName) {
  if (value != null && value.bitLength > 63) {
    throw ValidationException('$fieldName must have max 64 bits (including sign bit).');
  }
}

void validateBIP32Path(List<int>? path, String fieldName) {
  if (path != null) {
    if (path.isEmpty || path.length > maxBIP32PathLength) {
      throw ValidationException('$fieldName must contain between 1 and $maxBIP32PathLength indices');
    }
    for (int index in path) {
      if (index < 0 || index > max32BitValue) {
        throw ValidationException('$fieldName contains an index out of the valid unsigned 32-bit integer range');
      }
    }
  }
}

void validateMaxHexString(String? value, String fieldName, int maxLength) {
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
  if (value != null && value.length != length) {
    throw ValidationException('$fieldName must be exactly $length characters long');
  }
}

void validateUint32(int? value, String fieldName) {
  if (value != null && (value.bitLength > 31 || value.sign == -1)) {
    throw ValidationException('$fieldName must be an unsigned 32-bit integer');
  }
}
