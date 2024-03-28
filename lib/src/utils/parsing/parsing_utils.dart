import 'package:ledger_cardano/src/errors/invalid_data_reason.dart';
import 'package:ledger_cardano/src/models/network.dart';
import 'package:ledger_cardano/src/models/parsed_input.dart';
import 'package:ledger_cardano/src/models/parsed_network.dart';
import 'package:ledger_cardano/src/models/parsed_output.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/transaction.dart';
import 'package:ledger_cardano/src/models/tx_input.dart';
import 'package:ledger_cardano/src/models/tx_output.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';


bool isArray(dynamic data) => data is List;



ParsedTransaction parseTransaction(Transaction tx) {
  final network = parseNetwork(tx.network);
  
  // inputs
  validate(isArray(tx.inputs), InvalidDataReason.inputsNotArray.message);
  final inputs = tx.inputs.map((inp) => parseTxInput(inp)).toList();

  // outputs 
  validate(isArray(tx.outputs), InvalidDataReason.outputsNotArray.message);
  final outputs = tx.outputs.map((o) => parseTxOutput(o, tx.network)).toList();

  // fee
  final fee = parseCoin(tx.fee, InvalidDataReason.feeInvalid);

  // ttl
  final ttl = tx.ttl == null 
    ? null
    : parseUint64Str(tx.ttl, {}, InvalidDataReason.ttlInvalid);

  // certificates
  validate(isArray(tx.certificates ?? []), InvalidDataReason.certificatesNotArray.message);
  final certificates = parseCertificates(tx.certificates ?? []);

  // withdrawals
  validate(isArray(tx.withdrawals ?? []), InvalidDataReason.withdrawalsNotArray.message);  
  final withdrawals = (tx.withdrawals ?? []).map((w) => parseWithdrawal(w)).toList();

  // auxiliary data
  final auxiliaryData = tx.auxiliaryData == null
    ? null 
    : parseTxAuxiliaryData(network, tx.auxiliaryData);

  // validity start
  final validityIntervalStart = tx.validityIntervalStart == null
    ? null
    : parseUint64Str(tx.validityIntervalStart, {}, InvalidDataReason.validityIntervalStartInvalid);

  // mint instructions
  final mint = tx.mint == null ? null : parseTokenBundle(tx.mint, false, parseInt64_str);

  // script data hash hex
  final scriptDataHashHex = tx.scriptDataHash == null 
    ? null
    : parseHexStringOfLength(tx.scriptDataHash, scriptDataHashLength, InvalidDataReason.scriptDataHashWrongLength);

  // collateral inputs
  validate(isArray(tx.collateralInputs ?? []), InvalidDataReason.collateralInputsNotArray.message);
  final collateralInputs = (tx.collateralInputs ?? []).map((inp) => parseTxInput(inp)).toList();

  // required signers
  validate(isArray(tx.requiredSigners ?? []), InvalidDataReason.requiredSignersNotArray.message);
  final requiredSigners = (tx.requiredSigners ?? []).map((rs) => parseRequiredSigner(rs)).toList();

  // include network ID
  final includeNetworkId = tx.includeNetworkId == null 
    ? false
    : parseBoolean(tx.includeNetworkId, InvalidDataReason.networkIdIncludeInvalid.message);

  // collateral output
  final collateralOutput = tx.collateralOutput == null
    ? null
    : parseTxOutput(tx.collateralOutput, tx.network);
  validate(collateralOutput?.datum == null, InvalidDataReason.collateralInputContainsDatum.message);
  validate(collateralOutput?.referenceScriptHex == null, InvalidDataReason.collateralInputContainsReferenceScript.message);

  // total collateral  
  final totalCollateral = tx.totalCollateral == null
    ? null  
    : parseCoin(tx.totalCollateral, InvalidDataReason.totalCollateralNotValid);

  // reference inputs
  validate(isArray(tx.referenceInputs ?? []), InvalidDataReason.referenceInputsNotArray.message);
  final referenceInputs = (tx.referenceInputs ?? []).map((ri) => parseTxInput(ri)).toList();

  // voting procedures
  validate(isArray(tx.votingProcedures ?? []), InvalidDataReason.votingProceduresNotArray.message);
  final votingProcedures = (tx.votingProcedures ?? []).map((x) => parseVoterVotes(x)).toList();
  validate(votingProcedures.length <= 1, InvalidDataReason.votingProceduresInvalidNumberOfVoters.message);
  for (final voterVotes in votingProcedures) {
    validate(voterVotes.votes.length == 1, InvalidDataReason.votingProceduresInvalidNumberOfVotes.message);
  }

  // treasury
  final treasury = tx.treasury == null
    ? null
    : parseCoin(tx.treasury, InvalidDataReason.treasuryNotValid);

  // donation
  final donation = tx.donation == null
    ? null
    : parseUint64Str(tx.donation, {'min': '1', 'max': maxLovelaceSupplyStr}, InvalidDataReason.donationNotValid);

  return ParsedTransaction(
    network: network,
    inputs: inputs,
    outputs: outputs,
    ttl: ttl == null ? null : BigInt.parse(ttl),
    auxiliaryData: auxiliaryData,
    validityIntervalStart: validityIntervalStart == null ? null : BigInt.parse(validityIntervalStart),
    withdrawals: withdrawals,
    certificates: certificates,
    fee: BigInt.parse(fee),
    mint: mint,
    scriptDataHashHex: scriptDataHashHex,
    collateralInputs: collateralInputs,
    requiredSigners: requiredSigners,
    includeNetworkId: includeNetworkId,
    collateralOutput: collateralOutput,
    totalCollateral: totalCollateral == null ? null : BigInt.parse(totalCollateral),
    referenceInputs: referenceInputs,
    votingProcedures: votingProcedures,
    treasury: treasury == null ? null : BigInt.parse(treasury),
    donation: donation == null ? null : BigInt.parse(donation),
  );
}

ParsedNetwork parseNetwork(Network network) {
  final parsed = ParsedNetwork(
    protocolMagic: parseUint32t(
      network.protocolMagic,
      InvalidDataReason.networkInvalidProtocolMagic.message,
    ),
    networkId: parseUint8t(
      network.networkId,
      InvalidDataReason.networkInvalidNetworkId.message,
    ),
  );
  validate(
    parsed.networkId <= 0x0F,
    InvalidDataReason.networkInvalidNetworkId.message,
  );
  return parsed;
}

int parseUint32t(dynamic value, String errMsg) {
  validate(isUint32(value), errMsg);
  return value as int;
}


bool isUint32(dynamic data) =>
  isInteger(data) && data >= 0 && data <= 4294967295;

bool isInteger(dynamic data) =>
  data is int || data is BigInt;

bool isUint8(dynamic data) =>
  isInteger(data) && data >= 0 && data <= 255;

int parseUint8t(dynamic value, String errMsg) {
  validate(isUint8(value), errMsg);
  return value as int;
}

String parseCoin(dynamic coin, InvalidDataReason errMsg) {
  return parseUint64Str(coin, {'max': maxLovelaceSupplyStr}, errMsg);
}


String parseUint64Str(dynamic val, Map<String, String> constraints, InvalidDataReason errMsg) {
  if (val is String) {
    validate(isUint64Str(val) && isUintStr(val, constraints), errMsg.message);
    return val;
  } else if (val is int) {
    validate(isUint64Number(val) && isUintStr(val.toString(), constraints), errMsg.message);
    return val.toString();
  } else if (val is BigInt) {
    validate(isUint64Bigint(val) && isUintStr(val.toString(), constraints), errMsg.message);
    return val.toString();
  } else {
    validate(false, errMsg.message);
    return ''; // This line is unreachable but required for Dart analysis.
  }
}

bool isUint64Str(dynamic data) =>
  isUintStr(data, {});

bool isUint64Number(dynamic data) =>
  isInteger(data) && data >= 0 && data <= 9007199254740991; // Dart equivalent of JS Number.MAX_SAFE_INTEGER

bool isUint64Bigint(dynamic data) =>
  data is BigInt && isUint64Str(data.toString());
  
  
bool isUintStr(dynamic data, Map<String, String> constraints) {
  final String min = constraints['min'] ?? '0';
  final String max = constraints['max'] ?? maxUint64Str;

  if (data is! String) return false;

  final RegExp numericOnly = RegExp(r'^[0-9]*$');
  bool isNumericOnly = numericOnly.hasMatch(data);

  // Length checks
  bool hasValidLength = data.isNotEmpty && data.length <= max.length;

  // Leading zeros
  bool hasNoLeadingZeros = data.length == 1 || !data.startsWith('0');

  // Less or equal than max value
  bool isLessOrEqualToMax = data.length < max.length || data.compareTo(max) <= 0;

  // Greater or equal than min value
  bool isGreaterOrEqualToMin = data.length > min.length || data.compareTo(min) >= 0;

  return isNumericOnly && hasValidLength && hasNoLeadingZeros && isLessOrEqualToMax && isGreaterOrEqualToMin;
}

ParsedInput parseTxInput(TxInput input) {
  final String txHashHex = parseHexStringOfLength(
    input.txHashHex,
    txHashLength,
    InvalidDataReason.inputInvalidTxHash,
  );
  final int outputIndex = parseUint32t(
    input.outputIndex,
    InvalidDataReason.inputInvalidUtxoIndex.message,
  );
  return ParsedInput(
    txHashHex: txHashHex,
    outputIndex: outputIndex,
    path: input.path != null
        ? parseBIP32Path(input.path, InvalidDataReason.inputInvalidPath)
        : null,
  );
}

String parseHexStringOfLength(
  dynamic str,
  int length,
  InvalidDataReason errMsg,
) {
  validate(isHexStringOfLength(str, length), errMsg.message);
  return str;
}

bool isHexString(String? data) =>
  data != null && data.length % 2 == 0 && RegExp(r'^[0-9a-fA-F]*$').hasMatch(data);

bool isHexStringOfLength(String? data, int expectedByteLength) =>
  isHexString(data) && (data?.length ?? 0) == expectedByteLength * 2;

List<int> parseBIP32Path(
  dynamic value,
  InvalidDataReason errMsg,
) {
  validate(isValidPath(value), errMsg.message);
  return value;
}

bool isValidPath(dynamic data) =>
  isArray(data) && data.every((x) => isUint32(x)) && data.length <= 5;



ParsedOutput parseTxOutput(TxOutput output, Network network) {
  final format = output.format == TxOutputFormat.mapBabbage
      ? TxOutputFormat.mapBabbage
      : TxOutputFormat.arrayLegacy;

  final amount = parseCoin(
    output.amount,
    InvalidDataReason.outputInvalidAmount,
  );

  final tokenBundle = parseTokenBundle(
    output.tokenBundle ?? [],
    true,
    parseUint64Str,
  );

  final destination = parseTxDestination(network, output.destination, true);

  final datum = parseDatum(output);
  if (datum?.type == DatumType.inline) {
    validate(
      output.format == TxOutputFormat.mapBabbage,
      InvalidDataReason.outputInconsistentDatum.message,
    );
  }

  final referenceScriptHex = output.format == TxOutputFormat.mapBabbage && output.referenceScriptHex != null
      ? parseHexString(
          output.referenceScriptHex!,
          InvalidDataReason.OUTPUT_INVALID_REFERENCE_SCRIPT_HEX,
        )
      : null;
  if (referenceScriptHex != null) {
    validate(
      output.format == TxOutputFormat.mapBabbage,
      InvalidDataReason.outputInconsistentReferenceScript.message,
    );
  }

  return ParsedOutput(
    format: format,
    amount: BigInt.parse(amount),
    tokenBundle: tokenBundle,
    destination: destination,
    datum: datum,
    referenceScriptHex: referenceScriptHex,
  );
}