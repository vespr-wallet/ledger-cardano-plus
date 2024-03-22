import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_pool_relay.freezed.dart';

@freezed
sealed class ParsedPoolRelay with _$ParsedPoolRelay {
  const ParsedPoolRelay._();

  const factory ParsedPoolRelay.singleHostIpAddr({
    required RelayType type,
    int? port,
    String? ipv4,
    String? ipv6,
  }) = SingleHostIpAddr;

  const factory ParsedPoolRelay.singleHostHostname({
    required RelayType type,
    int? port,
    required String dnsName,
  }) = SingleHostName;

  const factory ParsedPoolRelay.multiHost({
    required RelayType type,
    required String dnsName,
  }) = MultiHost;
}
