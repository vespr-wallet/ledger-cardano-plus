import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final testsBabbage = [
  SignTxTestCase(
    testName: 'Sign tx with short inline datum in output with tokens',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        validityIntervalStart: BigInt.from(7),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                  'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.inline(
              datumHex: '5579657420616e6f746865722063686f636f6c617465',
            ),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '75a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
                tokens: [
                  ParsedToken(
                    assetNameHex: '7564247542686911',
                    amount: BigInt.from(47),
                  ),
                  ParsedToken(
                    assetNameHex: '7564247542686912',
                    amount: BigInt.from(7878754),
                  ),
                ],
              ),
            ],
          ),
        ],
        scriptDataHashHex: ScriptDataHash(
          hexString:
              '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
        ),
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '4c3c5d5eb885006ec4e59feb6f2fe6fca57664c8a7b0c85582424cb5e24ec230',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '8ffccc50b6db51b0f2b888ebadb61257fa02e7877c55a7b4ab694aeff62ebb9d492e3de4d8d4a57d11bcac289e961df7b2391cd634654af5d13ff60a9beb0707',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with long inline datum (480 B) in output',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                  'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.inline(
              datumHex:
                  '12b8240c5470b47c159597b6f71d78c7fc99d1d8d911cb19b8f50211938ef361a22d30cd8f6354ec50e99a7d3cf3e06797ed4af3d358e01b2a957caa4010da328720b9fbe7a3a6d10209a13d2eb11933eb1bf2ab02713117e421b6dcc66297c41b95ad32d3457a0e6b44d8482385f311465964c3daff226acfb7bbda47011f1a6531db30e5b5977143c48f8b8eb739487f87dc13896f58529cfb48e415fc6123e708cdc3cb15cc1900ecf88c5fc9ff66d8ad6dae18c79e4a3c392a0df4d16ffa3e370f4dad8d8e9d171c5656bb317c78a2711057e7ae0beb1dc66ba01aa69d0c0db244e6742d7758ce8da00dfed6225d4aed4b01c42a0352688ed5803f3fd64873f11355305d9db309f4a2a6673cc408a06b8827a5edef7b0fd8742627fb8aa102a084b7db72fcb5c3d1bf437e2a936b738902a9c0258b462b9f2e9befd2c6bcfc036143bb34342b9124888a5b29fa5d60909c81319f034c11542b05ca3ff6c64c7642ff1e2b25fb60dc9bb6f5c914dd4149f31896955d4d204d822deddc46f852115a479edf7521cdf4ce596805875011855158fd303c33a2a7916a9cb7acaaf5aeca7e6efb75960e9597cd845bd9a93610bf1ab47ab0de943e8a96e26a24c4996f7b07fad437829fee5bc3496192608d4c04ac642cdec7bdbb8a948ad1d434',
            ),
          ),
        ],
        scriptDataHashHex: ScriptDataHash(
          hexString:
              '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
        ),
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '0cccea3eb974bd362720a460d84d4970e89c523b2145cbe29bb56f36cec4b826',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '9b45eae3e9e59f501adbe22ce7f22fbacce7c36623f28e1aa4fdb0942e58e839b02e21a6808a13c7490cbb70e9a174279b4c845dba3ee99b8d458cfa9d349908',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with long inline datum (304 B) in output with tokens',
    request: ParsedSigningRequest(
      additionalWitnessPaths: [],
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                  'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.inline(
              datumHex:
                  '5579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f74686572206374686572',
            ),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '75a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
                tokens: [
                  ParsedToken(
                    assetNameHex: '7564247542686911',
                    amount: BigInt.from(47),
                  ),
                  ParsedToken(
                    assetNameHex: '7564247542686912',
                    amount: BigInt.from(7878754),
                  ),
                ],
              ),
            ],
          ),
        ],
        scriptDataHashHex: ScriptDataHash(
          hexString:
              '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
        ),
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
    ),
    expected: SignedTransactionData(
      txHashHex:
          '92f83ca3e05fb48ffe0f90e6d7ac653a684039476b4963984b84fdc6fecea67d',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'e6baf473e8caabcdfaa961e4e25f31f1389de3528e6ffede36e8e23ac163a6b5fcab490f009577aa4f260a7f4e45d5b481f4b5c3542148feafcae101805f4001',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with datum hash and short ref. script in output',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.hash(
              datumHashHex:
                  'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
            ),
            referenceScriptHex: 'deadbeefdeadbeefdeadbeefdeadbeefdeadbeef',
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '66b8ad26b626f8fc6bd788d75b64f4d8db1c934e0fe30ba7873fa291f38359ef',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '09ac32c49b80265e668793ce441031b9bb8f99643ded6b3fa3f3c8109a287bd91a7fb899d137dd7333134ec748ee11a629aa252cfc9a75fd96217dfb08305003',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName:
        'Sign tx with datum hash and ref. script (240 B) in output in Babbage format',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.hash(
              datumHashHex:
                  'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
            ),
            referenceScriptHex:
                '4784392787cc567ac21d7b5346a4a89ae112b7ff7610e402284042aa4e6efca7956a53c3f5cb3ec6745f5e21150f2a77bd71a2adc3f8b9539e9bab41934b477f60a8b302584d1a619ed9b178b5ce6fcad31adc0d6fc17023ede474c09f29fdbfb290a5b30b5240fae5de71168036201772c0d272ae90220181f9bf8c3198e79fc2ae32b076abf4d0e10d3166923ce56994b25c00909e3faab8ef1358c136cd3b197488efc883a7c6cfa3ac63ca9cebc62121c6e22f594420c2abd54e78282adec20ee7dba0e6de65554adb8ee8314f23f86cf7cf0906d4b6c643966baf6c54240c19f4131374e298f38a626a4ad63e61',
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '88ba739a1ac160afc2cfb75d7132431a534665a928e3ed27c90efdd3c15a6eea',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '64d1ef5a3e8a074ad9ef34e0d6c19d313c09122f8cbbd54f3e46024b492e2d523a0ad1e132fc0fbf5ca4b2ddd2e72f110a9f669fef2f921a037553262aaffe06',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName:
        'Sign tx with datum hash and script reference (304 B) in output as map',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.hash(
              datumHashHex:
                  'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
            ),
            referenceScriptHex:
                'deadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeaddeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeaddeadbeef', // 304 B of 'deadbeef'
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'eb4c4fde4db6ad34b83087e0d52f48127cd9f0bab5bd6e271cdcc3904ce6556f',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '166e6a6749e103b0ddd2af822066a867fdf62f32fe91b6099a4d9983c6699f0d4da5d0be68afb5d41ecc54c2799665a6caf4beec8893c7f6593eaae3da8b0800',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with datum hash in output with tokens in Babbage format',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                  'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.hash(
              datumHashHex:
                  'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
            ),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '75a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
                tokens: [
                  ParsedToken(
                    assetNameHex: '7564247542686911',
                    amount: BigInt.from(47),
                  ),
                  ParsedToken(
                    assetNameHex: '7564247542686912',
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
          '77c4e9441b6b5bc5a1157b2b54ac6c0165e6959ffbc378f0528fafd4e5d9ba64',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'ec6d5db61abe1daa9d43ea0e4e89b9151227b3e5937cb304fa5d7823d555625327b19f71d890ddc73401e3dcad61903c32d889241643f64fb218f98828643f08',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with a complex multiasset output Babbage',
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
          ParsedOutput.babbage(
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
          ParsedOutput.babbage(
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
          'c0f070b69c71a042622bb2187c400087be2ad0c1587c528834adea0308155169',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '6d31e18be58b2f5c8a2ea10e83d370418b51ef29e3f142f6605f3918d09fd78b5b520eb03332465d6304617b1a037cd4606e11f8ce4824038507d68bea5c6f02',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with change output as map and multiple reference inputs',
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
          ParsedOutput.babbage(
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
        scriptDataHashHex: ScriptDataHash(
            hexString:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        referenceInputs: [
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
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '4ce1c9129a74a3d15e5edee72520ee9c497020894548769b8bfa7f26b7f32db3',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '014537c021b33afaa6bd8909ce0059fceed55f6ee2db1e39b877dbdd3458d8ab9b1e632058916526ccf9b57f30a6f14006b3875ee400c59b5d43db3b0afd5b08',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with change output as map and total collateral',
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
          ParsedOutput.babbage(
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
        scriptDataHashHex: ScriptDataHash(
            hexString:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        totalCollateral: BigInt.from(10),
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '67f5f21ae9b8c5d5b628b9220f20a8dee75da05224d1cb1928d869935642197f',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '448576703ceed680504a957c12c973ec72d2562a49fbe978762668a5eb8fd767cb1b36a16018a573b23c1f669f35ec6401e73438f7414ae5f6e18ce304c71b0b',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName:
        'Sign tx with change output as map and collateral output as array',
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
          ParsedOutput.babbage(
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
        scriptDataHashHex: ScriptDataHash(
            hexString:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralOutput: ParsedOutput.alonzo(
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
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'ce976eb3a14882f33a1643ac011592ceb277991d3858c1c5fdc40bdd5182510d',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '67615b4517feb87ed9a8a1b464de4e7e02264e02036538afc2091f8fef992c6b5de4e9b7f8a1cff7b21d25b6f71916161127119a63e076ce42d1e7289865d608',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName:
        'Sign tx with change collateral output as map without total collateral',
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
          ParsedOutput.babbage(
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
        scriptDataHashHex: ScriptDataHash(
            hexString:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        collateralOutput: ParsedOutput.babbage(
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
          tokenBundle: [
            ParsedAssetGroup(
              policyIdHex:
                  '75a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
              tokens: [
                ParsedToken(
                  assetNameHex: '7564247542686911',
                  amount: BigInt.from(47),
                ),
              ],
            ),
          ],
        ),
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '20bcabb8e36ea440bd9097909bd4e17e77bf0da3fe013f07a6714467a4758440',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'd17f32d31ba25f36b02b1b9994b9c3aea3df863a55dffc313612f2bf1f92e1fb65028cfd83f0b2f6b81c99ae2a02d2fc1e2d99b442e937fa33b5f4c0ccd6c60f',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName:
        'Sign tx with change collateral output as map with total collateral',
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
          ParsedOutput.babbage(
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
        scriptDataHashHex: ScriptDataHash(
            hexString:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        collateralOutput: ParsedOutput.babbage(
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
          tokenBundle: [
            ParsedAssetGroup(
              policyIdHex:
                  '75a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
              tokens: [
                ParsedToken(
                  assetNameHex: '7564247542686911',
                  amount: BigInt.from(47),
                ),
              ],
            ),
          ],
        ),
        totalCollateral: BigInt.from(5),
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '2ffa5b60996c0396bafecb3f63c10c9798689dd125039c7c49d1c85568cc4a34',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'c81d783cdf7b54ec560fce529169dd914b19a9ceb96371a5ec29c135c69e655a682c3e184216efd9557d53f6bcfd68c45031e3ad2c2e155a0bcff5095ab12608',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName:
        'Sign tx with third-party collateral output as map without total collateral',
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
          ParsedOutput.babbage(
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
        ],
        scriptDataHashHex: ScriptDataHash(
            hexString:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        collateralOutput: ParsedOutput.alonzo(
          destination: ParsedOutputDestination.thirdParty(
            addressHex: bech32ToHex(
              'addr1q97tqh7wzy8mnx0sr2a57c4ug40zzl222877jz06nt49g4zr43fuq3k0dfpqjh3uvqcsl2qzwuwsvuhclck3scgn3vys6wkj5d',
            ),
          ),
          amount: BigInt.from(1),
        ),
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'ad44aad52c32b6123220ec15548b3902b091f73c4ccfb229700a32bc6958eb6f',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '0d71240327d12b951d5953e7936dc87f91d10554aa7f476e82681d9584f95c50705ebf7d2f7f484ca552bbe385b4d09de1957d895a35e4f015c6a95bbb7c0707',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName:
        'Sign tx with third-party collateral output as map with total collateral',
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
          ParsedOutput.babbage(
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
        ],
        scriptDataHashHex: ScriptDataHash(
            hexString:
                '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        collateralOutput: ParsedOutput.alonzo(
          destination: ParsedOutputDestination.thirdParty(
            addressHex: bech32ToHex(
              'addr1q97tqh7wzy8mnx0sr2a57c4ug40zzl222877jz06nt49g4zr43fuq3k0dfpqjh3uvqcsl2qzwuwsvuhclck3scgn3vys6wkj5d',
            ),
          ),
          amount: BigInt.from(1),
        ),
        totalCollateral: BigInt.from(5),
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'ae45aaab5ceb5234a46d1a9173fdcfa965cdd5ebc37054c18a1ac22ad5d4904e',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'f0048a529b21431fb4a4b39991b3301ff2c73994990da91b84484284f0681a8c0693e48b1c5bccd61c5c3533fdad2d89a481a85134b3a4e3c0805fdf05aa7f07',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];
