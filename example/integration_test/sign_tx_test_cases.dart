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
import 'package:ledger_cardano/src/models/parsed_transaction_options.dart';
import 'package:ledger_cardano/src/models/parsed_tx_auxiliary_data.dart';

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
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
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
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          )
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.path(
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
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'ea26a98ce5399280ec8ad553d155c0900396204f9fe5a33969f279752a5326318d643544cdb4ffed108017bc7544e80df924143866638faffcd11646e57710b',
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
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          )
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                  'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
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
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
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
                  'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
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
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
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
                  'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
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
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
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
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [],
        collateralInputs: [
          ParsedInput(
            txHashHex: '1af8fa0b754ff99253d983894e63a2b09cbb56c833ba18c3384210163f63dcfc',
            outputIndex: 0,
            path: LedgerSigningPath.byron(
              account: 0,
              address: 0,
            ),
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
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '4867e65c60793b6bd60e677f30111d32f3f8dbf02a6f20985095bf8463b3062b5ad0669836d3e661dc1d0d710fd91f0756e6e5e0ab15cf829ab1f78226808a00',
        ),
        Witness(
          path: LedgerSigningPath.byron(
            account: 0,
            address: 0,
          ),
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
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [],
        requiredSigners: [
          ParsedRequiredSigner.hash(
            hashHex: 'fea6646c67fb467f8a5425e9c752e1e262b0420ba4b638f39514049a',
          ),
          ParsedRequiredSigner.path(
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
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
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
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
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [],
        requiredSigners: [
          ParsedRequiredSigner.hash(
            hashHex: 'fea6646c67fb467f8a5425e9c752e1e262b0420ba4b638f39514049a',
          ),
          ParsedRequiredSigner.path(
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
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
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
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
              addressHex: base58ToHex('Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2'),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        requiredSigners: [
          ParsedRequiredSigner.path(
            path: LedgerSigningPath.custom(
              [harden + 1855, harden + 1815, harden + 0],
            ),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [
        LedgerSigningPath.custom([harden + 1855, harden + 1815, harden + 0]),
      ],
    ),
    expected: SignedTransactionData(
      txHashHex: '728bbc72445c3a17a9d56d1cb6a99b1362d3bcbf508fcb153320dfa62e4b42ba',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '3dcd818effb503e4cf9d7c3836c29498d5258de7775915bf376eccae95e1b933afa5372478f136720b3c60346c9e674efea9f4b222916c96f0805962a16e9806',
        ),
        Witness(
          path: LedgerSigningPath.custom([harden + 1855, harden + 1815, harden + 0]),
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
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
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
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'c986cf978bb08f49f0c50032c8eafa7fddce2a748d3bb0edc0245b5a205a60c55a5ad389d17b897cb83cfe34567c446afed4fd9d64a8304d02c55b9579685d0a',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];

final testsBabbage = [
  SignTxTestCase(
    testName: 'Sign tx with short inline datum in output with tokens',
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
                  'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4'),
            ),
            amount: BigInt.from(7120787),
            datumHashHex: ParsedDatumHash(
              datumHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
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
        scriptDataHashHex: ScriptDataHash(
          hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
        ),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '5dbfc21ef1c9cfcec97d81dbe5ad732cf8fe2237969321c830a9dd166172b649',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'c2842b7a30a09634201425f707085b8eef73343ed69298e4e5d3887af362c8b92ee8f6d2c6a04bc7bb66ddcef35c27feb0efd046f5183a02c2267ebedb09780c',
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
          hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
        ),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '0cccea3eb974bd362720a460d84d4970e89c523b2145cbe29bb56f36cec4b826',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: 'destinations.externalShelleyBaseScripthashKeyhash',
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.inline(
              datumHex:
                  '5579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f746865722063686f636f6c6174655579657420616e6f74686572206374686572',
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
        scriptDataHashHex: ScriptDataHash(
          hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
        ),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
    ),
    expected: SignedTransactionData(
      txHashHex: '92f83ca3e05fb48ffe0f90e6d7ac653a684039476b4963984b84fdc6fecea67d',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.hash(
              datumHashHex: 'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
            ),
            referenceScriptHex: 'deadbeefdeadbeefdeadbeefdeadbeefdeadbeef',
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '66b8ad26b626f8fc6bd788d75b64f4d8db1c934e0fe30ba7873fa291f38359ef',
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
    testName: 'Sign tx with datum hash and ref. script (240 B) in output in Babbage format',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.hash(
              datumHashHex: 'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
            ),
            referenceScriptHex:
                '4784392787cc567ac21d7b5346a4a89ae112b7ff7610e402284042aa4e6efca7956a53c3f5cb3ec6745f5e21150f2a77bd71a2adc3f8b9539e9bab41934b477f60a8b302584d1a619ed9b178b5ce6fcad31adc0d6fc17023ede474c09f29fdbfb290a5b30b5240fae5de71168036201772c0d272ae90220181f9bf8c3198e79fc2ae32b076abf4d0e10d3166923ce56994b25c00909e3faab8ef1358c136cd3b197488efc883a7c6cfa3ac63ca9cebc62121c6e22f594420c2abd54e78282adec20ee7dba0e6de65554adb8ee8314f23f86cf7cf0906d4b6c643966baf6c54240c19f4131374e298f38a626a4ad63e61',
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '88ba739a1ac160afc2cfb75d7132431a534665a928e3ed27c90efdd3c15a6eea',
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
    testName: 'Sign tx with datum hash and script reference (304 B) in output as map',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.hash(
              datumHashHex: 'ffd4d009f554ba4fd8ed1f1d703244819861a9d34fd4753bcf3ff32f043ce188',
            ),
            referenceScriptHex: 'deadbeef' * 38, // 304 B of 'deadbeef'
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'eb4c4fde4db6ad34b83087e0d52f48127cd9f0bab5bd6e271cdcc3904ce6556f',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: 'destinations.externalShelleyBaseScripthashKeyhash',
            ),
            amount: BigInt.from(7120787),
            datum: ParsedDatum.hash(
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '77c4e9441b6b5bc5a1157b2b54ac6c0165e6959ffbc378f0528fafd4e5d9ba64',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(1234),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex: '7eae28af2208be856f7a119668ae52a49b73725e326dc16579dcc373',
                tokens: [
                  ParsedToken(
                    assetNameHex: '',
                    amount: BigInt.from(3),
                  ),
                  ParsedToken(
                    assetNameHex: '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df209',
                    amount: BigInt.from(1),
                  ),
                  ParsedToken(
                    assetNameHex: '0000000000000000000000000000000000000000000000000000000000000000',
                    amount: BigInt.from(2),
                  ),
                ],
              ),
              ParsedAssetGroup(
                policyIdHex: '95a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
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
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.path(
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
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'c0f070b69c71a042622bb2187c400087be2ad0c1587c528834adea0308155169',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.path(
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
        scriptDataHashHex:
            ScriptDataHash(hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        referenceInputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '4ce1c9129a74a3d15e5edee72520ee9c497020894548769b8bfa7f26b7f32db3',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.path(
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
        scriptDataHashHex:
            ScriptDataHash(hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        totalCollateral: BigInt.from(10),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '67f5f21ae9b8c5d5b628b9220f20a8dee75da05224d1cb1928d869935642197f',
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
    testName: 'Sign tx with change output as map and collateral output as array',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.path(
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
        scriptDataHashHex:
            ScriptDataHash(hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralOutput: ParsedOutput.alonzo(
          destination: ParsedOutputDestination.deviceOwned(
            addressParams: ParsedAddressParams.shelley(
              shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                spendingDataSource: SpendingDataSource.path(
                  path: LedgerSigningPath.shelley(
                    account: 0,
                    address: 0,
                    role: ShelleyAddressRole.payment,
                  ),
                ),
                stakingDataSource: StakingDataSource.path(
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'ce976eb3a14882f33a1643ac011592ceb277991d3858c1c5fdc40bdd5182510d',
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
    testName: 'Sign tx with change collateral output as map without total collateral',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.path(
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
        scriptDataHashHex:
            ScriptDataHash(hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        collateralOutput: ParsedOutput.babbage(
          destination: ParsedOutputDestination.deviceOwned(
            addressParams: ParsedAddressParams.shelley(
              shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                spendingDataSource: SpendingDataSource.path(
                  path: LedgerSigningPath.shelley(
                    account: 0,
                    address: 0,
                    role: ShelleyAddressRole.payment,
                  ),
                ),
                stakingDataSource: StakingDataSource.path(
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
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '20bcabb8e36ea440bd9097909bd4e17e77bf0da3fe013f07a6714467a4758440',
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
    testName: 'Sign tx with change collateral output as map with total collateral',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.path(
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
        scriptDataHashHex:
            ScriptDataHash(hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        collateralOutput: ParsedOutput.babbage(
          destination: ParsedOutputDestination.deviceOwned(
            addressParams: ParsedAddressParams.shelley(
              shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                spendingDataSource: SpendingDataSource.path(
                  path: LedgerSigningPath.shelley(
                    account: 0,
                    address: 0,
                    role: ShelleyAddressRole.payment,
                  ),
                ),
                stakingDataSource: StakingDataSource.path(
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
              policyIdHex: '75a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '2ffa5b60996c0396bafecb3f63c10c9798689dd125039c7c49d1c85568cc4a34',
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
    testName: 'Sign tx with third-party collateral output as map without total collateral',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(1234),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex: '7eae28af2208be856f7a119668ae52a49b73725e326dc16579dcc373',
                tokens: [
                  ParsedToken(
                    assetNameHex: '',
                    amount: BigInt.from(3),
                  ),
                  ParsedToken(
                    assetNameHex: '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df209',
                    amount: BigInt.from(1),
                  ),
                  ParsedToken(
                    assetNameHex: '0000000000000000000000000000000000000000000000000000000000000000',
                    amount: BigInt.from(2),
                  ),
                ],
              ),
              ParsedAssetGroup(
                policyIdHex: '95a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
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
        scriptDataHashHex:
            ScriptDataHash(hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        collateralOutput: ParsedOutput.babbage(
          destination: ParsedOutputDestination.thirdParty(
            addressHex: bech32ToHex(
              'addr1q97tqh7wzy8mnx0sr2a57c4ug40zzl222877jz06nt49g4zr43fuq3k0dfpqjh3uvqcsl2qzwuwsvuhclck3scgn3vys6wkj5d',
            ),
          ),
          amount: BigInt.from(7120787),
        ),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'ad44aad52c32b6123220ec15548b3902b091f73c4ccfb229700a32bc6958eb6f',
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
    testName: 'Sign tx with third-party collateral output as map with total collateral',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr_test1zp0z7zqwhya6mpk5q929ur897g3pp9kkgalpreny8y304rfw6j2jxnwq6enuzvt0lp89wgcsufj7mvcnxpzgkd4hz70qe8ugl4',
              ),
            ),
            amount: BigInt.from(1234),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex: '7eae28af2208be856f7a119668ae52a49b73725e326dc16579dcc373',
                tokens: [
                  ParsedToken(
                    assetNameHex: '',
                    amount: BigInt.from(3),
                  ),
                  ParsedToken(
                    assetNameHex: '1e349c9bdea19fd6c147626a5260bc44b71635f398b67c59881df209',
                    amount: BigInt.from(1),
                  ),
                  ParsedToken(
                    assetNameHex: '0000000000000000000000000000000000000000000000000000000000000000',
                    amount: BigInt.from(2),
                  ),
                ],
              ),
              ParsedAssetGroup(
                policyIdHex: '95a292ffee938be03e9bae5657982a74e9014eb4960108c9e23a5b39',
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
        scriptDataHashHex:
            ScriptDataHash(hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7'),
        collateralInputs: [
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
        collateralOutput: ParsedOutput.babbage(
          destination: ParsedOutputDestination.thirdParty(
            addressHex: bech32ToHex(
              'addr1q97tqh7wzy8mnx0sr2a57c4ug40zzl222877jz06nt49g4zr43fuq3k0dfpqjh3uvqcsl2qzwuwsvuhclck3scgn3vys6wkj5d',
            ),
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
              ],
            ),
          ],
        ),
        totalCollateral: BigInt.from(5),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction(),
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: 'ae45aaab5ceb5234a46d1a9173fdcfa965cdd5ebc37054c18a1ac22ad5d4904e',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(7120787),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                'DdzFFzCqrht7HGoJ87gznLktJGywK1LbAJT2sbd4txmgS7FcYLMQFhawb18ojS9Hx55mrbsHPr7PTraKh14TSQbGBPJHbDZ9QVh6Z6Di',
              ),
            ),
            amount: BigInt.from(7120787),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
        network: CardanoNetwork.legacyTestnet(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                '2657WMsDfac6Cmfg4Varph2qyLKGi2K9E8jrtvjHVzfSjmbTMGy5sY3HpxCKsmtDA',
              ),
            ),
            amount: BigInt.from(7120787),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
            amount: BigInt.from(7120787),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(7120787),
          ),
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
                    path: LedgerSigningPath.shelley(
                      account: 0,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.path(
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(7120787),
          ),
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSource.path(
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
            amount: BigInt.from(7120787),
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.enterpriseKey(
                  spendingDataSource: SpendingDataSource.path(
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
            amount: BigInt.from(7120787),
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.pointerKey(
                  spendingDataSource: SpendingDataSource.path(
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
                  spendingDataSource: SpendingDataSource.path(
                    path: LedgerSigningPath.shelley(
                      account: 456,
                      address: 0,
                      role: ShelleyAddressRole.payment,
                    ),
                  ),
                  stakingDataSource: StakingDataSource.path(
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
            amount: BigInt.from(7120787),
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
            amount: BigInt.from(7120787),
          ),
        ],
        auxiliaryData: ParsedTxAuxiliaryData.arbitraryHash(
          hashHex: 'deadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeef',
        ),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
  // ... define test cases for Shelley without certificates
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
            amount: BigInt.from(7120787),
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
        outputs: [],
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
        outputs: [],
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
        outputs: [],
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
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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
              addressHex: 'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
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
      signingMode: TransactionSigningModes.ordinaryTransaction(),
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

  // ... define test cases for Shelley with certificates
];
