const int harden = 0x80000000;

const int claCardano = 0xD7;

const int p1Unused = 0x00;
const int p1ReturnDataToHost = 0x01;
const int p1DisplayOnDevice = 0x02;
const int p1FinishScriptHash = 0x03;

const int p2Unused = 0x00;

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
  deriveNativeScriptHash(insValue: 0x12);

  final int insValue;

  const InstructionType({required this.insValue});
}
