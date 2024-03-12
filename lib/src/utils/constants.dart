const int harden = 0x80000000;

const int claCardano = 0xD7;

const int p1ReturnAddressToHost = 0x01;

const int p1Unused = 0x00;

const int p2Unused = 0x00;

const int stakingDataSourcePrefix = 0x22;

const int p1DisplayOnDevice = 0x02;

const int initialWriterValue = 0x00;

const int returnDataP1Value = 0x01;

const int p1FinishScriptHash = 0x03;

const int nativeScriptHashLength = 28;

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

enum CardanoResponseCode {
  success(0x9000),
  errMalformedRequestHeader(0x6E01),
  errBadCla(0x6E02),
  errUnknownIns(0x6E03),
  errStillInCall(0x6E04),
  errInvalidRequestParameters(0x6E05),
  errInvalidState(0x6E06),
  errInvalidData(0x6E07),
  errInvalidBip44Path(0x6E08),
  errRejectedByUser(0x6E09),
  errRejectedByPolicy(0x6E10),
  errDeviceLocked(0x6E11);

  final int value;
  const CardanoResponseCode(this.value);
}

enum InstructionType {
  deriveAddress(insValue: 0x11),
  getVersion(insValue: 0x00),
  getExtendedPublicKey(insValue: 0x10),
  getSerial(insValue: 0x01),
  deriveNativeScriptHash(insValue: 0x12);

  final int insValue;

  const InstructionType({required this.insValue});
}
