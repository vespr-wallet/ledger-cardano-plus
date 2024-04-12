import 'package:freezed_annotation/freezed_annotation.dart';

part 'cardano_networks.freezed.dart';

@freezed
sealed class CardanoNetwork with _$CardanoNetwork {
  CardanoNetwork._();

  factory CardanoNetwork.mainnet() = NetworkMainnet;

  factory CardanoNetwork.legacyTestnet() = NetworkLegacyTestnet;

  factory CardanoNetwork.preprod() = NetworkPreProd;

  factory CardanoNetwork.preview() = NetworkPreview;

  factory CardanoNetwork.conway() = NetworkConway;

  factory CardanoNetwork.custom({
    required int customNetworkId,
    required int customNetworkMagic,
  }) = NetworkCustom;

  late final int networkMagic = switch (this) {
    NetworkMainnet() => 764824073,
    NetworkLegacyTestnet() => 1097911063,
    NetworkPreProd() => 1,
    NetworkPreview() => 2,
    NetworkConway() => 4,
    NetworkCustom(customNetworkMagic: final customNetworkMagic) => customNetworkMagic,
  };

  late final int networkId = switch (this) {
    NetworkMainnet() => 1,
    NetworkLegacyTestnet() => 0,
    NetworkPreProd() => 0,
    NetworkPreview() => 0,
    NetworkConway() => 0,
    NetworkCustom(customNetworkId: final customNetworkId) => customNetworkId,
  };
}
