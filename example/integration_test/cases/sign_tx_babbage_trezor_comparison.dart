import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final testsBabbageTrezorComparison = [
  SignTxTestCase(
    testName: 'Full test for trezor feature parity - Babbage elements (Plutus)',
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
                'addr1q97tqh7wzy8mnx0sr2a57c4ug40zzl222877jz06nt49g4zr43fuq3k0dfpqjh3uvqcsl2qzwuwsvuhclck3scgn3vys6wkj5d',
              ),
            ),
            amount: BigInt.from(2000000),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex:
                    '0d63e8d2c5a00cbcffbdf9112487c443466e1ea7d8c834df5ac5c425',
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
              datumHashHex:
                  '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            ),
          ),
        ],
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        validityIntervalStart: BigInt.from(47),
        scriptDataHashHex: ScriptDataHash(
          hexString:
              '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
        ),
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
        totalCollateral: BigInt.from(10),
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
        ],
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [
        LedgerSigningPath.shelley(
          account: 0,
          address: 0,
          role: ShelleyAddressRole.payment,
        ),
      ],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '3e0c44577b78d0b9628167ca03bfe56d2730e3291b0992d0316e6eebabf0685e',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'b6625562153024a481503905b9d05b9e3b6c1b5267f2cce6531e93a14052a1c7db6cc799d77c3ce4f1efd5b7b199c28af4aca6ca59d0d1423eac476e748a8901',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName:
        'Full test for trezor feature parity - Babbage elements (ordinary)',
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
          ParsedOutput.babbage(
            destination: ParsedOutputDestination.thirdParty(
              addressHex: bech32ToHex(
                'addr1w9rhu54nz94k9l5v6d9rzfs47h7dv7xffcwkekuxcx3evnqpvuxu0',
              ),
            ),
            amount: BigInt.from(1),
            datum: ParsedDatum.inline(
              datumHex: '5579657420616e6f746865722063686f636f6c617465',
            ),
            referenceScriptHex:
                '0080f9e2c88e6c817008f3a812ed889b4a4da8e0bd103f86e7335422aa122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277',
          ),
        ],
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        validityIntervalStart: BigInt.from(47),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'de264f4b285415fd88932156862e775be26aab30a0003767aa8a04881595f77f',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'a655f96ffc6fe56c5f9287dc28474805a97a46b85def8002cb1d4ee975fe69ae89a4a24c317db9cc3c7390410465ded89f349d081de5fd757689af9b6c125609',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];
