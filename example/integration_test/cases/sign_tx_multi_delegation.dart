import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final testsMultidelegation = [
  //TODO : Got same error as in the ts implementation : Error during transaction signing: DeviceStatusError: Action rejected by Ledger's security policy
  SignTxTestCase(
    testName: 'Sign tx with multidelegation keys in all tx elements',
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 1,
              role: ShelleyAddressRole.stake,
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
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 2,
                role: ShelleyAddressRole.stake,
              ),
            ),
          ),
          ParsedCertificate.stakeDeregistration(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 2,
                role: ShelleyAddressRole.stake,
              ),
            ),
          ),
          ParsedCertificate.stakeDelegation(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 2,
                role: ShelleyAddressRole.stake,
              ),
            ),
            poolKeyHashHex: 'f61c42cbf7c8c53af3f520508212ad3e72f674f957fe23ff0acb4973',
          ),
        ],
        withdrawals: [
          ParsedWithdrawal(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 3,
                role: ShelleyAddressRole.stake,
              ),
            ),
            amount: BigInt.from(1000),
          ),
        ],
        requiredSigners: [
          ParsedRequiredSigner.path(
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 4,
              role: ShelleyAddressRole.stake,
            ),
          ),
        ],
        scriptDataHashHex: ScriptDataHash(
          hexString: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
        ),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [
        LedgerSigningPath.shelley(
          account: 0,
          address: 0,
          role: ShelleyAddressRole.payment,
        ),
        LedgerSigningPath.shelley(
          account: 0,
          address: 5,
          role: ShelleyAddressRole.stake,
        ),
      ],
    ),
    expected: SignedTransactionData(
      txHashHex: 'edcf824da89507ae03c46a4ad1f4676c28842052022e2d2062993680c3e36f80',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 1,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              '873f55cd0ffa058d1c93fed2eb748f33c12fc2f144cb493e7e621eb2a248c809f43208e31e53ac85a3186a9c848d7b4aa95928635355a2f4473a3216e0466407',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 2,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              'c04a246ae7495f9e0733b5610dcac3ee955b417dc6089dd36da714566230235bd5aa7ff6f364477b32d48d1bee5764166a4c0ecb5c13946d7d1f1b2611f5fc00',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 3,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              '1c9c5d5bccbc6a45adb41fde16fb82b5ba2748755ce048a2b50e1994d59f51905b2e43a8eef886d62ee1f77e81df201569bb1bab39c14f80c71a0568fcbf5e02',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 4,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              '4a1026097d9a2ab2ead55cab8979e29bcf2ead8b7a2141c1175f8bc2ed54f3333435455b552e04ef0e3f25b943d63a682da40088a812088c229e9afb3af6b806',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '531e53866638657fabdd20315f1639a59887c3db538b4917e5bea0a9f20ca66908848a279e47dbc1be3a880fc4052272be106f3fa2a1e3d6fc300c5e92405106',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 5,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              'af7bb2a9740c4a3de2ec239850523a43dd0689a1a73fc11dce399bfbfbf527c140d5751b45fc8bb733be2eab4610f56e947190c5dcbd0b72e3b236388cd17608',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(50002),
  ),
];
