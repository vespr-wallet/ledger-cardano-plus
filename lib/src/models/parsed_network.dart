import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_network.freezed.dart';

@freezed
sealed class ParsedNetwork with _$ParsedNetwork {
  const ParsedNetwork._();

  const factory ParsedNetwork({
    required int protocolMagic,
    required int networkId,
  }) = _ParsedNetwork;
}
