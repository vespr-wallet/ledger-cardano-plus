import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

import '../sign_tx_test_cases.dart';
import '../test_utils.dart';

final testsConwayVotingProcedures = [
  SignTxTestCase(
    testName: "Sign tx with voting procedures, COMMITTEE_KEY_PATH voter",
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: _inputs,
        outputs: _outputs,
        votingProcedures: [
          ParsedVoterVotes(
            voter: ParsedVoter.committeeKeyPath(
              keyPath: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.constitutionalCommitteeHot,
              ),
            ),
            votes: [_vote1],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: "1878027bc8ffa79d279f5c739a18817598382f1f181c0722954642e28a552417",
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              "740d2c38e72b017566ee04cce0329795df75b9c5b5ab40045faabaafba16e80894169467a62db6e6a7110e9c3591819e9ba023c40598309c1db401ea6b84d107",
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.constitutionalCommitteeHot,
          ),
          witnessSignatureHex:
              "87045d01fed7fe418601fd529ada773e40e48973760a10bff18702b76ad50d689cc17f350faba86aeea587441d3bc0856c3d650644cdf67e00ebdf4be9768f0c",
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: "Sign tx with voting procedures, DREP_KEY_PATH voter",
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: _inputs,
        outputs: _outputs,
        votingProcedures: [
          ParsedVoterVotes(
            voter: ParsedVoter.drepKeyPath(
              keyPath: LedgerSigningPath.shelley(
                account: 0,
                address: 0,
                role: ShelleyAddressRole.drepCredential,
              ),
            ),
            votes: [_vote2],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: "c76996d3e2bce5d61c19e5c6f4e69dbda650f14b706b95c440e4f4dbe56f584c",
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              "8ed6756e5913a5cf965fda822a61c0f1691e795709104194483915d383b3ed4dbeae8c1258fd4fa2a915e0a573c3a8fe5ee2bf1c56652e02f2729cdea7f43a03",
        ),
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.drepCredential,
          ),
          witnessSignatureHex:
              "901cb9f18ada4c07fb7b132fc7859d6e1a3beb42934f58d4d44fb8fbeef066a349482d4c159ecd54b61b4cb34e4db1fc5c57cc3b6bb4a040cf61d6dd88f73901",
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: "Sign tx with voting procedures, STAKE_POOL_KEY_PATH voter",
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: _inputs,
        outputs: _outputs,
        votingProcedures: [
          ParsedVoterVotes(
            voter: ParsedVoter.stakePoolKeyPath(
              keyPath: LedgerSigningPath.custom(
                [
                  harden + 1853,
                  harden + 1815,
                  harden + 0,
                  harden + 0,
                ],
              ),
            ),
            votes: [_vote3],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: "a883078593d6e64486f54bb975230f47d43e4a92f3a6bdef60a522197610c947",
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              "8fcacfc066da36cab795cc820433fc4cef8cc0b8f3b62fb95a32da1056aea878411e8f6b891d1f77881f1b95903fb6c4fd4c3922b44de7dc790909a1d1dcb800",
        ),
        Witness(
          path: LedgerSigningPath.custom(
            [
              harden + 1853,
              harden + 1815,
              harden + 0,
              harden + 0,
            ],
          ),
          witnessSignatureHex:
              "745e2b96ae05133dba57695aff7a37e35a2c21f3c53174f280df5661974626839ed7cf6362a75db50349c30e935e2993a8493ef2a600e96fc67542cede5bbf02",
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: "Sign tx with voting procedures, COMMITTEE_KEY_HASH voter",
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: _inputs,
        outputs: _outputs,
        votingProcedures: [
          ParsedVoterVotes(
            voter: ParsedVoter.committeeKeyHash(
              keyHashHex: "7afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8",
            ),
            votes: [_vote1],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: "e19f0cdcd735f6ea53f5673e593008af68a182f66c1027aa31fd8da449b7cf5b",
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              "6d4d4be3cae6d5cac5721fe29b6bbc445bfce24b6ebc6be663043e240a575a96238e0beea8391a080fb060e290b7661413c275ef3ba0458af86df30ed62f6202",
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: "Sign tx with voting procedures, COMMITTEE_SCRIPT_HASH voter",
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: _inputs,
        outputs: _outputs,
        votingProcedures: [
          ParsedVoterVotes(
            voter: ParsedVoter.committeeScriptHash(
              scriptHashHex: "7afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8",
            ),
            votes: [_vote2],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: "05af307259f8f07f34c536ce037b1a443c7a1be8e62f644c37364d3210b744d8",
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              "803bd1793c4afdf303d9ae5e7ec2eef7344663f0cfc77a5f8327fb51c693d6a13f07066cb01ab12d575a1fc45f2747ff3a2302edd5048a74b6e205bed0384e00",
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: "Sign tx with voting procedures, DREP_KEY_HASH voter",
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: _inputs,
        outputs: _outputs,
        votingProcedures: [
          ParsedVoterVotes(
            voter: ParsedVoter.drepKeyHash(
              keyHashHex: "7afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8",
            ),
            votes: [_vote3],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: "4cc800d11a4464c352841e393543981bfeb35dfef04037519c0170dce87c5198",
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              "7d8002af012f8ec0b67b3679f80f9119794062827834ded271be2e014970dd4206d6a53936d557daa74996d85812d6f541bad9578a05927d0c0778d63463f409",
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: "Sign tx with voting procedures, DREP_SCRIPT_HASH voter",
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: _inputs,
        outputs: _outputs,
        votingProcedures: [
          ParsedVoterVotes(
            voter: ParsedVoter.drepScriptHash(
              scriptHashHex: "7afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8",
            ),
            votes: [_vote1],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: "00881f4f414a32bd7e3e06036935b8a37944dc3d348216df6a1470fb4e2f04ae",
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              "efd40f0cb90f93b3c664a1a8aba72941c570c07351db43054a399be4b0020d052397c8fdc28f2ed949d29b0d2040d5c296f447c0e104ed6ae58c553405e8c202",
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
  SignTxTestCase(
    testName: "Sign tx with voting procedures, STAKE_POOL_KEY_HASH voter",
    minSupportedVersion: CardanoVersion.fromVersionCode(70000),
    request: ParsedSigningRequest(
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        fee: BigInt.from(42),
        ttl: BigInt.from(10),
        inputs: _inputs,
        outputs: _outputs,
        votingProcedures: [
          ParsedVoterVotes(
            voter: ParsedVoter.stakePoolKeyHash(
              keyHashHex: "7afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8",
            ),
            votes: [_vote1],
          ),
        ],
      ),
      signingMode: TransactionSigningModes.plutusTransaction,
      additionalWitnessPaths: [],
    ),
    expected: SignedTransactionData(
      txHashHex: "623dd691a60d25e379424eceae1052acff119013c56bd2b73e8e1e822d3292bd",
      witnesses: [
        Witness(
          path: LedgerSigningPath.shelley(
            account: 0,
            address: 0,
            role: ShelleyAddressRole.payment,
          ),
          witnessSignatureHex:
              "5e9b164e24e0752c1c9987df83aa4ff9a54455c799231c191e8b150ad7af83db36cd5f91941f65b853f883b6721e4b9f724788fffa2371aaf5644ca53ccc1308",
        ),
      ],
      auxiliaryDataSupplement: null,
    ),
  ),
];

final _inputs = [
  ParsedInput(
    txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
    outputIndex: 0,
    path: LedgerSigningPath.shelley(
      account: 0,
      address: 0,
      role: ShelleyAddressRole.payment,
    ),
  ),
];

final _outputs = [
  ParsedOutput.alonzo(
    destination: ParsedOutputDestination.thirdParty(
      addressHex: base58ToHex(
        'Ae2tdPwUPEZCanmBz5g2GEwFqKTKpNJcGYPKfDxoNeKZ8bRHr8366kseiK2',
      ),
    ),
    amount: BigInt.from(3003112),
  ),
];

final _vote1 = ParsedVote(
  govActionId: ParsedGovActionId(
    txHashHex: "3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7",
    govActionIndex: 3,
  ),
  votingProcedure: ParsedVotingProcedure(
    vote: VoteOption.abstain,
    anchor: ParsedAnchor(
      url: "www.vacuumlabs.com",
      hashHex: "1afd028b504c3668102b129b37a86c09a2872f76741dc7a68e2149c8deadbeef",
    ),
  ),
);
final _vote2 = ParsedVote(
  govActionId: ParsedGovActionId(
    txHashHex: "3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7",
    govActionIndex: 3,
  ),
  votingProcedure: ParsedVotingProcedure(
    vote: VoteOption.no,
    anchor: null,
  ),
);
final _vote3 = ParsedVote(
  govActionId: ParsedGovActionId(
    txHashHex: "3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7",
    govActionIndex: 3,
  ),
  votingProcedure: ParsedVotingProcedure(
    vote: VoteOption.yes,
    anchor: null,
  ),
);
