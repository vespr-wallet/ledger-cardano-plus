import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/parsed_network.dart';

part 'network.freezed.dart';

@freezed
class Network with _$Network {
  Network._();

  factory Network({
    required int protocolMagic,
    required int networkId,
  }) = _Network;

  late final ParsedNetwork parsedNetwork = ParsedNetwork(
    protocolMagic: protocolMagic,
    networkId: networkId,
  );
}
