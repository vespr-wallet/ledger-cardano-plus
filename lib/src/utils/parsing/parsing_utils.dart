
import 'package:ledger_cardano/src/errors/invalid_data_reason.dart';
import 'package:ledger_cardano/src/models/anchor_params.dart';
import 'package:ledger_cardano/src/models/certificate.dart' as certification;
import 'package:ledger_cardano/src/models/certificate.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';
import 'package:ledger_cardano/src/models/drep_params.dart';
import 'package:ledger_cardano/src/models/margin.dart';
import 'package:ledger_cardano/src/models/network.dart';
import 'package:ledger_cardano/src/models/parsed_anchor.dart';
import 'package:ledger_cardano/src/models/parsed_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_credential.dart';
import 'package:ledger_cardano/src/models/parsed_drep.dart';
import 'package:ledger_cardano/src/models/parsed_input.dart';
import 'package:ledger_cardano/src/models/parsed_margin.dart';
import 'package:ledger_cardano/src/models/parsed_network.dart';
import 'package:ledger_cardano/src/models/parsed_output.dart';
import 'package:ledger_cardano/src/models/parsed_pool_key.dart';
import 'package:ledger_cardano/src/models/parsed_pool_metadata.dart';
import 'package:ledger_cardano/src/models/parsed_pool_owner.dart';
import 'package:ledger_cardano/src/models/parsed_pool_params.dart';
import 'package:ledger_cardano/src/models/parsed_pool_relay.dart';
import 'package:ledger_cardano/src/models/parsed_pool_reward_account.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/pool_key.dart';
import 'package:ledger_cardano/src/models/pool_metadata_params.dart';
import 'package:ledger_cardano/src/models/pool_owner.dart';
import 'package:ledger_cardano/src/models/pool_registration_params.dart';
import 'package:ledger_cardano/src/models/pool_reward_account.dart';
import 'package:ledger_cardano/src/models/relay.dart';
import 'package:ledger_cardano/src/models/transaction.dart';
import 'package:ledger_cardano/src/models/tx_input.dart';
import 'package:ledger_cardano/src/models/tx_output.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

ParsedTransaction parseTransaction(Transaction tx) {
  final network = parseNetwork(tx.network);

  final inputs = tx.inputs.map((inp) => parseTxInput(inp)).toList();

  final outputs = tx.outputs.map((o) => parseTxOutput(o, tx.network)).toList();

  final fee = validateBigInt(tx.fee, InvalidDataReason.feeInvalid);

  final ttl = tx.ttl == null ? null : validateBigInt(tx.ttl, InvalidDataReason.ttlInvalid);

  validate(tx.certificates is List, InvalidDataReason.certificatesNotArray.message);
  final certificates = parseCertificates(tx.certificates);

  validate(tx.withdrawals is List, InvalidDataReason.withdrawalsNotArray.message);
  final withdrawals = tx.withdrawals?.map((w) => parseWithdrawal(w)).toList();

  final auxiliaryData = tx.auxiliaryData == null ? null : parseTxAuxiliaryData(network, tx.auxiliaryData);

  final validityIntervalStart = tx.validityIntervalStart;

  final mint = tx.mint == null ? null : parseTokenBundle(tx.mint, false, parseInt64_str);

  final scriptDataHashHex = tx.scriptDataHash == null
      ? null
      : parseHexStringOfLength(tx.scriptDataHash, scriptDataHashLength, InvalidDataReason.scriptDataHashWrongLength);

  validate(tx.collateralInputs is List, InvalidDataReason.collateralInputsNotArray.message);
  final collateralInputs = tx.collateralInputs?.map((inp) => parseTxInput(inp)).toList();

  validate(tx.requiredSigners is List, InvalidDataReason.requiredSignersNotArray.message);
  final requiredSigners = tx.requiredSigners?.map((rs) => parseRequiredSigner(rs)).toList();

  final includeNetworkId = tx.includeNetworkId == null
      ? false
      : parseBoolean(tx.includeNetworkId, InvalidDataReason.networkIdIncludeInvalid.message);

  final collateralOutput = tx.collateralOutput == null ? null : parseTxOutput(tx.collateralOutput, tx.network);
  validate(collateralOutput?.datum == null, InvalidDataReason.collateralInputContainsDatum.message);
  validate(
      collateralOutput?.referenceScriptHex == null, InvalidDataReason.collateralInputContainsReferenceScript.message);

  final totalCollateral = tx.totalCollateral;

  validate(tx.referenceInputs is List, InvalidDataReason.referenceInputsNotArray.message);
  final referenceInputs = tx.referenceInputs?.map((ri) => parseTxInput(ri)).toList();

  validate(tx.votingProcedures is List, InvalidDataReason.votingProceduresNotArray.message);
  final votingProcedures = tx.votingProcedures?.map((x) => parseVoterVotes(x)).toList();
  validate(votingProcedures?.length == 1, InvalidDataReason.votingProceduresInvalidNumberOfVoters.message);
  for (final voterVotes in votingProcedures ?? []) {
    validate(voterVotes.votes.length == 1, InvalidDataReason.votingProceduresInvalidNumberOfVotes.message);
  }

  final treasury = tx.treasury;

  final donation = tx.donation;

  return ParsedTransaction(
    network: network,
    inputs: inputs,
    outputs: outputs,
    ttl: ttl,
    auxiliaryData: auxiliaryData,
    validityIntervalStart: validityIntervalStart,
    withdrawals: withdrawals,
    certificates: certificates,
    fee: fee,
    mint: mint,
    scriptDataHashHex: scriptDataHashHex,
    collateralInputs: collateralInputs,
    requiredSigners: requiredSigners,
    includeNetworkId: includeNetworkId,
    collateralOutput: collateralOutput,
    totalCollateral: totalCollateral,
    referenceInputs: referenceInputs,
    votingProcedures: votingProcedures,
    treasury: treasury,
    donation: donation,
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

bool isUint32(int data) => data >= 0 && data <= 4294967295;

bool isInteger(BigInt data) => data is int;

bool isUint8(int data) => data >= 0 && data <= 255;

int parseUint8t(dynamic value, String errMsg) {
  validate(isUint8(value), errMsg);
  return value as int;
}

bool isUint64Str(dynamic data) => isUintStr(data, {});

bool isUint64Number(dynamic data) => isInteger(data) && data >= 0 && data <= 9007199254740991;

bool isUint64Bigint(dynamic data) => data is BigInt && isUint64Str(data.toString());

bool isUintStr(dynamic data, Map<String, String> constraints) {
  final String min = constraints['min'] ?? '0';
  final String max = constraints['max'] ?? maxUint64Str;

  if (data is! String) return false;

  final RegExp numericOnly = RegExp(r'^[0-9]*$');
  bool isNumericOnly = numericOnly.hasMatch(data);

  bool hasValidLength = data.isNotEmpty && data.length <= max.length;

  bool hasNoLeadingZeros = data.length == 1 || !data.startsWith('0');

  bool isLessOrEqualToMax = data.length < max.length || data.compareTo(max) <= 0;

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
    path: input.path != null ? parseBIP32Path(input.path, InvalidDataReason.inputInvalidPath) : null,
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

bool isHexString(String? data) => data != null && data.length % 2 == 0 && RegExp(r'^[0-9a-fA-F]*$').hasMatch(data);

bool isHexStringOfLength(String? data, int expectedByteLength) =>
    isHexString(data) && (data?.length ?? 0) == expectedByteLength * 2;

List<int> parseBIP32Path(
  dynamic value,
  InvalidDataReason errMsg,
) {
  validate(isValidPath(value), errMsg.message);
  return value;
}

bool isValidPath(dynamic data) => data is List && data.every((x) => isUint32(x)) && data.length <= 5;

ParsedOutput parseTxOutput(TxOutput output, Network network) {
  final format = output.format == TxOutputFormat.mapBabbage ? TxOutputFormat.mapBabbage : TxOutputFormat.arrayLegacy;

  final amount = output.amount;

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
    amount: amount,
    tokenBundle: tokenBundle,
    destination: destination,
    datum: datum,
    referenceScriptHex: referenceScriptHex,
  );
}

BigInt validateBigInt(BigInt? value, InvalidDataReason errMsg) {
  if (value == null) throw ValidationException(errMsg.message);
  validate(value >= BigInt.zero && value.bitLength <= 64, errMsg.message);
  return value;
}

List<ParsedCertificate> parseCertificates(List<Certificate>? certificates) {
  final parsed = certificates?.map((cert) => parseCertificate(cert)).toList() ?? [];

  return parsed;
}

ParsedCertificate parseCertificate(Certificate cert) {
  final ParsedCertificate Function() parser = switch (cert) {
    certification.StakeRegistration() => () => ParsedCertificate.stakeRegistration(
          stakeCredential: parseCredential(
            cert.params.stakeCredential,
            InvalidDataReason.certificateInvalidStakeCredential,
          ),
        ),
    certification.StakeDeregistration() => () => ParsedCertificate.stakeDeregistration(
          stakeCredential: parseCredential(
            cert.params.stakeCredential,
            InvalidDataReason.certificateInvalidStakeCredential,
          ),
        ),
    certification.StakeRegistrationConway() => () => ParsedCertificate.stakeRegistrationConway(
          stakeCredential: parseCredential(
            cert.params.stakeCredential,
            InvalidDataReason.certificateInvalidStakeCredential,
          ),
          deposit: cert.params.deposit,
        ),
    certification.StakeDeregistrationConway() => () => ParsedCertificate.stakeDeregistrationConway(
          stakeCredential: parseCredential(
            cert.params.stakeCredential,
            InvalidDataReason.certificateInvalidStakeCredential,
          ),
          deposit: cert.params.deposit,
        ),
    certification.StakeDelegation() => () => ParsedCertificate.stakeDelegation(
          stakeCredential: parseCredential(
            cert.params.stakeCredential,
            InvalidDataReason.certificateInvalidStakeCredential,
          ),
          poolKeyHashHex: parseHexStringOfLength(
            cert.params.poolKeyHashHex,
            keyHashLength,
            InvalidDataReason.certificateInvalidPoolKeyHash,
          ),
        ),
    certification.VoteDelegation() => () => ParsedCertificate.voteDelegation(
          stakeCredential: parseCredential(
            cert.params.stakeCredential,
            InvalidDataReason.certificateInvalidStakeCredential,
          ),
          dRep: parseDRep(
            cert.params.dRep,
            InvalidDataReason.certificateInvalidDrep,
          ),
        ),
    certification.AuthorizeCommitteeHot() => () => ParsedCertificate.authorizeCommitteeHot(
          coldCredential: parseCredential(
            cert.params.coldCredential,
            InvalidDataReason.certificateInvalidCommitteeCredential,
          ),
          hotCredential: parseCredential(
            cert.params.hotCredential,
            InvalidDataReason.certificateInvalidCommitteeCredential,
          ),
        ),
    certification.ResignCommitteeCold() => () => ParsedCertificate.resignCommitteeCold(
          coldCredential: parseCredential(
            cert.params.coldCredential,
            InvalidDataReason.certificateInvalidCommitteeCredential,
          ),
          anchor: cert.params.anchor == null ? null : parseAnchor(cert.params.anchor),
        ),
    certification.DRepRegistration() => () => ParsedCertificate.dRepRegistration(
          dRepCredential: parseCredential(
            cert.params.dRepCredential,
            InvalidDataReason.certificateInvalidDrepCredential,
          ),
          deposit: cert.params.deposit,
          anchor: cert.params.anchor == null ? null : parseAnchor(cert.params.anchor),
        ),
    certification.DRepDeregistration() => () => ParsedCertificate.dRepDeregistration(
          dRepCredential: parseCredential(
            cert.params.dRepCredential,
            InvalidDataReason.certificateInvalidDrepCredential,
          ),
          deposit: cert.params.deposit,
        ),
    certification.DRepUpdate() => () => ParsedCertificate.dRepUpdate(
          dRepCredential: parseCredential(
            cert.params.dRepCredential,
            InvalidDataReason.certificateInvalidDrepCredential,
          ),
          anchor: cert.params.anchor == null ? null : parseAnchor(cert.params.anchor),
        ),
    certification.StakePoolRegistration() => () => ParsedCertificate.stakePoolRegistration(
          pool: parsePoolParams(cert.params),
        ),
    certification.StakePoolRetirement() => () => ParsedCertificate.stakePoolRetirement(
          path: parseBIP32Path(
            cert.params.poolKeyPath,
            InvalidDataReason.certificateInvalidPath,
          ),
          retirementEpoch: cert.params.retirementEpoch,
        ),
  };

  return parser();
}

ParsedCredential parseCredential(CredentialParams credential, InvalidDataReason errMsg) {
  final ParsedCredential Function() parser = switch (credential) {
    KeyPathCredentialParams() => () => ParsedCredential.keyPath(
          path: parseBIP32Path(credential.keyPath, errMsg),
        ),
    KeyHashCredentialParams() => () => ParsedCredential.keyHash(
          keyHashHex: parseHexStringOfLength(
            credential.keyHashHex,
            keyHashLength,
            errMsg,
          ),
        ),
    ScriptHashCredentialParams() => () => ParsedCredential.scriptHash(
          scriptHashHex: parseHexStringOfLength(
            credential.scriptHashHex,
            scriptHashLength,
            errMsg,
          ),
        ),
  };

  return parser();
}

ParsedDRep parseDRep(DRepParams dRep, InvalidDataReason errMsg) {
  final ParsedDRep Function() parser = switch (dRep) {
    KeyPathDRepParams() => () => ParsedDRep.keyPath(
          path: parseBIP32Path(dRep.keyPath, errMsg),
        ),
    KeyHashDRepParams() => () => ParsedDRep.keyHash(
          keyHashHex: parseHexStringOfLength(
            dRep.keyHashHex,
            keyHashLength,
            errMsg,
          ),
        ),
    ScriptHashDRepParams() => () => ParsedDRep.scriptHash(
          scriptHashHex: parseHexStringOfLength(
            dRep.scriptHashHex,
            scriptHashLength,
            errMsg,
          ),
        ),
    AbstainDRepParams() => () => ParsedDRep.abstain(),
    NoConfidenceParams() => () => ParsedDRep.noConfidence(),
  };

  return parser();
}

ParsedAnchor? parseAnchor(AnchorParams? params) {
  if (params == null) return null;

  final url = parseAscii(params.url, InvalidDataReason.anchorInvalidUrl);
  validate(url.length <= maxUrlLength, InvalidDataReason.anchorInvalidUrl.message);

  final hashHex = parseHexStringOfLength(
    params.hashHex,
    anchorHashLength,
    InvalidDataReason.anchorInvalidHash,
  );

  return ParsedAnchor(
    url: url,
    hashHex: hashHex,
  );
}

String parseAscii(String str, InvalidDataReason errMsg) {
  validate(
    str.split('').every((c) => c.codeUnitAt(0) >= 32 && c.codeUnitAt(0) <= 126),
    errMsg.message,
  );
  return str;
}

ParsedPoolParams parsePoolParams(PoolRegistrationParams params) {
  final poolKey = parsePoolKey(params.poolKey);
  final vrfHashHex = parseHexStringOfLength(
    params.vrfKeyHashHex,
    vrfKeyHashLength,
    InvalidDataReason.poolRegistrationInvalidVrfKeyHash,
  );
  final pledge = params.pledge;
  final cost = params.cost;
  final margin = parseMargin(params.margin);
  final rewardAccount = parseRewardAccount(params.rewardAccount);

  final owners = params.poolOwners.map((owner) => parsePoolOwnerParams(owner)).toList();
  final relays = params.relays.map((relay) => parsePoolRelayParams(relay)).toList();
  final metadata = params.metadata == null ? null : parsePoolMetadataParams(params.metadata);

  validate(
    owners.length <= poolRegistrationOwnersMax,
    InvalidDataReason.poolRegistrationOwnersTooMany.message,
  );
  validate(
    relays.length <= poolRegistrationRelaysMax,
    InvalidDataReason.poolRegistrationRelaysTooMany.message,
  );

  return ParsedPoolParams(
    poolKey: poolKey,
    vrfHashHex: vrfHashHex,
    pledge: pledge,
    cost: cost,
    margin: margin,
    rewardAccount: rewardAccount,
    owners: owners,
    relays: relays,
    metadata: metadata,
  );
}

ParsedPoolKey parsePoolKey(PoolKey poolKey) {
  final ParsedPoolKey Function() parser = switch (poolKey) {
    PoolKeyDeviceOwned() => () => ParsedPoolKey.deviceOwned(
          path: parseBIP32Path(
            poolKey.path,
            InvalidDataReason.poolKeyInvalidPath,
          ),
        ),
    PoolKeyThirdParty() => () => ParsedPoolKey.thirdParty(
          hashHex: parseHexStringOfLength(
            poolKey.keyHashHex,
            keyHashLength,
            InvalidDataReason.poolKeyInvalidKeyHash,
          ),
        ),
  };

  return parser();
}

ParsedMargin parseMargin(Margin params) {
  return ParsedMargin(
    numerator: params.numerator,
    denominator: params.denominator,
  );
}

ParsedPoolRewardAccount parseRewardAccount(PoolRewardAccount poolRewardAccount) {
  final ParsedPoolRewardAccount Function() parser = switch (poolRewardAccount) {
    PoolRewardAccountDeviceOwned() => () => ParsedPoolRewardAccount.deviceOwned(
          path: parseBIP32Path(
            poolRewardAccount.path,
            InvalidDataReason.poolRewardAccountInvalidPath,
          ),
        ),
    PoolRewardAccountThirdParty() => () => ParsedPoolRewardAccount.thirdParty(
          rewardAccountHex: parseHexStringOfLength(
            poolRewardAccount.rewardAccountHex,
            rewardAccountHexLength,
            InvalidDataReason.poolRewardAccountInvalidHex,
          ),
        ),
  };

  return parser();
}

ParsedPoolOwner parsePoolOwnerParams(PoolOwner poolOwner) {
  final ParsedPoolOwner Function() parser = switch (poolOwner) {
    PoolOwnerDeviceOwned() => () => ParsedPoolOwner.deviceOwned(
          path: parseBIP32Path(
            poolOwner.stakingPath,
            InvalidDataReason.poolOwnerInvalidPath,
          ),
        ),
    PoolOwnerThirdParty() => () => ParsedPoolOwner.thirdParty(
          hashHex: parseHexStringOfLength(
            poolOwner.stakingKeyHashHex,
            keyHashLength,
            InvalidDataReason.poolOwnerInvalidKeyHash,
          ),
        ),
  };

  return parser();
}

ParsedPoolRelay parsePoolRelayParams(Relay relayParams) {
  final ParsedPoolRelay Function() parser = switch (relayParams) {
    SingleHostIpAddrRelay() => () => ParsedPoolRelay.singleHostIpAddr(
          port: relayParams.portNumber != null
              ? parsePort(relayParams.portNumber, InvalidDataReason.relayInvalidPort)
              : null,
          ipv4: relayParams.ipv4 != null ? parseIPv4(relayParams.ipv4, InvalidDataReason.relayInvalidIpv4) : null,
          ipv6: relayParams.ipv6 != null ? parseIPv6(relayParams.ipv6, InvalidDataReason.relayInvalidIpv6) : null,
        ),
    SingleHostHostnameRelay() => () => ParsedPoolRelay.singletHostname(
          port: relayParams.portNumber != null
              ? parsePort(relayParams.portNumber, InvalidDataReason.relayInvalidPort)
              : null,
          dnsName: parseDnsName(
            relayParams.dnsName,
            InvalidDataReason.relayInvalidDns,
          ),
        ),
    MultiHostRelay() => () => ParsedPoolRelay.multiHost(
          dnsName: parseDnsName(
            relayParams.dnsName,
            InvalidDataReason.relayInvalidDns,
          ),
        ),
  };

  return parser();
}

int parsePort(int? portNumber, InvalidDataReason errMsg) {
if (portNumber == null) throw ValidationException(errMsg.message);
  return portNumber;
}

String parseIPv4(String? ipv4, InvalidDataReason errMsg) {
  if (ipv4 == null) throw ValidationException(errMsg.message);
  final ipParts = ipv4.split('.');
  validate(ipParts.length == 4, errMsg.message);

  return ipv4;
}

String parseIPv6(String? ipv6, InvalidDataReason errMsg) {
  if (ipv6 == null) throw ValidationException(errMsg.message);
  final ipHex = ipv6.split(':').join('');
  validate(ipHex.length == 32, errMsg.message);
  return ipv6;
}

String parseDnsName(String dnsName, InvalidDataReason errMsg) {
  validate(dnsName.length <= maxDnsNameLength, errMsg.message);
  validate(dnsName.isNotEmpty, errMsg.message);
  validate(
    RegExp(r'^[\x00-\x7F]*$').hasMatch(dnsName),
    errMsg.message,
  );
  validate(
    dnsName.split('').every((c) => c.codeUnitAt(0) >= 32 && c.codeUnitAt(0) <= 126),
    errMsg.message,
  );
  return dnsName;
}

ParsedPoolMetadata parsePoolMetadataParams(PoolMetadataParams? params) {
  if (params == null) throw ValidationException(InvalidDataReason.poolRegistrationMetadataInvalidUrl.message);
  final url = parseAscii(
    params.metadataUrl,
    InvalidDataReason.poolRegistrationMetadataInvalidUrl,
  );
  validate(
    url.length <= maxUrlLength,
    InvalidDataReason.poolRegistrationMetadataInvalidUrl.message,
  );

  final hashHex = parseHexStringOfLength(
    params.metadataHashHex,
    auxiliaryDataHashLength,
    InvalidDataReason.poolRegistrationMetadataInvalidHash,
  );

  return ParsedPoolMetadata(
    url: url,
    hashHex: hashHex,
  );
}
