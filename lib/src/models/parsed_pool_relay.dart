import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_pool_relay.freezed.dart';

@freezed
class ParsedPoolRelay with _$ParsedPoolRelay {
  const ParsedPoolRelay._();

  const factory ParsedPoolRelay.singleHostIpAddr({
    int? port,
    String? ipv4,
    String? ipv6,
  }) = SingleHostIpAddr;

  const factory ParsedPoolRelay.singleHostHostname({
    int? port,
    required String dnsName,
  }) = SingleHostHostname;

  const factory ParsedPoolRelay.multiHost({
    required String dnsName,
  }) = MultiHost;
}
