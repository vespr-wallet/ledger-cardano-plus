import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';

part 'parsed_network.freezed.dart';

@freezed
sealed class ParsedNetwork with _$ParsedNetwork {
  ParsedNetwork._();

  factory ParsedNetwork.testnet() = ParsedNetworkTestnet;

  factory ParsedNetwork.mainnet() = ParsedNetworkMainnet;
    
  late final int protocolMagic = switch(this) {
    ParsedNetworkMainnet() => CardanoNetwork.mainnet.protocolMagic,
    ParsedNetworkTestnet() => CardanoNetwork.testnet.protocolMagic,
  };
  late final int networkId = switch(this) {
    ParsedNetworkMainnet() => CardanoNetwork.mainnet.networkId,
    ParsedNetworkTestnet() => CardanoNetwork.testnet.networkId,
  };
  
}
