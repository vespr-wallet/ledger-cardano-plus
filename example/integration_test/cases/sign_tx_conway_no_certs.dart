import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final testsConwayWithoutCertificates = [
  SignTxTestCase(
    testName: 'Sign tx with treasury',
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
        treasury: BigInt.from(27),
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          'c3fb3f4330d9f051b567db11d56ab8174cba081373936c9fde80d809b178326f',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'd709944dbc56080b194455a76474981e56c64715b8e5182a58f9f5bba20357f2e02945431145e6fe418b1953424ef1b88e3328f373da1d24cb164d6eb8e0a80f',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
  SignTxTestCase(
    testName: 'Sign tx with donation', // TODO recheck???
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
            amount: BigInt.from(7120787),
          ),
        ],
        donation: BigInt.from(28),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '618718225c0c876fd429ca25957a23ad894eaebc1831365c5b41cba50993a1bf',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex: 
              'eef7538ecd01708a3483900155c3c1545188b671f626a4622864cbfe41a51bfd4c47ccb9ee8accd7891bd0291bce3e44c8363a30ffbe80864af1a29a74239c00',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
  SignTxTestCase( 
    testName: 'Sign tx with treasury and donation', // TODO recheck???
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
            amount: BigInt.from(7120787),
          ),
        ],
        treasury: BigInt.from(27),
        donation: BigInt.from(28),
        includeNetworkId: true,
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex:
          '37e2cf72599186d1ec571af568ea0ab39f7f73ba2e8c5f4725bfd0d4fb8c58e7',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '90627003619a5512c5600542bfe5ece07909433948a601d599f51bc0b3d19b5c8084cf72d2b6ae6962918392c540d60105c32626804986e99364e6966f5e1504',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
  ),
];
