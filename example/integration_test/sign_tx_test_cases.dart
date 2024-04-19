import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/script_data_hash.dart';
import 'package:ledger_cardano/src/models/transaction_signing_mode.dart';
import 'package:ledger_cardano/src/models/witness.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/models/shelley_address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/models/parsed_datum.dart';
import 'package:ledger_cardano/src/models/parsed_token.dart';
import 'package:ledger_cardano/src/models/parsed_required_signer.dart';
import 'package:ledger_cardano/src/models/parsed_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_credential.dart';
import 'package:ledger_cardano/src/models/parsed_withdrawal.dart';
import 'package:ledger_cardano/src/models/ledger_signing_path.dart';

import 'test_utils.dart';

class SignTxTestCase {
  final String testName;
  final ParsedSigningRequest request;
  final SignedTransactionData expected;

  SignTxTestCase({
    required this.testName,
    required this.request,
    required this.expected,
  });
}

final testsAlonzo = [
  SignTxTestCase(
    testName: 'Sign tx with script data hash',
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
          )
        ],
        outputs: [],
        scriptDataHashHex:
            ScriptDataHash(hexString: 'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188'),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '7c5aac719dd3e0888deef0c59d6daba9e578d0dc27f82ff4978fc2893cdc2202',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              '5c66a4f75359a62b4b32751fe30a1adbf7ed2839fd4cb762e9a4d2b086de82fca2310bcf07efc2b03086211faa19941dbe059bbfb747e128863f339720e71304',
        ),
      ],
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with change output as array',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          )
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
                    path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
                  ),
                  stakingDataSource: StakingDataSource.path(
                    path: [harden + 1852, harden + 1815, harden + 0, 2, 0],
                  ),
                ),
              ),
            ),
            amount: BigInt.from(7120787),
          )
        ],
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'b72616520aac51e8f4d081cec9899d8113ba61488d736c81bff39521684d52ad',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              'ea26a98ce5399280ec8ad553d155c0900396204f9fe5a33969f279752a53263188d643544cdb4ffed108017bc7544e80df924143866638faffcd11646e57710b',
        ),
      ],
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with datum hash in output as array',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          )
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex('addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
            ),
            amount: BigInt.from(7120787),
            datumHashHex: ParsedDatumHash(
              datumHashHex: 'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
            ),
          )
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '0ac3011036018a6ff19105464f2b98fd7c13e42eb369f930f23fe24f48fc40f4',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              'afc57872d539c398acbb2d18c09796639029b4066ae3439925976d085b7150af418cf070b2ef80e907c20a2c942da4811b6847b1cd42fddc53d4c97732205d0d',
        ),
      ],
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with datum hash in output as array with tokens',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex('addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
            ),
            amount: BigInt.from(7120787),
            datumHashHex: ParsedDatumHash(
              datumHashHex: 'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
            ),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex: '75a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
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
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '7ffbaefea15f1c24c069b39b30360f6a36da6e6dae1666108e873156c338e543',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              '166a23e78036d5e776874bef45f86c757c60c5d1af83943982bbc1cc6bd68526cab1c554f2438c6a4c5491df00066b181891e5b97350e5b4fe367bf9a1317202',
        ),
      ],
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with missing datum hash in output with tokens',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.legacyTestnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex('addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
            ),
            amount: BigInt.from(7120787),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex: '75a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
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
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'c236cfde289e669a04fca8bd9a2b9b632fe4c08d31627da25ac517a40082df2a',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              'ce096ed674ca863fb4af024f9341c8fd7fadd363ffc1b031cba65cb885f8d272759e69e44686e784d3a1e9b8b31c0e965752f13a79eb4095cd96ce26315c1903',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with collateral inputs',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        outputs: [],
        collateralInputs: [
          ParsedInput(
            txHashHex: '1af8fa0b754ff99253d983894e63a2b09cbb56c833ba18c3384210163f63dcfc',
            outputIndex: 0,
            path: [harden + 44, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'f08021608db631b5b5c1553042ac9722efbcdf738e0b256e7300963e66e41638',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              '4867e65c60793b6bd60e677f30111d32f3f8dbf02a6f20985095bf8463b3062b5ad0669836d3e661dc1d0d710fd91f0756e6e5e0ab15cf829ab1f78226808a00',
        ),
        Witness(
          path: [harden + 44, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              'be7162dc1348a79aa5260f33bda84c3eb5f909b108b444ff109bc8fa670fa032fe9951686e004f95453eaa49a73ee9f7c6193d215af804df1ac818ff31efbd01',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with required signers - mixed',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        outputs: [],
        requiredSigners: [
          ParsedRequiredSigner.hash(
            hashHex: 'fea6646c67fb467f8a5425e9c752e1e262b0420ba4b638f39514049a',
          ),
          ParsedRequiredSigner.path(
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '9e41ce0d7bcc1bbef0d96fd025054a54d1435e7a1e1e66595f2ed594dabb5faf',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              'f5b2eb79b74678d3237b757dfcb8a623a8f7f5a10c5925b256da7723935bc98bbfc91ebc001d0e18c2929c611c99d43352ab33ee2dda45b6c115689ddaeeb502',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with required signers - mixed',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        outputs: [],
        requiredSigners: [
          ParsedRequiredSigner.hash(
            hashHex: 'fea6646c67fb467f8a5425e9c752e1e262b0420ba4b638f39514049a',
          ),
          ParsedRequiredSigner.path(
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '9e41ce0d7bcc1bbef0d96fd025054a54d1435e7a1e1e66595f2ed594dabb5faf',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              'f5b2eb79b74678d3237b757dfcb8a623a8f7f5a10c5925b256da7723935bc98bbfc91ebc001d0e18c2929c611c99d43352ab33ee2dda45b6c115689ddaeeb502',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with mint path in a required signer',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex('Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2'),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        requiredSigners: [
          ParsedRequiredSigner.path(
            path: [harden + 1855, harden + 1815, harden + 0],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [
        [harden + 1855, harden + 1815, harden + 0],
      ],
    ),
    expected: SignedTransactionData(
      txHashHex: '728bbc72445c3a17a9d56d1cb6a99b1362d3bcbf508fcb153320dfa62e4b42ba',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              '3dcd818effb503e4cf9d7c3836c29498d5258de7775915bf376eccae95e1b933afa5372478f136720b3c60346c9e674efea9f4b222916c96f0805962a16e9806',
        ),
        Witness(
          path: [harden + 1855, harden + 1815, harden + 0],
          witnessSignatureHex:
              '29d3410bf89fa938a73fb27df35a30910fb3111eb941e835946fd30c0bfcc377c7b8a8ac15dc807f995fb482efdf57e6d697d0d3effaa5cab104861698e39900',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with key hash in stake credential',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          ),
        ],
        outputs: [],
        certificates: [
          ParsedCertificate.stakeDelegation(
            stakeCredential: ParsedCredential.keyHash(
              keyHashHex: '29fb5fd4aa8cadd6705acc8263cee0fc62edca5ac38db593fec2f9fd',
            ),
            poolKeyHashHex: 'f61c42cbf7c8c53af3f520508212ad3e72f674f957fe23ff0acb4973',
          ),
        ],
        withdrawals: [
          ParsedWithdrawal(
            stakeCredential: ParsedCredential.keyHash(
              keyHashHex: '29fb5fd4aa8cadd6705acc8263cee0fc62edca5ac38db593fec2f9fd',
            ),
            amount: BigInt.from(1000),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '7ae1c854aad0469a08cd678786ed9a70791808afd6dd1a7deaae72df12430baa',
      witnesses: [
        Witness(
          path: [harden + 1852, harden + 1815, harden + 0, 0, 0],
          witnessSignatureHex:
              'c986cf978bb08f49f0c50032c8eafa7fddce2a748d3bb0edc0245b5a205a60c55a5ad389d17b897cb83cfe34567c446afed4fd9d64a8304d02c55b9579685d0a',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];

final testsBabbage = [
  // ... define test cases for Babbage
];

final testsByron = [
  // ... define test cases for Byron
];

final testsShelleyNoCertificates = [
  // ... define test cases for Shelley without certificates
];

final testsShelleyWithCertificates = [
  // ... define test cases for Shelley with certificates
];
