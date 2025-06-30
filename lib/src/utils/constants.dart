const int harden = 0x80000000;

const int claCardano = 0xD7;

const int maxChunkSize = 240;

const int maxVotecastChunkSize = 240;
const int votecastHashLength = 32;

const int signTxIncludedNo = 1;
const int signTxIncludedYes = 2;

const int p2OutputDatum = 0x34;
const int p2OutputDatumChunk = 0x35;
const int p2OutputScript = 0x36;
const int p2OutputScriptChunk = 0x37;
const int p2OutputConfirm = 0x33;
const int p2OutputBasicData = 0x30;

const int p2MintBasicData = 0x30;
const int p2MintConfirm = 0x33;

const int p2AssetGroup = 0x31;
const int p2Token = 0x32;

const p2PoolParamsLegacy = 0x30;
const p2OwnersLegacy = 0x31;
const p2RelaysLegacy = 0x32;
const p2MetadataLegacy = 0x33;
const p2ConfirmationLegacy = 0x34;

const int txHashLength = 32;

const int addressHexLength = 256;

const int max32BitValue = 0xFFFFFFFF;

const int p1Unused = 0x00;
const int p1ReturnDataToHost = 0x01;
const int p1DisplayOnDevice = 0x02;
const int p1FinishScriptHash = 0x03;
const int ed25519SignatureLength = 64;
const int keyHashLength = 56;

const int auxiliaryDataHashHexLength = 64;

const int maxBIP32PathLength = 10;

const int maxUrlLength = 128;

const int txHashHexMaxLength = 64;

const int p2CollateralOutputBasicData = 0x30;
const int p2CollateralOutputConfirm = 0x33;

const int p2InitPool = 0x30;
const int p2PoolKey = 0x31;
const int p2VrfKey = 0x32;
const int p2Financials = 0x33;
const int p2RewardAccount = 0x34;
const int p2Owners = 0x35;
const int p2Relays = 0x36;
const int p2Metadata = 0x37;
const int p2Confirmation = 0x38;

const int datumHashLength = 64;

const int scriptHashLength = 56;

const int policyIdLength = 56;

const int scriptDataHashLength = 64;

const int kesPublicKeyLength = 64;

const int cvotePublicKeyLength = 32;

const int stringLength64Bytes = 64;

const int maxHumanAddressLength = 150;

const int p2Unused = 0x00;
const int p1StageChunk = 0x02;
const int p1StageWitness = 0x04;
const int p1StageInit = 0x01;
const int p1StageAuxData = 0x08;
const int p1StageInputs = 0x02;
const int p1StageOutputs = 0x03;
const int p1StageFee = 0x04;
const int p1StageTtl = 0x05;
const int p1StageCertificates = 0x06;
const int p1StageWithdrawals = 0x07;
const int p1StageValidityIntervalStart = 0x09;
const int p1StageMint = 0x0b;
const int p1StageScriptDataHash = 0x0c;
const int p1StageCollateralInputs = 0x0d;
const int p1StageRequiredSigners = 0x0e;
const int p1StageCollateralOutput = 0x12;
const int p1StageTotalCollateral = 0x10;
const int p1StageReferenceInputs = 0x11;
const int p1StageVotingProcedures = 0x13;
const int p1StageTreasury = 0x15;
const int p1StageDonation = 0x16;
const int p1StageConfirm = 0x0a;
const int p1StageConfirmVote = 0x03;
const int p1StageWitnesses = 0x0f;

const String maxUint64Str = "18446744073709551615";

const p2Init = 0x36;
const p2VoteKey = 0x30;
const p2Delegation = 0x37;
const p2StakingKey = 0x31;
const p2PaymentAddress = 0x32;
const p2Nonce = 0x33;
const p2VotingPurpose = 0x35;
const p2Confirm = 0x34;
const auxiliaryDataHashLength = 32; // Placeholder length

const String maxLovelaceSupplyStr = "45000000000000000";
const int poolRegistrationOwnersMax = 1000;
const int poolRegistrationRelaysMax = 1000;
const int assetGroupsMax = 1000;
const int tokensInGroupMax = 1000;

enum NativeScriptHashDisplayFormat {
  bech32(1),
  policyId(2);

  final int int8Value;
  const NativeScriptHashDisplayFormat(this.int8Value);
}

const unknownResponseCodeMessage = "Unknown error code";

enum InstructionType {
  deriveAddress(insValue: 0x11),
  getVersion(insValue: 0x00),
  getExtendedPublicKey(insValue: 0x10),
  getSerial(insValue: 0x01),
  deriveNativeScriptHash(insValue: 0x12),
  signOperationalCertificate(insValue: 0x22),
  signTransaction(insValue: 0x21),
  runTests(insValue: 0xF0),
  signCip36Vote(insValue: 0x23);

  final int insValue;

  const InstructionType({required this.insValue});
}

enum SpendingDataSourceType {
  none("no_spending"),
  path("spending_path"),
  scriptHash("spending_script_hash");

  final String value;
  const SpendingDataSourceType(this.value);
}

enum AddressType {
  byron(8),
  basePaymentKeyStakeKey(0),
  basePaymentScriptStakeKey(1),
  basePaymentKeyStakeScript(2),
  basePaymentScriptStakeScript(3),
  enterpriseKey(6),
  enterpriseScript(7),
  pointerKey(4),
  pointerScript(5),
  rewardKey(14),
  rewardScript(15);

  final int value;
  const AddressType(this.value);
}

enum OptionFlags {
  tagCborSets(1);

  final int value;
  const OptionFlags(this.value);
}

enum TxOutputFormat {
  arrayLegacy(0),
  mapBabbage(1);

  final int value;
  const TxOutputFormat(this.value);
}

enum CIP36VoteDelegationType {
  key(0x01),
  path(0x02);

  final int encodingValue;
  const CIP36VoteDelegationType(this.encodingValue);
}

enum VoteOption {
  no(0),
  yes(1),
  abstain(2);

  final int value;
  const VoteOption(this.value);
}

enum TxAuxiliaryDataSupplementType {
  cip36Registration("cip36_voting_registration");

  final String value;
  const TxAuxiliaryDataSupplementType(this.value);
}

enum CIP36VoteRegistrationFormat {
  cip15(0x01),
  cip36(0x02);

  final int encodingValue;
  const CIP36VoteRegistrationFormat(this.encodingValue);
}

enum RelayType {
  /// Relay is a single host specified with IPv4 or IPv6
  /// @see [SingleHostIpAddrRelayParams]
  singleHostIpAddr(0),

  /// Relay is a single host specified as dns name
  /// @see [SingleHostHostnameRelayParams]
  singleHostname(1),

  /// Relay is multiple hosts reachable under dns name
  /// @see [MultiHostRelayParams]
  multiHost(2);

  final int value;
  const RelayType(this.value);
}

enum ShelleyAddressRole {
  payment(0), // external/payments
  change(1), // internal/change
  stake(2),
  drepCredential(3),
  constitutionalCommitteeCold(4),
  constitutionalCommitteeHot(5);

  final int derivationIndex;

  const ShelleyAddressRole(this.derivationIndex);

  static ShelleyAddressRole fromDerivationIndex(int index) =>
      ShelleyAddressRole.values.firstWhere((e) => e.derivationIndex == index);
}
