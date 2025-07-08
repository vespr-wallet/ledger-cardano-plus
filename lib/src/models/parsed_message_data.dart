import "package:freezed_annotation/freezed_annotation.dart";

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
    required bool isAscii,
    required ParsedAddressParams address,
  }) = ParsedMessageDataAddress;

  factory ParsedMessageData.keyHash({
    required String messageHex,
    required LedgerSigningPath signingPath,
    required bool hashPayload,
    required bool isAscii,
  }) = ParsedMessageDataKeyHash;

  @override
  late final int serializedDataFieldType = switch (this) {
    ParsedMessageDataAddress() => 0x01,
    ParsedMessageDataKeyHash() => 0x02,
  };
}
