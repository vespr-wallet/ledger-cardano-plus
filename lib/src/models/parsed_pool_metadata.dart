import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_pool_metadata.freezed.dart';

@freezed
class ParsedPoolMetadata with _$ParsedPoolMetadata {
  const ParsedPoolMetadata._();

  const factory ParsedPoolMetadata({
    required String url,
    required String hashHex,
  }) = ParsedPoolMetaData;

}