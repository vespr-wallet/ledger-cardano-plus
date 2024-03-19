import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_network.freezed.dart';

@freezed
class ParsedNetwork with _$ParsedNetwork {
  const ParsedNetwork._();

  const factory ParsedNetwork({
    required int protocolMagic,
    required int networkId,
  }) = ParsedNetwork_data;

}