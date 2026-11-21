import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

// Ported from ledgerjs test/integration/__fixtures__/signTxPoolRegistration.ts

final _paymentPath = LedgerSigningPath.shelley(
  account: 0,
  address: 0,
  role: ShelleyAddressRole.payment,
);

final _ownerStakePath = LedgerSigningPath.shelley(
  account: 0,
  address: 0,
  role: ShelleyAddressRole.stake,
);

final _poolColdPath = LedgerSigningPath.poolCold(account: 0, index: 0);

final _inputNoPath = ParsedInput(
  txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
  outputIndex: 0,
  path: null,
);

final _inputWithPath = ParsedInput(
  txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
  outputIndex: 0,
  path: _paymentPath,
);

final _externalShelleyOutput = ParsedOutput.alonzo(
  destination: ParsedOutputDestination.thirdParty(
    addressHex: bech32ToHex(
      'addr1q97tqh7wzy8mnx0sr2a57c4ug40zzl222877jz06nt49g4zr43fuq3k0dfpqjh3uvqcsl2qzwuwsvuhclck3scgn3vys6wkj5d',
    ),
  ),
  amount: BigInt.from(1),
);

// hash of stake key at 1852'/1815'/0'/2/0: 1d227aefa4b773149170885aadba30aab3127cc611ddbc4999def61c
final _pathOwner0 = ParsedPoolOwner.deviceOwned(path: _ownerStakePath);
final _hashOwner0 = ParsedPoolOwner.thirdParty(
  hashHex: '794d9b3408c9fb67b950a48a0690f070f117e9978f7fc1d120fc58ad',
);
final _hashOwner1 = ParsedPoolOwner.thirdParty(
  hashHex: '0bd5d796f5e54866a14300ec2a18d706f7461b8f0502cc2a182bc88d',
);

final _ipv4Relay0 = ParsedPoolRelay.singleHostIpAddr(
  port: 3000,
  ipv4: '54.228.75.154',
);
final _ipv4Relay1 = ParsedPoolRelay.singleHostIpAddr(
  port: 4000,
  ipv4: '54.228.75.154',
);
final _ipv6Relay = ParsedPoolRelay.singleHostIpAddr(
  port: 3000,
  ipv4: '54.228.75.155',
  ipv6: '24ff:7801:33a2:e383:a5c4:340a:07c2:76e5',
);
final _hostnameRelay = ParsedPoolRelay.singletHostname(
  port: 3000,
  dnsName: 'aaaa.bbbb.com',
);
final _multiHostRelay = ParsedPoolRelay.multiHost(dnsName: 'aaaa.bbbc.com');

final _allRelays = [_ipv4Relay0, _ipv6Relay, _hostnameRelay, _multiHostRelay];

final _metadata = ParsedPoolMetadata(
  url: 'https://www.vacuumlabs.com/sampleUrl.json',
  hashHex: 'cdb714fd722c24aeb10c93dbb0ff03bd4783441cd5ba2a8b6f373390520535bb',
);

ParsedPoolParams _poolParams({
  ParsedPoolKey? poolKey,
  ParsedPoolRewardAccount? rewardAccount,
  required List<ParsedPoolOwner> owners,
  required List<ParsedPoolRelay> relays,
  required ParsedPoolMetadata? metadata,
}) => ParsedPoolParams(
  poolKey:
      poolKey ??
      ParsedPoolKey.thirdParty(
        hashHex: '13381d918ec0283ceeff60f7f4fc21e1540e053ccf8a77307a7a32ad',
      ),
  vrfHashHex: '07821cd344d7fd7e3ae5f2ed863218cb979ff1d59e50c4276bdc479b0d084450',
  pledge: BigInt.from(50000000000),
  cost: BigInt.from(340000000),
  margin: ParsedMargin(
    numerator: BigInt.from(3),
    denominator: BigInt.from(100),
  ),
  rewardAccount:
      rewardAccount ??
      ParsedPoolRewardAccount.thirdParty(
        rewardAccountHex: 'e1794d9b3408c9fb67b950a48a0690f070f117e9978f7fc1d120fc58ad',
      ),
  owners: owners,
  relays: relays,
  metadata: metadata,
);

ParsedSigningRequest _ownerRequest(
  ParsedPoolParams pool, {
  List<ParsedOutput>? outputs,
}) => ParsedSigningRequest(
  tx: ParsedTransaction(
    network: CardanoNetwork.mainnet(),
    fee: BigInt.from(42),
    ttl: BigInt.from(10),
    inputs: [_inputNoPath],
    outputs: outputs ?? [_externalShelleyOutput],
    certificates: [ParsedCertificate.stakePoolRegistration(pool: pool)],
  ),
  signingMode: TransactionSigningModes.poolRegistrationAsOwner,
  additionalWitnessPaths: [],
);

ParsedSigningRequest _operatorRequest(ParsedPoolParams pool) => ParsedSigningRequest(
  tx: ParsedTransaction(
    network: CardanoNetwork.mainnet(),
    fee: BigInt.from(42),
    ttl: BigInt.from(10),
    inputs: [_inputWithPath],
    outputs: [_externalShelleyOutput],
    certificates: [ParsedCertificate.stakePoolRegistration(pool: pool)],
  ),
  signingMode: TransactionSigningModes.poolRegistrationAsOperator,
  additionalWitnessPaths: [],
);

final testsPoolRegistration = [
  SignTxTestCase(
    testName: 'Sign tx with pool registration as owner, multiple mixed owners, all relays',
    request: _ownerRequest(
      _poolParams(
        owners: [_pathOwner0, _hashOwner0],
        relays: _allRelays,
        metadata: _metadata,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: 'bc678441767b195382f00f9f4c4bddc046f73e6116fa789035105ecddfdee949',
      witnesses: [
        Witness(
          path: _ownerStakePath,
          witnessSignatureHex:
              '61fc06451462426b14fa3a31008a5f7d32b2f1793022060c02939bd0004b07f2bd737d542c2db6cef6dad912b9bdca1829a5dc2b45bab3c72afe374cef59cc04',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool registration as owner, single path owner, ipv4 relay',
    request: _ownerRequest(
      _poolParams(
        owners: [_pathOwner0],
        relays: [_ipv4Relay0],
        metadata: _metadata,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: '4ea6c33b8f9714996080700d0e8480b2ab1136641ea8c3b08572be189c9825ab',
      witnesses: [
        Witness(
          path: _ownerStakePath,
          witnessSignatureHex:
              'f03947901bcfc96ac8e359825091db88900a470947c60220fcd3892683ec7fe949ef4e28a446d78a883f034cd77cbca669529a9da3f2316b762eb97033797a07',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool registration as owner, multiple mixed owners, ipv4 relay',
    request: _ownerRequest(
      _poolParams(
        owners: [_pathOwner0, _hashOwner0],
        relays: [_ipv4Relay0],
        metadata: _metadata,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: '322872680d2f13e2d50c806572b28a95e12bbea2e8e27db44e369e5d304929df',
      witnesses: [
        Witness(
          path: _ownerStakePath,
          witnessSignatureHex:
              'c1b454f3cf868007d2850084ff404bc4b91d9b541a78af9014288504143bd6b4f12df2163b7efb1817636eb625a62967fb66281ecae4d1b461770deafb65ba0f',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool registration as owner, mixed owners, ipv4 and single host relays',
    request: _ownerRequest(
      _poolParams(
        owners: [_pathOwner0, _hashOwner0],
        relays: [_ipv4Relay0, _hostnameRelay],
        metadata: _metadata,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: 'a41a6e4e00ad04824455773302f95a179c03f583f969862a479d4805b53a708f',
      witnesses: [
        Witness(
          path: _ownerStakePath,
          witnessSignatureHex:
              '8bb8c10b390ac92f617ba6895e3b138f43dc741e3589a9548166d1eda995becf4a229e9e95f6300336f7e92345b244c5dc78cfe0cc12cac6ff6fbb5731671c0e',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool registration as owner, mixed owners, ipv4 and ipv6 relays',
    request: _ownerRequest(
      _poolParams(
        owners: [_pathOwner0, _hashOwner0],
        relays: [_ipv4Relay1, _ipv6Relay],
        metadata: _metadata,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: 'ab64050759a4221d4a8568badf06c444b42dae05fb2d22b0dff5749a49e5d332',
      witnesses: [
        Witness(
          path: _ownerStakePath,
          witnessSignatureHex:
              'b0e6796ca5f97a0776c798e602afd0f6541996d431a3cbec8e3fe77eb49416cd812dcf6084672e40c9ae2b8cc8a5513d1b1a6c3ad408864d4a771e315c50d808',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool registration as owner, single path owner, no relays',
    request: _ownerRequest(
      _poolParams(
        owners: [_pathOwner0],
        relays: [],
        metadata: _metadata,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: 'fc4778c13fadb8b69249b4cd98ef45f42145e1ce081c5466170a670829dc2184',
      witnesses: [
        Witness(
          path: _ownerStakePath,
          witnessSignatureHex:
              'adc06e34dc66f01b16496b04fc4ce5058e3be7290398cf2728f8463dda15c87866314449bdb309d0cdc22f3ca9bee310458f2769df6a1486f1b470a3227a030b',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    // works as a private pool not visible in yoroi, daedalus, etc.
    testName: 'Sign tx with pool registration as owner, no metadata',
    request: _ownerRequest(
      _poolParams(
        owners: [_pathOwner0],
        relays: [_ipv4Relay0],
        metadata: null,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: 'a97b2258962537e0ad3cbcb1fbf9d454f55bc9b7feb2bea0da23f82c1e956f67',
      witnesses: [
        Witness(
          path: _ownerStakePath,
          witnessSignatureHex:
              '06e66f6a2d510a8a5446597c59c79cbf4f9e7af9073da0651ea59bbdc2340dc933ed292aa282e6ea7068bed9f6bcb44228573e661c211e6dc61f4dd73ff41f04',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool registration as owner, without outputs',
    request: _ownerRequest(
      _poolParams(
        owners: [_pathOwner0, _hashOwner0],
        relays: _allRelays,
        metadata: _metadata,
      ),
      outputs: [],
    ),
    expected: SignedTransactionData(
      txHashHex: '600114fd1c50a7e857fdcaaea73d94f7435c9fce63cfde597f7c48b8dda3b0ba',
      witnesses: [
        Witness(
          path: _ownerStakePath,
          witnessSignatureHex:
              '91c09ad95d5d0f87f61a62e2f5e2dda4245eb4011887a04a53bdf085282002ccc712718e855e36a30cfcf7ecd43bcdc795aa87647be9c716b65e7fcf376e0503',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool registration as operator, no owners, no relays',
    request: _operatorRequest(
      _poolParams(
        poolKey: ParsedPoolKey.deviceOwned(path: _poolColdPath),
        owners: [],
        relays: [],
        metadata: _metadata,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: '75a57a27893443eb7bb6e4746b6d52ba74c401ece0d2a2570322d6b7d07c29a7',
      witnesses: [
        Witness(
          path: _paymentPath,
          witnessSignatureHex:
              '2bff91cbd14ae53a2d476bd27306a7117d705c4fb58248af4f9b86c770991ea9785a39924d824a75b9ee0632b52c4267e6afec41e206a03b4753c5a397275807',
        ),
        Witness(
          path: _poolColdPath,
          witnessSignatureHex:
              'a92f621f48c785103b1dab862715beef0f0dc2408d0668422286a1dbc268db9a32cacd3b689a0c6af32ab2ac5057caac13910f09363e2d2db0dde4a27b2b5a09',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool registration as operator, one owner, no relays',
    request: _operatorRequest(
      _poolParams(
        poolKey: ParsedPoolKey.deviceOwned(path: _poolColdPath),
        rewardAccount: ParsedPoolRewardAccount.deviceOwned(
          path: LedgerSigningPath.shelley(
            account: 3,
            address: 0,
            role: ShelleyAddressRole.stake,
          ),
        ),
        owners: [_hashOwner0],
        relays: [],
        metadata: _metadata,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: '486d70234b174592fffb1e750fe9580e4d88a39cd7668514b244a885251e5344',
      witnesses: [
        Witness(
          path: _paymentPath,
          witnessSignatureHex:
              '12776e69a6ea50ad42cdf0e164afc5a8b4fab612868ab990ead677ba4ced3ea2ad25b27ef5b27296add22c7378689a8572eb10ce24483b2ab8140b8aa5b1f70c',
        ),
        Witness(
          path: _poolColdPath,
          witnessSignatureHex:
              'd8851757cf6dc978fc4b3db42111124e83e99d58739a21ecf23c6b5de316a8fe6d03767df45e62ad7b64872a73a68427ce83f6a856ebd196897e4d96c3173d06',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: 'Sign tx with pool registration as operator, multiple owners, all relays',
    request: _operatorRequest(
      _poolParams(
        poolKey: ParsedPoolKey.deviceOwned(path: _poolColdPath),
        owners: [_hashOwner0, _hashOwner1],
        relays: _allRelays,
        metadata: _metadata,
      ),
    ),
    expected: SignedTransactionData(
      txHashHex: '7ece5d431b09770f2e24c190e96c3884866ba4c9cd3292d4b42d286af5f3f872',
      witnesses: [
        Witness(
          path: _paymentPath,
          witnessSignatureHex:
              '9f6da51173411ba82e76695ccf7c222f1df7444b0bbc1af354800acf244a4eaf72e95853406918e3ef461569fe99b39e33164ab440510f75df06e4ff89ca9107',
        ),
        Witness(
          path: _poolColdPath,
          witnessSignatureHex:
              '8957a7768bc9389cd7ab6fa3b3e2fa089785715a5298f9cb38abf99a6e0da5bef734c4862ca7948fb69575ccb9ed8ae1d92cc971742f674632f6f03e22c5b103',
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];
