import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/constants.dart";

part "parsed_pool_relay.freezed.dart";

@freezed
sealed class ParsedPoolRelay with _$ParsedPoolRelay {
  ParsedPoolRelay._();

  factory ParsedPoolRelay.singleHostIpAddr({
    int? port,
    String? ipv4,
    String? ipv6,
  }) = SingleHostIpAddr;

  factory ParsedPoolRelay.singletHostname({
    int? port,
    required String dnsName,
  }) = SingleHostName;

  factory ParsedPoolRelay.multiHost({
    required String dnsName,
  }) = MultiHost;

  @override
  late final RelayType relayType = switch (this) {
    SingleHostIpAddr() => RelayType.singleHostIpAddr,
    SingleHostName() => RelayType.singleHostname,
    MultiHost() => RelayType.multiHost,
  };
}
