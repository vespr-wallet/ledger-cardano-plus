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
    required String customPaymentBech32Hrp,
    required String customStakeBech32Hrp,
  }) = NetworkCustom;

  @override
  late final int networkMagic = switch (this) {
    NetworkMainnet() => 764824073,
    NetworkLegacyTestnet() => 1097911063,
    NetworkPreProd() => 1,
    NetworkPreview() => 2,
    NetworkConway() => 4,
    NetworkCustom(customNetworkMagic: final customNetworkMagic) =>
      customNetworkMagic,
  };

  @override
  late final int networkId = switch (this) {
    NetworkMainnet() => 1,
    NetworkLegacyTestnet() => 0,
    NetworkPreProd() => 0,
    NetworkPreview() => 0,
    NetworkConway() => 0,
    NetworkCustom(customNetworkId: final customNetworkId) => customNetworkId,
  };

  @override
  late final String paymentBech32Hrp = switch (this) {
    NetworkMainnet() => 'addr',
    NetworkLegacyTestnet() => 'addr_test',
    NetworkPreProd() => 'addr_test',
    NetworkPreview() => 'addr_test',
    NetworkConway() => 'addr_test',
    NetworkCustom(customPaymentBech32Hrp: final customPaymentBech32Hrp) =>
      customPaymentBech32Hrp,
  };

  @override
  late final String stakeBech32Hrp = switch (this) {
    NetworkMainnet() => 'stake',
    NetworkLegacyTestnet() => 'stake_test',
    NetworkPreProd() => 'stake_test',
    NetworkPreview() => 'stake_test',
    NetworkConway() => 'stake_test',
    NetworkCustom(customStakeBech32Hrp: final customStakeBech32Hrp) =>
      customStakeBech32Hrp,
  };
}
