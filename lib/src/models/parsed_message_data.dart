import "package:freezed_annotation/freezed_annotation.dart";
import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "ledger_signing_path.dart";
import "parsed_address_params.dart";

part "parsed_message_data.freezed.dart";

@freezed
sealed class ParsedMessageData with _$ParsedMessageData {
  ParsedMessageData._();

  factory ParsedMessageData.address({
    required String messageHex,
    required LedgerSigningPath signingPath,
    required bool hashPayload,
    required ParsedAddressParams address,
    @Default(false) bool preferHexDisplay,
  }) = ParsedMessageDataAddress;

  factory ParsedMessageData.keyHash({
    required String messageHex,
    required LedgerSigningPath signingPath,
    required bool hashPayload,
    @Default(false) bool preferHexDisplay,
  }) = ParsedMessageDataKeyHash;

  @override
  late final int serializedDataFieldType = switch (this) {
    ParsedMessageDataAddress() => 0x01,
    ParsedMessageDataKeyHash() => 0x02,
  };

  @override
  late final bool isAscii = _computeIsAscii();

  bool _computeIsAscii() {
    // If preferHexDisplay is true, always return false
    if (preferHexDisplay) return false;

    // Check if the string can be unambiguously displayed to the user
    // Copied from Ledger app logic
    try {
      final buffer = hex.decode(messageHex);

      // Must not be empty
      if (buffer.isEmpty) return false;

      // No non-printable characters except spaces
      if (!_isPrintableAscii(buffer)) return false;

      const space = 32; // ' '.charCodeAt(0)

      // No leading spaces
      if (buffer[0] == space) return false;

      // No trailing spaces
      if (buffer[buffer.length - 1] == space) return false;

      // Only single spaces
      for (int i = 0; i + 1 < buffer.length; i++) {
        if (buffer[i] == space && buffer[i + 1] == space) return false;
      }

      return true;
    } catch (e) {
      // If hex decoding fails, it's not ASCII
      return false;
    }
  }

  bool _isPrintableAscii(List<int> buffer) {
    for (final byte in buffer) {
      // Check if byte is printable ASCII (32-126) or space (32)
      if (byte < 32 || byte > 126) {
        return false;
      }
    }
    return true;
  }
}
