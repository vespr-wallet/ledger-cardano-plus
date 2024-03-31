import 'package:freezed_annotation/freezed_annotation.dart';

part 'relay.freezed.dart';

@freezed
sealed class Relay with _$Relay {
  Relay._();

  factory Relay.singleHostIpAddr({
    int? portNumber,
    String? ipv4,
    String? ipv6,
  }) = SingleHostIpAddrRelay;

  factory Relay.singleHostHostname({
    int? portNumber,
    required String dnsName,
  }) = SingleHostHostnameRelay;

  factory Relay.multiHost({
    required String dnsName,
  }) = MultiHostRelay;
}