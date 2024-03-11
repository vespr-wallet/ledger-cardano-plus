/// Hardening constant used in derivation paths.
const int harden = 0x80000000;

/// CLA (Class Byte) for Cardano, used to identify the application on the Ledger device.
const int claCardano = 0xD7;

/// INS (Instruction Byte) for the Derive Address operation.
const int insDeriveAddress = 0x11;

/// P1 parameter for the request type, indicating the address should be returned to the host.
const int p1ReturnAddressToHost = 0x01;

/// P2 parameter, unused in this context.
const int p2Unused = 0x00;

/// Prefix for staking data source.
const int stakingDataSourcePrefix = 0x22;

/// P1 parameter for the request type, indicating the address should be displayed on the device.
const int p1DisplayOnDevice = 0x02;

/// Initial value for ByteDataWriter.
const int initialWriterValue = 0x00;

/// INS value for derive address operation.
const int deriveAddressInsValue = 0x11;

/// P1 value for returning data.
const int returnDataP1Value = 0x01;

const int NATIVE_SCRIPT_HASH_LENGTH = 28;

enum NativeScriptType {
  pubkeyDeviceOwned(1),
  pubkeyThirdParty(2),
  all(0),
  any(0),
  nOfK(0),
  invalidBefore(0),
  invalidHereafter(0);

  final int encoding;
  const NativeScriptType(this.encoding);
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
