import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'parsed_pool_metadata.freezed.dart';

@freezed
sealed class ParsedPoolMetadata with _$ParsedPoolMetadata {
  ParsedPoolMetadata._() {
    validateUrl(url, 'url');
    validateHexString(hashHex, 'hashHex');
  }

  factory ParsedPoolMetadata({
    required String url,
    required String hashHex,
  }) = _ParsedPoolMetadata;
}
