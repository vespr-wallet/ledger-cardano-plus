import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final testsAlonzoTrezorComparison = [
  SignTxTestCase(
    testName: 'Full test for trezor feature parity',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: null,
          ),
        ],
        outputs: [
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1q84sh2j72ux0l03fxndjnhctdg7hcppsaejafsa84vh7lwgmcs5wgus8qt4atk45lvt4xfxpjtwfhdmvchdf2m3u3hlsd5tq5r',
              ),
            ),
            amount: BigInt.from(2000000),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex: '0d63e8d2c5a00cbcffbdf9112487c443466e1ea7d8c834df5ac5c425',
                tokens: [
                  ParsedToken(
                    assetNameHex: '74657374436f696e',
                    amount: BigInt.from(7878754),
                  ),
                ],
              ),
            ],
          ),
          ParsedOutput.alonzo(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1w9rhu54nz94k9l5v6d9rzfs47h7dv7xffcwkekuxcx3evnqpvuxu0',
              ),
            ),
            amount: BigInt.from(1),
            datumHashHex: ParsedDatumHash(
              datumHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            ),
          ),
        ],
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        validityIntervalStart: BigInt.from(47),
        certificates: [
          ParsedCertificate.stakeRegistration(
            stakeCredential: ParsedCredential.scriptHash(
              scriptHashHex: '29fb5fd4aa8cadd6705acc8263cee0fc62edca5ac38db593fec2f9fd',
            ),
          ),
          ParsedCertificate.stakeDeregistration(
            stakeCredential: ParsedCredential.scriptHash(
              scriptHashHex: '29fb5fd4aa8cadd6705acc8263cee0fc62edca5ac38db593fec2f9fd',
            ),
          ),
          ParsedCertificate.stakeDelegation(
            stakeCredential: ParsedCredential.scriptHash(
              scriptHashHex: '29fb5fd4aa8cadd6705acc8263cee0fc62edca5ac38db593fec2f9fd',
            ),
            poolKeyHashHex: 'f61c42cbf7c8c53af3f520508212ad3e72f674f957fe23ff0acb4973',
          ),
        ],
        withdrawals: [
          ParsedWithdrawal(
            stakeCredential: ParsedCredential.scriptHash(
              scriptHashHex: '29fb5fd4aa8cadd6705acc8263cee0fc62edca5ac38db593fec2f9fd',
            ),
            amount: BigInt.from(1000),
          ),
        ],
        mint: [
          ParsedAssetGroup(
            policyIdHex: '0d63e8d2c5a00cbcffbdf9112487c443466e1ea7d8c834df5ac5c425',
            tokens: [
              ParsedToken(
                assetNameHex: '74657374436f696e',
                amount: BigInt.from(7878754),
              ),
              ParsedToken(
                assetNameHex: '75657374436f696e',
                amount: BigInt.from(-7878754),
              ),
            ],
          ),
        ],
        auxiliaryData: ParsedTxAuxiliaryData.arbitraryHash(
          hashHex: '58ec01578fcdfdc376f09631a7b2adc608eaf57e3720484c7ff37c13cff90fdf',
        ),
        scriptDataHashHex: ScriptDataHash(
          hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
        ),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.multisigTransaction,
      additionalWitnessPaths: [
        LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 0, 0]),
        LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
      ],
    ),
    expected: SignedTransactionData(
      txHashHex: 'c3637e34529fae17dbbb90c58307df0cf3b818f4c034860fff362d1ea864cca4',
      witnesses: [
        Witness(
          path: LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 0, 0]),
          witnessSignatureHex:
              '0d35e3f273db757d6137ff897dcfe5abf44054185a428197933a61bb0c7ad960c2090ba808ab86404fe2b407abba12041f5e9306a6f1ae0ad5b6cd4fc7b36904',
        ),
        Witness(
          path: LedgerSigningPath.custom([1854 + harden, 1815 + harden, 0 + harden, 2, 0]),
          witnessSignatureHex:
              'a164b873fa4678dc7a986ad9e4db62b638faff7f45c81af835155bc74dd3ad4b2f696734bf1e536de2baa237f92e158624920eb10269f9ee1d9910993b194a0b',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];
