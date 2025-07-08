import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import 'test_utils.dart';

class SignTxTestCase {
  final String testName;
  final ParsedSigningRequest request;
  final SignedTransactionData expected;
  final CardanoVersion? minSupportedVersion;

  SignTxTestCase({
    required this.testName,
    required this.request,
    required this.expected,
    this.minSupportedVersion,
  });
}

final testsByron = [
  SignTxTestCase(
    testName: 'Sign tx with third-party Byron mainnet output',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '1af8fa0b754ff99253d983894e63a2b09cbb56c833ba18c3384210163f63dcfc',
            outputIndex: 0,
            path: LedgerSigningPath.byron(
              account: 0,
              address: 0,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '73e09bdebf98a9e0f17f86a2d11e0f14f4f8dae77cdf26ff1678e821f20c8db6',
      witnesses: [
        Witness(
          path: LedgerSigningPath.byron(
            account: 0,
            address: 0,
          ),
          witnessSignatureHex:
              '9c12b678a047bf3148e867d969fba4f9295042c4fff8410782425a356820c79e7549de798f930480ba83615a5e2a19389c795a3281a59077b7d37cd5a071a606',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with third-party Byron Daedalus mainnet output',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '1af8fa0b754ff99253d983894e63a2b09cbb56c833ba18c3384210163f63dcfc',
            outputIndex: 0,
            path: LedgerSigningPath.byron(
              account: 0,
              address: 0,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                'DdzFFzCqrht7HGoJ87gznLktJGywK1LbAJT2sbd4txmgS7FcYLMQFhawb18ojS9Hx55mrbsHPr7PTraKh14TSQbGBPJHbDZ9QVh6Z6Di',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '3cf35b4d9bfa87b8eab5de659e0520bdac37b0de0b3840c1d8abd683330a9756',
      witnesses: [
        Witness(
          path: LedgerSigningPath.byron(
            account: 0,
            address: 0,
          ),
          witnessSignatureHex:
              'fdca7969a3e8bc091c9ee32c04732f79bb7c0091f1796fd2c0e1de8aa8547a00457d50d0576f4dd421baf754499cf0e77584e848e3547addd5d5b7167597a307',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with third-party Byron testnet output',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.custom(
          customNetworkId: 0,
          customNetworkMagic: 42,
          customPaymentBech32Hrp: 'addr_test',
          customStakeBech32Hrp: 'stake_test',
        ),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '1af8fa0b754ff99253d983894e63a2b09cbb56c833ba18c3384210163f63dcfc',
            outputIndex: 0,
            path: LedgerSigningPath.byron(
              account: 0,
              address: 0,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                '2657WMsDfac6Cmfg4Varph2qyLKGi2K9E8jrtvjHVzfSjmbTMGy5sY3HpxCKsmtDA',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'e2319ee8317ac537af4c2c3322aaf9fb6c64a95e3921ad75ab91b4f5b5306963',
      witnesses: [
        Witness(
          path: LedgerSigningPath.byron(
            account: 0,
            address: 0,
          ),
          witnessSignatureHex:
              '224d103185f4709f7b749339ff7ba432d50ca5cb742678847f5e574858cf7dda7ed402399a9ddba81ecd731b6f939ba07a247cd570dcd543f83a9aeadc4f9603',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];

final testsShelleyNoCertificates = [
  SignTxTestCase(
    testName: 'Sign tx without outputs',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '190dcee0cc7125fd0ec104cf685674f1ad77f3e439a4a249e596a3306f9eb110ced8fb8ec59da15b721203c8973bd341d88e6a60b85c1e9f2623152fee8dc00a',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with 258 tag on inputs',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
      options: ParsedTransactionOptions(
        tagCborSets: true,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: '063d3a3670a43699a2648df93eedc1f93e8fda898ab79d3a795142a4ad573b7b',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'b842908ce71f3ad1e1a1e2261c3bfdbfdb48c3fe58484c3e0521588e94e48fdb001f30908b0cd041e6c1b9d9400739ea52d0ca7289b3d807d26d06d73961f609',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx without change address',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '5268bdedcdbd3e2bad037cd292b3832ff2c77c8c628c37485da2dd930f5fc32a',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'ef73b0838e831dc86278e450ef36fecf4b7ad712dabb901f0d8470b6046ced8246cd086a15ad4c723c0cf01b685d8113e72a01511a5ceba374ebb8f4417afd0a',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with change base address with staking path',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '1af8fa0b754ff99253d983894e63a2b09cbb56c833ba18c3384210163f63dcfc',
            outputIndex: 0,
            path: LedgerSigningPath.byron(
              account: 0,
              address: 0,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
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
      txHashHex: '5fac237a413de9337149b4735e7bad3ecccb8813bb03056332312cf56932df30',
      witnesses: [
        Witness(
          path: LedgerSigningPath.byron(
            account: 0,
            address: 0,
          ),
          witnessSignatureHex:
              '4d29b3a66a152819baf9eb4866ab13ff6c5279ed80157463b96e2fd55aed14fa01d9df1de2a32560354da3db4f34cad79772804356401fa22523aabfd0363f03',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with change base address with staking key hash',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.keyHash(
                    keyHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277',
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
      txHashHex: 'f475a32afbf7b028fb794f81311a10f655afbbdf1d0201e5c801010a8cde9ea7',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '4ac5017c014886406a38a45417a165156280be63ca6975a5acffcabc0cc842ca603248b8a7ebfa729d7affce34518f4ca94fe797420a4d7aa0ef8c2b0ddfba0b',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with enterprise change address',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.enterpriseKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
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
      txHashHex: 'c192b24a87d45c768f7f33ed37998054db96d34558e59afebabe51cfb7034b65',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '70559415746a9646dc492b7758e18cb367c005ab0479558b3d540be2310eb1bb1dd0839081e22c0b4727e8bd8e163cfbfe9def99a8506fb4a6787a200862e00f',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pointer change address',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.pointerKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.blockchainPointer(
                    blockIndex: 1,
                    txIndex: 2,
                    certificateIndex: 3,
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
      txHashHex: '4b19e27ffc006ace16592311c4d2f0cafc255eaa47a6178ff540c0a46d07027c',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '1838884e08cf6966ebe6b3e775191c4f08d90834723421779efd6aa96e52ffc91a24e5073abe6db94c74fe080d008258b3d989c159d9b87a9c778a51404abc08',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with non-reasonable account and address',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 456,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(
                      account: 456,
                      address: 5000000,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.keyPath(
                    path: LedgerSigningPath.shelley(
                      account: 456,
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
        auxiliaryData: ParsedTxAuxiliaryData.arbitraryHash(
          hashHex: 'deadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeef',
        ),
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '40b3a79c645be040139078befee154d5f935c8ba2af6144cebcf447f8ef2e580',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 456,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'bb1a035acf4a7b5dd68914f0007dfc4d1cc7b4d88748c0ad24326fd06597542ce0352075ed861b3ae012ab976cacd3dbbc58802cdf82409917ebf9a8bb182e04',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with path based withdrawal',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        withdrawals: [
          ParsedWithdrawal(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
            amount: BigInt.from(111),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'dfc63f395fba4bbf8d3507d05c455f0db7d85d0cabdd6f033c6112d6c32a6b93',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '22ef3b54a54a1f5390436911b23328225f92c660eb251189fceab2fa428187a2cec584ea5f6f9c9fcdf7f19bc496b3b2b9bb416ad07a3d31d73fbc0c05bec10c',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              '04b995979c2072b469c1e0ace5331c3d188e3e65d5a6f06aa4e608fb18a3588621370ee1b5d39d55afe0744aa4906785baa07210dc4cb49594eba507f7215102',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with auxiliary data hash',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        auxiliaryData: ParsedTxAuxiliaryData.arbitraryHash(
          hashHex: 'deadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeef',
        ),
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '34c1dd59c14252008b680bf6a727c8f371e2d96e8bca6b783bcf3f8f36407e6f',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '953c5243ba09570dd4e52642236834c138ad4abbbb21796a90540a11e8dc96e47043401d370cdaed70ebc332dd4db80c9b167fd7f20971c4f142875cea57200c',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];

final testsShelleyWithCertificates = [
  SignTxTestCase(
    testName: 'Sign tx with a stake registration path certificate --- pre-Conway',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakeRegistration(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'a119ec712822b2f4bc96737121f286cf149ac2f8de2230e0d675f074094d1cd6',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '9825594e5a91333b9f5762665ba316af34c2208bd7ef073178af5e48f2aae8673d50436045e292d5bb9be7492eeeda475a04e58621a326c91049a2ef26a33200',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with a stake deregistration path certificate --- pre-Conway',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakeDeregistration(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '8b143fae3b37748fee1decdc10fbfa554158b58fbc99623ecdd2ba7aa709e471',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '6136510eb91449474f6137c8d1c7c69eb518e3844a3e63a626be8cf4af91afa24e12f4fa578398bf0e7992e22dcfc5f9773fb8546b88c19e3abfdaa3bbe7a304',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              '77210ce6533a76db3673af1076bf3933747a8d81cabda80c8bc9c852c78685f8a42c9372721bdfe9b47611039364afb3391031211b5c427cfec0c5c505cfec0c',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with a stake delegation path certificate',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakeDelegation(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
            poolKeyHashHex: 'f61c42cbf7c8c53af3f520508212ad3e72f674f957fe23ff0acb4973',
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '7afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c808b3a8aa',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'd94c8f8fe73946c25f3bd0919d05a60b8373ef0a7261fa73eefe1f2a20e8a4c3401feb5eea701222184fceab2c45b47bd823ac76123e2d17f804d3e4ed2df909',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              '035b4e6ae6f7a8089f2a302ddcb60bc56d48bcf267fdcb071844da5ce3086d51e816777a6fb5eabfcb326a32b830674ac0de40ee1b2360a69adba4b64c662404',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx and filter out witnesses with duplicate paths',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakeDeregistration(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
          ),
          ParsedCertificate.stakeDeregistration(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '8d720755bcbc724fc71a1868bafbd057d855a176362417f62711a34f2d9b896d',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '04e071e39903e7e1e3ea9d26ce6822d5cbef88ee389f4f63a585668a5a6df98924dca16f8f61c01909162730014bb309fc7043b80ac54375697d6e9c01df0a0c',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              '7b53ba805658d801baa39546777b611ed071c89938daea50c2c3275358abec2c1d67c8062b24fc4778e09af13e58ea33dd7d0627e221574386716aaa25e1f20b',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool retirement combined with stake registration',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakePoolRetirement(
            path: LedgerSigningPath.custom([1853 + harden, 1815 + harden, 0 + harden, 0 + harden]),
            retirementEpoch: BigInt.from(10),
          ),
          ParsedCertificate.stakeRegistration(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '70aea83c8e5e9a3e0ec92860d5bd4750c34911193f092a96b9da6906d6ea6247',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '8212cdabe1be514fdc21e02a2b405ce284ebbce0208a5c2b289dac662bf87fb4c2d18237c66761e285d78ee76cc26b7517718e641174d69f49737a49e9482607',
        ),
        Witness(
          path: LedgerSigningPath.custom([1853 + harden, 1815 + harden, 0 + harden, 0 + harden]),
          witnessSignatureHex:
              '9386c2545e2671497daf95db93be1386690a4f884547a60f2913ef8a9e61486ba068d7477e1cd712f8d9cc20778d9e71b72eda96c9394c2f3111c61803f9a70d',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool retirement combined with stake deregistration',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakePoolRetirement(
            path: LedgerSigningPath.custom([1853 + harden, 1815 + harden, 0 + harden, 0 + harden]),
            retirementEpoch: BigInt.from(10),
          ),
          ParsedCertificate.stakeDeregistration(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'edbafe86ae40467d2a02b917aa782eb9c37d2fbc4e316a3c446c0d3946231882',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '82bc899f008446e57daef9dc750d500d43f12fdd1e353d5ab8b42100a7bb94c9794de5e1ce03c06775e7da581f9cb08427e1d8b491d39ddfb3db060de3001700',
        ),
        Witness(
          path: LedgerSigningPath.custom([1853 + harden, 1815 + harden, 0 + harden, 0 + harden]),
          witnessSignatureHex:
              '4f58bfe90112eee3ce66edb7196506b5548c1c342619ee125e1f35fdbe009736593b3bfa80622727b6debc72626d60e3c4cb2d35007da9478baa4109dd80d004',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              '1c926e24d825d699a4b2d5d7dc95d717d4c19a0196ed120f115c76a168a7e661e6c393c4f97fe7b7533f20017be834fae53711265a3fe52b4c4211ac18990007',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];

final testsMultisig = [
  SignTxTestCase(
    testName: 'Sign tx without change address with Shelley scripthash output',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(1),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.multisigTransaction,
      additionalWitnessPaths: [
        LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 0, 0]),
      ],
    ),
    expected: SignedTransactionData(
      txHashHex: '1e994755bafebf435f91e34655ba6a66ee92de64529dc811dce7001d92b0a44a',
      witnesses: [
        Witness(
          path: LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 0, 0]),
          witnessSignatureHex:
              '9c06b237c35be528a3f550e469e38c32c29a58417d489d8d4f1276a2111b2f6feca9b84d658f5e51ee7921512fe935e11defc7a1ff6152f76ea590baca04f307',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with script based withdrawal',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        withdrawals: [
          ParsedWithdrawal(
            stakeCredential: ParsedCredential.scriptHash(
              scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277',
            ),
            amount: BigInt.from(111),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.multisigTransaction,
      additionalWitnessPaths: [
        LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
      ],
    ),
    expected: SignedTransactionData(
      txHashHex: '87de2c36e5a222f796b392a290717316d039dc42dc2150873e86ec9b0c870357',
      witnesses: [
        Witness(
          path: LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
          witnessSignatureHex:
              '64f26fb866f0840f2ec299db16e6eff9d039ebacf673bdd8dba5110078344bf9647c4038588bfc826c73d7e0c03ea2ffb028de632d9462a129fd78f3a1bd7c0e',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with a stake registration script certificate',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakeRegistration(
            stakeCredential: ParsedCredential.scriptHash(
              scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277',
            ),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.multisigTransaction,
      additionalWitnessPaths: [
        LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
      ],
    ),
    expected: SignedTransactionData(
      txHashHex: 'fba0908b41300d1b075ec6a7dafc2dcbe3376df17ef3feb2e4536b309f0034d1',
      witnesses: [
        Witness(
          path: LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
          witnessSignatureHex:
              'bfb96452a106da86ff17c71692e25fac4826ae1c318c94d671fd7602229b411cf4422614cba241954a9bdb66bfd364bc9cfdf446639ff6e03273dc4073d66b0a',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with a stake delegation script certificate',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakeDelegation(
            stakeCredential: ParsedCredential.scriptHash(
              scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277',
            ),
            poolKeyHashHex: 'f61c42cbf7c8c53af3f520508212ad3e72f674f957fe23ff0acb4973',
          ),
        ],
      ),
      signingMode: TransactionSigningModes.multisigTransaction,
      additionalWitnessPaths: [
        LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
      ],
    ),
    expected: SignedTransactionData(
      txHashHex: '927d8924e77c879bcc2a1e5317d963028737d0764c6532a05474d8eda203911d',
      witnesses: [
        Witness(
          path: LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
          witnessSignatureHex:
              '78de23f120ff291913eee3d3981281d500e9476debb27bb640ff73eba53c1de452b5d9dba57d4353a37652f7a72a272e60a928fbf4181b70c031c9ba93888606',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with a stake deregistration script certificate',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakeDeregistration(
            stakeCredential: ParsedCredential.scriptHash(
              scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277',
            ),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.multisigTransaction,
      additionalWitnessPaths: [
        LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
      ],
    ),
    expected: SignedTransactionData(
      txHashHex: 'c4c8910810de8dc39aa0c33b65ee24f3f95216c7050f9ba85c00302a99f6d596',
      witnesses: [
        Witness(
          path: LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
          witnessSignatureHex:
              '468e5dc048efa4985bb392248f6d8df3b4ed297a9cbe4b9670ac0cc0debc4e6dc00018a75079cf20c050f4bf9be1c9aecccae851d22fe940a72b25af802d910b',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];

final testsAllegra = [
  SignTxTestCase(
    testName: 'Sign tx with no ttl and no validity interval start',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: null,
        validityIntervalStart: null,
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'cbb6ee600297d0b5067b1e79cf1dc6361de4e5e731eacc57c42765944381ff18',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '4f6e3a61b48921fa0c3f67856fc955e754d16d210f0725ff31d959c53f830ddef354663040bc0bc4306127c3549f0c5339cc5a604512090a4fe26ebadc80550f',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with no ttl, but with validity interval start',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: null,
        validityIntervalStart: BigInt.from(47),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '9fbc15167cfdf408998b0348ff6e69e63f404d1f0acf65763a057003f8a3a93b',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'e245b89938ad182361d696dafb0644b6b93bcfa3e631716afb5f73b6b6d6852c9313d7fd34a4a404e4b345b64d9b29ddef406197911106593000cd2fd18b900f',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];
