const int harden = 0x80000000;

const int claCardano = 0xD7;

const int maxChunkSize = 255;

const int signTxIncludedNo = 1;
const int signTxIncludedYes = 2;

const int p1Unused = 0x00;
const int p1ReturnDataToHost = 0x01;
const int p1DisplayOnDevice = 0x02;
const int p1FinishScriptHash = 0x03;
const int ed25519SignatureLength = 64;
const int keyHashLength = 56;

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

const int policyIdLength = 28;

const int scriptDataHashLength = 64;

const int kesPublicKeyLength = 64;

const int cvotePublicKeyLength = 32;

const int p2Unused = 0x00;

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
const int p1StageWitnesses = 0x0f;

const p2Init = 0x36;
const p2VoteKey = 0x30;
const p2Delegation = 0x37;
const p2StakingKey = 0x31;
const p2PaymentAddress = 0x32;
const p2Nonce = 0x33;
const p2VotingPurpose = 0x35;
const p2Confirm = 0x34;
const auxiliaryDataHashLength = 32; // Placeholder length

enum NativeScriptType {
  pubkeyDeviceOwned(0),
  pubkeyThirdParty(0),
  all(1),
  any(2),
  nOfK(3),
  invalidBefore(4),
  invalidHereafter(5);

  final int encoding;
  const NativeScriptType(this.encoding);
}

enum PubkeyType {
  deviceOwned(1),
  thirdParty(2);

  final int encoding;
  const PubkeyType(this.encoding);
}

enum NativeScriptHashDisplayFormat {
  bech32(1),
  policyId(2);

  final int int8Value;
  const NativeScriptHashDisplayFormat(this.int8Value);
}

const unknownResponseCodeMessage = "Unknown error code";

enum CardanoResponseCode {
  success(0x9000, "Success"),
  errMalformedRequestHeader(0x6E01, "Malformed request header"),
  errBadCla(0x6E02, "Bad CLA (Command Link Assurance)"),
  errUnknownIns(0x6E03, "Unknown instruction"),
  errStillInCall(0x6E04, "Still in call"),
  errInvalidRequestParameters(0x6E05, "Invalid request parameters"),
  errInvalidState(0x6E06, "Invalid state"),
  errInvalidData(0x6E07, "Invalid data"),
  errInvalidBip44Path(0x6E08, "Invalid BIP44 path"),
  errRejectedByUser(0x6E09, "Rejected by user"),
  errRejectedByPolicy(0x6E10, "Rejected by policy"),
  errDeviceLocked(0x6E11, "Device is locked");

  final int statusCode;
  final String message;
  const CardanoResponseCode(this.statusCode, this.message);
}

enum InstructionType {
  deriveAddress(insValue: 0x11),
  getVersion(insValue: 0x00),
  getExtendedPublicKey(insValue: 0x10),
  getSerial(insValue: 0x01),
  deriveNativeScriptHash(insValue: 0x12),
  signOperationalCertificate(insValue: 0x22),
  signTransaction(insValue: 0x21);

  final int insValue;

  const InstructionType({required this.insValue});
}

enum SpendingDataSourceType {
  none('no_spending'),
  path('spending_path'),
  scriptHash('spending_script_hash');

  final String value;
  const SpendingDataSourceType(this.value);
}

enum StakingDataSourceType {
  none(0x11),
  keyPath(0x22),
  keyHash(0x33),
  blockchainPointer(0x44),
  scriptHash(0x55);

  final int encoding;
  const StakingDataSourceType(this.encoding);
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

enum TransactionSigningMode {
  ordinaryTransaction(3),
  poolRegistrationAsOwner(4),
  poolRegistrationAsOperator(5),
  multisigTransaction(6),
  plutusTransaction(7);

  final int value;
  const TransactionSigningMode(this.value);
}

enum TxOutputFormat {
  arrayLegacy(0),
  mapBabbage(1);

  final int value;
  const TxOutputFormat(this.value);
}

enum TxOutputDestinationType {
  thirdParty(0x01),
  deviceOwned(0x02);

  final int encodingValue;
  const TxOutputDestinationType(this.encodingValue);
}

enum DatumType {
  hash,
  inline,
}

enum DRepType {
  keyHash(0),
  keyPath(100),
  scriptHash(1),
  abstain(2),
  noConfidence(3);

  final int value;
  const DRepType(this.value);
}

enum TxAuxiliaryDataType {
  arbitraryHash(0),
  cip36Registration(1);

  final int value;
  const TxAuxiliaryDataType(this.value);
}

enum CIP36VoteDelegationType {
  path(0x01),
  key(0x02);

  final int encodingValue;
  const CIP36VoteDelegationType(this.encodingValue);
}

enum RequiredSignerType {
  hash,
  path,
}

enum VoterType {
  committeeKeyHash,
  committeeKeyPath,
  committeeScriptHash,
  drepKeyHash,
  drepKeyPath,
  drepScriptHash,
  stakePoolKeyHash,
  stakePoolKeyPath,
}

enum VoteOption {
  yes,
  no,
  abstain,
}

enum TxAuxiliaryDataSupplementType {
  cip36VotingRegistration,
  cip36Registration,
}

enum CIP36VoteRegistrationFormat {
  cip15(0x01),
  cip36(0x02);

  final int encodingValue;
  const CIP36VoteRegistrationFormat(this.encodingValue);
}

enum CertificateType {
  stakeRegistration(0),
  stakeDeregistration(1),
  stakeDelegation(2),
  stakePoolRegistration(3),
  stakePoolRetirement(4),
  stakeRegistrationConway(7),
  stakeDeregistrationConway(8),
  voteDelegation(9),
  authorizeCommitteeHot(14),
  resignCommitteeCold(15),
  dRepRegistration(16),
  dRepDeregistration(17),
  dRepUpdate(18);

  final int value;
  const CertificateType(this.value);
}

enum CredentialType {
  keyPath(0),
  keyHash(2),
  scriptHash(1);

  final int value;
  const CredentialType(this.value);
}

enum PoolKeyType {
  deviceOwned(1),
  thirdParty(2);

  final int encodingValue;
  const PoolKeyType(this.encodingValue);
}

enum PoolRewardAccountType {
  deviceOwned(1),
  thirdParty(2);

  final int encodingValue;
  const PoolRewardAccountType(this.encodingValue);
}

enum PoolOwnerType {
  deviceOwned(1),
  thirdParty(2);

  final int encodingValue;
  const PoolOwnerType(this.encodingValue);
}

enum RelayType {
  /// Relay is a single host specified with IPv4 or IPv6
  /// @see [SingleHostIpAddrRelayParams]
  singleHostIpAddr(0),

  /// Relay is a single host specified as dns name
  /// @see [SingleHostHostnameRelayParams]
  singleHostHostname(1),

  /// Relay is multiple hosts reachable under dns name
  /// @see [MultiHostRelayParams]
  multiHost(2);

  final int value;
  const RelayType(this.value);
}
