import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final testsMary = [
  SignTxTestCase(
    testName: 'Sign tx with a multiasset output',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1q84sh2j72ux0l03fxndjnhctdg7hcppsaejafsa84vh7lwgmcs5wgus8qt4atk45lvt4xfxpjtwfhdmvchdf2m3u3hlsd5tq5r',
              ),
            ),
            amount: BigInt.from(1234),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '95a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
                tokens: [
                  ParsedToken(
                    assetNameHex: '74652474436f696e',
                    amount: BigInt.from(7878754),
                  ),
                ],
              ),
            ],
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams:
                    ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.keyPath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.stake,
                    ),
                  ),
                ),
              ),
            ),
            amount: BigInt.from(7120787),
          ),
        ],
        validityIntervalStart: BigInt.from(7),
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '9a9bce0cfe146a1327a94a6257e1013b12476d9c73c891d73faf74aaf131cde5',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '6c4d490ea8f3973f9d030c36ff7221f012663af276bde346f8b90b54b06f49c22bcde3968cc281d548183e1506380028853948f7ef3c98a9e179540119688106',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with a complex multiasset output',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1q84sh2j72ux0l03fxndjnhctdg7hcppsaejafsa84vh7lwgmcs5wgus8qt4atk45lvt4xfxpjtwfhdmvchdf2m3u3hlsd5tq5r',
              ),
            ),
            amount: BigInt.from(1234),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '7eae28af2208be856f7a119668ae52a49b73725e326dc16579dcc373',
                tokens: [
                  ParsedToken(
                    assetNameHex: '',
                    amount: BigInt.from(3),
                  ),
                  ParsedToken(
                    assetNameHex:
                        '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df209',
                    amount: BigInt.from(1),
                  ),
                  ParsedToken(
                    assetNameHex:
                        '0000000000000000000000000000000000000000000000000000000000000000',
                    amount: BigInt.from(2),
                  ),
                ],
              ),
              ParsedAssetGroup(
                policyIdHex:
                    '95a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
                tokens: [
                  ParsedToken(
                    assetNameHex: '456c204e69c3b16f',
                    amount: BigInt.from(1234),
                  ),
                  ParsedToken(
                    assetNameHex: '74652474436f696e',
                    amount: BigInt.from(7878754),
                  ),
                ],
              ),
            ],
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams:
                    ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.keyPath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.stake,
                    ),
                  ),
                ),
              ),
            ),
            amount: BigInt.from(7120787),
          ),
        ],
        validityIntervalStart: BigInt.from(7),
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'b81c3a6f8506eeacb0512a54f12500151745fbb683f52dbc52f6c099437baca8',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'e2c96040194d1baef4b9dfac945496f60d446597863a2049d12796df7fb6f9f9f31392555cfccfd7c745eef802d1904ba3a9ba4892569d0eed6f6e19a871630f',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with big numbers',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.parse('24103998870869519'),
        ttl: BigInt.parse('24103998870869519'),
        validityIntervalStart: BigInt.parse('24103998870869519'),
        inputs: [
          ParsedInput(
            txHashHex:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1q84sh2j72ux0l03fxndjnhctdg7hcppsaejafsa84vh7lwgmcs5wgus8qt4atk45lvt4xfxpjtwfhdmvchdf2m3u3hlsd5tq5r',
              ),
            ),
            amount: BigInt.parse('24103998870869519'),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '95a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
                tokens: [
                  ParsedToken(
                    assetNameHex: '74652474436f696e',
                    amount: BigInt.parse('24103998870869519'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'e60735a3cc71a8a3f89652797c3e650d6ed80059c0b59978c59858dcf6f8ca48',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '632cd935550a71c1e1869e6f5749ee4cb8c268cbe014138561fc2d1045b5b2be84526cfd5a6fea01de99bdf903fa17c79a58a832b5cdcb1c999bcbe995a56806',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with a multiasset change output',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1q97tqh7wzy8mnx0sr2a57c4ug40zzl222877jz06nt49g4zr43fuq3k0dfpqjh3uvqcsl2qzwuwsvuhclck3scgn3vys6wkj5d',
              ),
            ),
            amount: BigInt.from(1),
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams:
                    ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.keyPath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.stake,
                    ),
                  ),
                ),
              ),
            ),
            amount: BigInt.from(1234),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '95a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
                tokens: [
                  ParsedToken(
                    assetNameHex: '74652474436f696e',
                    amount: BigInt.from(7878754),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '005b324472b13e181f72a9c5eb1f05351a22b103ce35517768bab1d3bfe4a114',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '7d437d698a9a8f06f1e0ced7378c22b864b4a3dd8bba575e5cc497f55fcee984724549a34cb6e5ea11acf4749544ddabf2118c0545c668c5f75251a6be443905',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with zero fee, TTL and validity interval start',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(0),
        ttl: BigInt.from(0),
        validityIntervalStart: BigInt.from(0),
        inputs: [
          ParsedInput(
            txHashHex:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams:
                    ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.keyPath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.stake,
                    ),
                  ),
                ),
              ),
            ),
            amount: BigInt.from(7120787),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'acc997f583c78f36529ee29134e2cfb7a4550493727f565a502ab40544827311',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'e5ee59942fba139b5547e5e1dae1389ed9edd6e7bd7f057b988973c2451b5e3e41901c1d9a0fa74d34dae356a064ee783205d731fee01105c904702826b66b04',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with output with decimal places',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(33),
        ttl: null,
        inputs: [
          ParsedInput(
            txHashHex:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1q84sh2j72ux0l03fxndjnhctdg7hcppsaejafsa84vh7lwgmcs5wgus8qt4atk45lvt4xfxpjtwfhdmvchdf2m3u3hlsd5tq5r',
              ),
            ),
            amount: BigInt.from(1234),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '6954264b15bc92d6d592febeac84f14645e1ed46ca5ebb9acdb5c15f',
                tokens: [
                  ParsedToken(
                    assetNameHex: '5354524950',
                    amount: BigInt.from(3456789),
                  ),
                ],
              ),
              ParsedAssetGroup(
                policyIdHex:
                    'af2e27f580f7f08e93190a81f72462f153026d06450924726645891b',
                tokens: [
                  ParsedToken(
                    assetNameHex: '44524950',
                    amount: BigInt.from(1234),
                  ),
                  ParsedToken(
                    assetNameHex: 'ffffffffffffffffffffffff',
                    amount: BigInt.from(1234),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'a36c270c8ee52c8f5b9cc47ccad0869ad72f00dd1ac1510b682752e09738a27f',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '30e8da0b9230bc1b1e2748ef51e9259f457d4e0bd0387eb186ade839f3bbac5a2face7eea72061b850c7d26a5b66bd0f90cff546c6c30e0987091a067c960d06',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with mint fields with various amounts',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [],
        mint: [
          ParsedAssetGroup(
            policyIdHex:
                '7eae28af2208be856f7a119668ae52a49b73725e326dc16579dcc373',
            tokens: [
              ParsedToken(
                assetNameHex: '',
                amount: BigInt.from(0),
              ),
              ParsedToken(
                assetNameHex:
                    '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df209',
                amount: BigInt.from(-1),
              ),
              ParsedToken(
                assetNameHex:
                    '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df20a',
                amount: BigInt.from(9223372036854775807),
              ),
              ParsedToken(
                // fingerprint: asset17jd78wukhtrnmjh3fngzasxm8rck0l2r4hhyyt (and incremented)
                assetNameHex:
                    '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df20b',
                amount: BigInt.from(-9223372036854775808),
              ),
            ],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'd31008087e3a9a267661f802993f7604ac2dd53d4b458f27bfc3663bc7072de1',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '18fa055fb6d74b12170cdc227aaf4922c78405d4caf7bdbe5f959df2c3a912e20c5a18c4412d504685fe1179d32b5b588efe4a8d59f0274492de77f30f315409',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with mint with decimal places',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(33),
        inputs: [
          ParsedInput(
            txHashHex:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1q97tqh7wzy8mnx0sr2a57c4ug40zzl222877jz06nt49g4zr43fuq3k0dfpqjh3uvqcsl2qzwuwsvuhclck3scgn3vys6wkj5d',
              ),
            ),
            amount: BigInt.from(1),
          ),
        ],
        mint: [
          ParsedAssetGroup(
            policyIdHex:
                '6954264b15bc92d6d592febeac84f14645e1ed46ca5ebb9acdb5c15f',
            tokens: [
              ParsedToken(
                assetNameHex: '5354524950',
                amount: BigInt.from(-3456789),
              ),
            ],
          ),
          ParsedAssetGroup(
            policyIdHex:
                'af2e27f580f7f08e93190a81f72462f153026d06450924726645891b',
            tokens: [
              ParsedToken(
                assetNameHex: '44524950',
                amount: BigInt.from(1234),
              ),
              ParsedToken(
                assetNameHex: 'ffffffffffffffffffffffff',
                amount: BigInt.from(1234),
              ),
            ],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'a96b68158758496044fbf91d7abaaa59e1cc426315c4fc2a1c4fa2c5db432807',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '11b9ed90e2923c01869627ed5bc49ea66874fbef2418a2184437e19a30738a8bb52d7569113984617d73144e304be5cf84a30c21bd8b1c4cfe93cc434ed3db04',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with mint fields among other fields',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        inputs: [
          ParsedInput(
            txHashHex:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1q84sh2j72ux0l03fxndjnhctdg7hcppsaejafsa84vh7lwgmcs5wgus8qt4atk45lvt4xfxpjtwfhdmvchdf2m3u3hlsd5tq5r',
              ),
            ),
            amount: BigInt.from(1234),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '95a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
                tokens: [
                  ParsedToken(
                    assetNameHex: '74652474436f696e',
                    amount: BigInt.from(7878754),
                  ),
                ],
              ),
            ],
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams:
                    ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.keyPath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.stake,
                    ),
                  ),
                ),
              ),
            ),
            amount: BigInt.from(7120787),
          ),
        ],
        fee: BigInt.from(10),
        validityIntervalStart: BigInt.from(100),
        ttl: BigInt.from(1000),
        mint: [
          ParsedAssetGroup(
            policyIdHex:
                '7eae28af2208be856f7a119668ae52a49b73725e326dc16579dcc373',
            tokens: [
              ParsedToken(
                assetNameHex: '',
                amount: BigInt.from(0),
              ),
              ParsedToken(
                assetNameHex:
                    '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df209',
                amount: BigInt.from(-1),
              ),
              ParsedToken(
                assetNameHex:
                    '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df20a',
                amount: BigInt.from(9223372036854775807),
              ),
              ParsedToken(
                assetNameHex:
                    '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df20b',
                amount: BigInt.from(-9223372036854775808),
              ),
            ],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '49686d9089cba67506537574dd0514038f813a2b9e648097aa49c2b93d14d549',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '2a4ec4e5eb03d24264d612923e62b01384d215a70c415b067cc109580cef1044fc9a5b17fe92f752b70702fd457e6ea455a4ef5f3afdd44548223e913bc43b08',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];
