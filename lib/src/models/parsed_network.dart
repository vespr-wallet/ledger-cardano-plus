import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_network.freezed.dart';

@freezed
sealed class ParsedNetwork with _$ParsedNetwork {
  ParsedNetwork._();

  factory ParsedNetwork({
    required int protocolMagic,
    required int networkId,
  }) = _ParsedNetwork;
}
