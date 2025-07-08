import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

class CVoteTestCase {
  final String testName;
  final ParsedSigningRequest request;
  final SignedTransactionData expected;
  final CardanoVersion? minSupportedVersion;

  CVoteTestCase({
    required this.testName,
    required this.request,
    required this.expected,
    this.minSupportedVersion,
  });
}

final testsCatalystRegistration = [
  CVoteTestCase(
    testName: 'Sign tx with Catalyst registration metadata with base address',
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
        validityIntervalStart: BigInt.from(7),
        auxiliaryData: ParsedTxAuxiliaryData.cip36Registration(
          params: ParsedCVoteRegistrationParams(
            format: CIP36VoteRegistrationFormat.cip15,
            votePublicKey: CVotePublicKey(
              value: '4b19e27ffc006ace16592311c4d2f0cafc255eaa47a6178ff540c0a46d07027c',
            ),
            votePublicKeyPath: null,
            paymentDestination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
                  spendingDataSource: SpendingDataSourcePath(
                    path: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
                  ),
                  stakingDataSource: StakingDataSource.keyPath(
                    path: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.stake),
                  ),
                ),
              ),
            ),
            nonce: BigInt.from(1454448),
            delegations: null,
            votingPurpose: null,
            stakingPath: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.stake,
            ),
          ),
        ),
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '9941060a76f5702e72b43c382f77b143ed0e328ac3977a0791f08a5f0e0149cd',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              'b0bc6b3ddc0ab65e5b2e83cfdedbbf76619c3a833705f634f1c8c335dc7c1c5372ec7ebb8199d6d18204da4a0168a172c41c6dd53f45235225f5e62b672ca709',
        ),
      ],
      auxiliaryDataSupplement: TxAuxiliaryDataSupplement(
        auxiliaryDataHashHex: 'e9141b460aea0abb69ce113c7302c7c03690267736d6a382ee62d2a53c2ec926',
        cip36VoteRegistrationSignatureHex:
            '0ca3bb69cad5f471ddd32097a8501e3956e4ae0c2bf523625d1686b123dcc04af240630eb93bf1069c607b59bbe7d521fb8dd14a4312788bc0b72b7473ee160e',
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(60102),
  ),
  CVoteTestCase(
    testName: 'Sign tx with Catalyst registration metadata with stake address',
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
        auxiliaryData: ParsedTxAuxiliaryData.cip36Registration(
          params: ParsedCVoteRegistrationParams(
            votePublicKey: CVotePublicKey(
              value: '4b19e27ffc006ace16592311c4d2f0cafc255eaa47a6178ff540c0a46d07027c',
            ),
            stakingPath: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.stake,
            ),
            format: CIP36VoteRegistrationFormat.cip15,
            paymentDestination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
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
            nonce: BigInt.from(1454448),
            delegations: null,
            votingPurpose: null,
            votePublicKeyPath: null,
          ),
        ),
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '90ab18ad3a25cb9f48470cb16a51e1fe04181b96f639d939c51ca81ab4c0fa23',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '138afde8640bd8d1a08309455f604d842d65a85e5ce2f584974f004e9043dea670ead5de3e4895a320f94033d5476d56ccf7147f327156cc30aef8304c66c006',
        ),
      ],
      auxiliaryDataSupplement: TxAuxiliaryDataSupplement(
        auxiliaryDataHashHex: 'd19f7cb4d48a6ae8d370c64d2a42fca1f61d6b2cf3d0c0c02801541811338deb',
        cip36VoteRegistrationSignatureHex:
            '1514b6bbc582b33edcf5fa30ec04dcaa62128de8755c786768ae5922132c2aa50b9ba17be28072de979f45b0f429c7f5d489c549a1e22bc8e7d0b2445c103609',
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(60102),
  ),
];

final testsCVoteRegistrationCIP36 = [
  CVoteTestCase(
    testName: 'Sign tx with CIP36 registration with vote key hex',
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
        auxiliaryData: ParsedTxAuxiliaryData.cip36Registration(
          params: ParsedCVoteRegistrationParams(
            votePublicKey: CVotePublicKey(
              value: '4b19e27ffc006ace16592311c4d2f0cafc255eaa47a6178ff540c0a46d07027c',
            ),
            format: CIP36VoteRegistrationFormat.cip36,
            stakingPath: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.stake,
            ),
            paymentDestination: ParsedOutputDestination.deviceOwned(
              addressParams: ParsedAddressParams.shelley(
                shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
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
            nonce: BigInt.from(1454448),
            votePublicKeyPath: null,
            delegations: null,
            votingPurpose: null,
          ),
        ),
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '358f273c7416fba90abaec19dfa96eb7257ffd047edcb8f035acb0403bd3c6ce',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '60e3674421e004efcb6c893ec69a7131d52688cd927512510d59d83280639af55cbc05ae75bf7711d2562c26fa966ca17e908664c6fa7a042b7aac5a7f32d80d',
        ),
      ],
      auxiliaryDataSupplement: TxAuxiliaryDataSupplement(
        auxiliaryDataHashHex: '1999b3bb9102b585c42616e40cf1290518d788f967ab4b3329dcb712ac933da0',
        cip36VoteRegistrationSignatureHex:
            'd07070f841e17f50139bfd6cadeaa89ce87474200db051f48d585cba52360f52444db9b4529e1721348763374f35fa8a054d5a3931fb3524484aa910cf465505',
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(60102),
  ),
  CVoteTestCase(
    testName: 'Sign tx with CIP36 registration with vote key path',
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
        validityIntervalStart: BigInt.from(7),
        auxiliaryData: ParsedTxAuxiliaryData.cip36Registration(
          params: ParsedCVoteRegistrationParams(
            votePublicKey: null,
            format: CIP36VoteRegistrationFormat.cip36,
            votePublicKeyPath: LedgerSigningPath.cip36(account: 0, address: 1),
            stakingPath: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.stake,
            ),
            paymentDestination: ParsedOutputDestination.deviceOwned(
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
            nonce: BigInt.from(1454448),
            votingPurpose: null,
            delegations: null,
          ),
        ),
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '7244322ab32df88ab579dd67da9f77fe172129059ed8c8896dddb35573ee3dcd',
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              '12cc08ec7f2047970a03ce68148392bceb870bc4735cda7ad3eb1eca17e7f5938d7790c8d51b2fcc7c1fd71571ea9fdee0f9a2702942fdd2e38bfc3573e5bf0f',
        ),
      ],
      auxiliaryDataSupplement: TxAuxiliaryDataSupplement(
        auxiliaryDataHashHex: 'd05698c555a117014a3b360a66931ec43bf18e2aa16560fc99dbd92dd7f6f654',
        cip36VoteRegistrationSignatureHex:
            '0e42a6796426b14876d522a08ffff450971f15a61ee81ba7f34d55a51a43e3928b965fd12e3c0b6e35a8d887e3e9acce466e4069ee44ab250d9976c491978301',
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(60102),
  ),
];
