import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_pool_metadata.freezed.dart';

@freezed
sealed class ParsedPoolMetadata with _$ParsedPoolMetadata {
  ParsedPoolMetadata._();

  factory ParsedPoolMetadata({
    required String url,
    required String hashHex,
  }) = _ParsedPoolMetadata;
}
