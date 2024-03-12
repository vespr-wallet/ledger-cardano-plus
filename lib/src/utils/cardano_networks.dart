enum CardanoNetwork {
  mainnet(networkId: 0x01, protocolMagic: 764824073),
  testnet(networkId: 0x00, protocolMagic: 1097911063);

  final int networkId;
  final int protocolMagic;

  const CardanoNetwork({required this.networkId, required this.protocolMagic});
}