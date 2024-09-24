import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final testsConwayWithCertificates = [
  SignTxTestCase(
    testName: 'Sign tx with a stake registration path certificate --- Conway',
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
              addressHex: base58ToHex(
                'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
              ),
            ),
            amount: BigInt.from(3003112),
          ),
        ],
        certificates: [
          ParsedCertificate.stakeRegistrationConway(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
            deposit: BigInt.from(17),
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '26ab8ebe60e70fffd59eb186ed6903ccd5a27c2468da72c5033b596dd41d1745',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '128c993b5873029f98df738191462c6e8903ec2a765f7ddcc3a5722b5555e4ef2cccc4464bbdfb606627fe48e97f2db94f68c9d71b4076c93db682bd357ffa0b',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              'bf22ca4b78fa64692a8cfbc375611deb1d60043db880ff000aeba7e4970492daa4e814c79960977816a91f9dd179bec6f127d37b8955589674e385b9a757d507',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
  SignTxTestCase(
    testName: 'Sign tx with a stake deregistration path certificate --- Conway',
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
        certificates: [
          ParsedCertificate.stakeDeregistrationConway(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                2 + harden,
                0 + harden
              ]),
            ),
            deposit: BigInt.from(17),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '58dc7ddba14500538e5de842066bb3a1979687c6ae0c2472d8f1851b4f011e26',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'b0a196ce81930fedb90551d395f7ba2ff8671f1528d1eec85e3d2398174a1bf6c9bc2afc6c14891cf11a24e16c4a6d39f73689f5947170d0f0d9a53418c76400',
        ),
        Witness(
          path: LedgerSigningPath.custom([
            1852 + harden,
            1815 + harden,
            0 + harden,
            2 + harden,
            0 + harden
          ]),
          witnessSignatureHex:
              'c9ee07d3ee9ed1be5576e1ed371393335a98270f2a316ebec6c702e519db1b68a8cfb67039355a46a3f9d96051c74ae4e13e41d1ad05c3a401a8365369ea8407',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
  SignTxTestCase(
    testName: 'Sign tx with vote delegation certificates',
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
        certificates: [
          ParsedCertificate.voteDelegation(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
            dRep: ParsedDRep.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.drepCredential,
              ),
            ),
          ),
          ParsedCertificate.voteDelegation(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
            dRep: ParsedDRep.keyHash(
              keyHashHex:
                  '7afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8',
            ),
          ),
          ParsedCertificate.voteDelegation(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
            dRep: ParsedDRep.scriptHash(
              scriptHashHex:
                  '1afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8',
            ),
          ),
          ParsedCertificate.voteDelegation(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
            dRep: ParsedDRep.abstain(),
          ),
          ParsedCertificate.voteDelegation(
            stakeCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.stake,
              ),
            ),
            dRep: ParsedDRep.noConfidence(),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'b65bfdff7d247058d60b55958111c5b45322fdb3806be0e86a09382bafce3457',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '1a9dd087bce2b189a1d2a3ff6e57017bf6cef86d51ca944a8faf9c04cddafd4336e4bdebc29450c82b766f766b4a7982b5cee9731edb85f9025c7826880de106',
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.stake,
          ),
          witnessSignatureHex:
              '8100907b358d25330003ea0f9606c031256f2ca060322138e3e118676cdea4e949b1a2217e714f6c5686a31fe70e80bcb2d460f8b7f12a7f5926c1211502c70f',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
  SignTxTestCase(
    testName: 'Sign tx with AUTHORIZE_COMMITTEE_HOT certificates',
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
        certificates: [
          ParsedCertificate.authorizeCommitteeHot(
            coldCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                4 + harden,
                0 + harden
              ]),
            ),
            hotCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                5 + harden,
                0 + harden
              ]),
            ),
          ),
          ParsedCertificate.authorizeCommitteeHot(
            coldCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                4 + harden,
                0 + harden
              ]),
            ),
            hotCredential: ParsedCredential.keyHash(
              keyHashHex:
                  '1afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8',
            ),
          ),
          ParsedCertificate.authorizeCommitteeHot(
            coldCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                4 + harden,
                0 + harden
              ]),
            ),
            hotCredential: ParsedCredential.scriptHash(
              scriptHashHex:
                  '1afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8',
            ),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'f39823031913a09286755ec2383da73a7248e36f6fc92685928296ec81e43b76',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '73e3c0105404e90f6cccebbd9a1e9bb119c4f0a3d5e489a52d15caa477db35802fefe83dbec748b2c388b9dc193821eac068f519edb89ed2c550bc28e51a7203',
        ),
        Witness(
          path: LedgerSigningPath.custom([
            1852 + harden,
            1815 + harden,
            0 + harden,
            4 + harden,
            0 + harden
          ]),
          witnessSignatureHex:
              'b8075d9666648e02f3e2ab6355fd786b3864cfc18a0070beb60813745a36c68e03b9face68231efc0d13da11069f2b3c7ca9a2c7fbf2119970071607e5c18d01',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
  SignTxTestCase(
    testName: 'Sign tx with RESIGN_COMMITTEE_COLD certificates',
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
        certificates: [
          ParsedCertificate.resignCommitteeCold(
            coldCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                4 + harden,
                0 + harden
              ]),
            ),
            anchor: ParsedAnchor(
              url: 'x' * 128, // max url length in anchor
              hashHex:
                  '1afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8deadbeef',
            ),
          ),
          ParsedCertificate.resignCommitteeCold(
            coldCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                4 + harden,
                0 + harden
              ]),
            ),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '5b6d2cc6f1401d783dd5012200337aa2df4407e28267c4ea7d39914adacde25d',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '82f826cea558d08e833e3657f6afaba0175813a7de5bda7c0e075f4b08a2833a6e61f7a2587d9b88e919b4b4aa465cc689a6a611c8cf96fe1249f47ffd22ba05',
        ),
        Witness(
          path: LedgerSigningPath.custom([
            1852 + harden,
            1815 + harden,
            0 + harden,
            4 + harden,
            0 + harden
          ]),
          witnessSignatureHex:
              '6eff66993a624cb218bf84dbdd3481212b4586bf1d8ef0a9c6e5bf32c977afbb1e09a1c0f3810f6828b17f9d4f3acee7d59af098e98d46d9a95d5d60fd9a8f07',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
  SignTxTestCase(
    testName: 'Sign tx with DREP_REGISTRATION certificates',
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
        certificates: [
          ParsedCertificate.dRepRegistration(
            dRepCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                3 + harden,
                0 + harden
              ]),
            ),
            deposit: BigInt.from(19),
            anchor: ParsedAnchor(
              url: 'www.vacuumlabs.com',
              hashHex:
                  '1afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8deadbeef',
            ),
          ),
          ParsedCertificate.dRepRegistration(
            dRepCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                3 + harden,
                0 + harden
              ]),
            ),
            deposit: BigInt.from(19),
            anchor: null,
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'd029be88cc6c18578cd49713438270d80b64c0c126b2ce90b8418d6b020e2395',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'ce8634b0306f71be765b655488276e86a56cbe6e77ffdd14e40851394cf6842d695f4184df0dcb8e76dd5918ec9b1b65976b31bf54c5621b34b1ff58d631540d',
        ),
        Witness(
          path: LedgerSigningPath.custom([
            1852 + harden,
            1815 + harden,
            0 + harden,
            3 + harden,
            0 + harden
          ]),
          witnessSignatureHex:
              'd1600ce316bac100729207b08550d53f77834983fa4ae1285d8b8478d813cb8a9321588026e40521147718ba3708c533e4b37f890bc9b66ac0456534e926ce06',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
  SignTxTestCase(
    testName: 'Sign tx with DREP_DEREGISTRATION certificate',
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
        certificates: [
          ParsedCertificate.dRepDeregistration(
            dRepCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                3 + harden,
                0 + harden
              ]),
            ),
            deposit: BigInt.from(19),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'ddac3d3a8a4554f7dd1797a7bfdd4ec19ddf13d20f3b9ea79ed37d5663b51497',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '903e42d8f48c60d4bacc8aa953bff66c79ef8b48c2eece243f03d32146f9d213e6595809bc6c13e2ebb13f990ad0ef7bb937eab6a9d251c35aae7bafc2c51702',
        ),
        Witness(
          path: LedgerSigningPath.custom([
            1852 + harden,
            1815 + harden,
            0 + harden,
            3 + harden,
            0 + harden
          ]),
          witnessSignatureHex:
              '56786aa0710832c8ef584ebe964473cd21eb15b4b60057a5d96973f6a4687176d1f7cbecde585f7b875fc75ad73a9404733219d61ee542363ef4baa8a1bb1504',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
  SignTxTestCase(
    testName: 'Sign tx with DREP_UPDATE certificates',
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
        certificates: [
          ParsedCertificate.dRepUpdate(
            dRepCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                3 + harden,
                0 + harden
              ]),
            ),
            anchor: ParsedAnchor(
              url: 'www.vacuumlabs.com',
              hashHex:
                  '1afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8deadbeef',
            ),
          ),
          ParsedCertificate.dRepUpdate(
            dRepCredential: ParsedCredential.keyPath(
              path: LedgerSigningPath.custom([
                1852 + harden,
                1815 + harden,
                0 + harden,
                3 + harden,
                0 + harden
              ]),
            ),
          ),
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '85b23eda26bd9f6f9f4ce80f7d1e9c0cf3afcb33a39c0102711a81a96715d2e6',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'e65f9e0d99db02f1a39b8af92b9f7e8f6509b24cbd6f4492e19d699f5f7e08d627a64def7408405ff0aadd7504bacfa279a2f1ba550a765f43d06fcac16f1009',
        ),
        Witness(
          path: LedgerSigningPath.custom([
            1852 + harden,
            1815 + harden,
            0 + harden,
            3 + harden,
            0 + harden
          ]),
          witnessSignatureHex:
              '88b20b4bc43f6d45981c658689e6d80886b6aeb02b654363c421462f855654039d5ff3595be6778934b4eff2a24c3a082789f95559bd6e8afa2e8bab339e910d',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
];
