import 'package:flutter/foundation.dart';
import 'package:ledger_cardano/src/errors/invalid_data_reason.dart';
import 'package:ledger_cardano/src/models/anchor_params.dart';
import 'package:ledger_cardano/src/models/asset_group.dart';
import 'package:ledger_cardano/src/models/blockchain_pointer.dart';
import 'package:ledger_cardano/src/models/certificate.dart' as certification;
import 'package:ledger_cardano/src/models/certificate.dart';
import 'package:ledger_cardano/src/models/credential_params.dart';
import 'package:ledger_cardano/src/models/datum.dart';
import 'package:ledger_cardano/src/models/device_owned_address.dart';
import 'package:ledger_cardano/src/models/drep_params.dart';
import 'package:ledger_cardano/src/models/margin.dart';
import 'package:ledger_cardano/src/models/network.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/models/parsed_anchor.dart';
import 'package:ledger_cardano/src/models/parsed_asset_group.dart';
import 'package:ledger_cardano/src/models/parsed_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_credential.dart';
import 'package:ledger_cardano/src/models/parsed_datum.dart';
import 'package:ledger_cardano/src/models/parsed_drep.dart';
import 'package:ledger_cardano/src/models/parsed_input.dart';
import 'package:ledger_cardano/src/models/parsed_margin.dart';
import 'package:ledger_cardano/src/models/parsed_network.dart';
import 'package:ledger_cardano/src/models/parsed_output.dart';
import 'package:ledger_cardano/src/models/parsed_output_destination.dart';
import 'package:ledger_cardano/src/models/parsed_pool_key.dart';
import 'package:ledger_cardano/src/models/parsed_pool_metadata.dart';
import 'package:ledger_cardano/src/models/parsed_pool_owner.dart';
import 'package:ledger_cardano/src/models/parsed_pool_params.dart';
import 'package:ledger_cardano/src/models/parsed_pool_relay.dart';
import 'package:ledger_cardano/src/models/parsed_pool_reward_account.dart';
import 'package:ledger_cardano/src/models/parsed_token.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/pool_key.dart';
import 'package:ledger_cardano/src/models/pool_metadata_params.dart';
import 'package:ledger_cardano/src/models/pool_owner.dart';
import 'package:ledger_cardano/src/models/pool_registration_params.dart';
import 'package:ledger_cardano/src/models/pool_reward_account.dart';
import 'package:ledger_cardano/src/models/relay.dart';
import 'package:ledger_cardano/src/models/shelley_address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/models/token.dart';
import 'package:ledger_cardano/src/models/transaction.dart';
import 'package:ledger_cardano/src/models/tx_input.dart';
import 'package:ledger_cardano/src/models/tx_output.dart';
import 'package:ledger_cardano/src/models/tx_output_destination.dart';
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

  final mint = tx.mint == null ? null : parseTokenBundle(tx.mint, false);

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
    protocolMagic: network.protocolMagic,
    networkId: network.networkId,
  );
  validate(
    parsed.networkId <= 0x0F,
    InvalidDataReason.networkInvalidNetworkId.message,
  );
  return parsed;
}


bool isUint32(int data) => data >= 0 && data <= 4294967295;

ParsedInput parseTxInput(TxInput input) {
  final String txHashHex = parseHexStringOfLength(
    input.txHashHex,
    txHashLength,
    InvalidDataReason.inputInvalidTxHash,
  );
  final int outputIndex = input.outputIndex;
  return ParsedInput(
    txHashHex: txHashHex,
    outputIndex: outputIndex,
    path: input.path != null ? parseBIP32Path(input.path, InvalidDataReason.inputInvalidPath) : null,
  );
}

String parseHexStringOfLength(
  String str,
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
  List<int>? value,
  InvalidDataReason errMsg,
) {
  if (value == null) throw ValidationException(errMsg.message);
  validate(isValidPath(value), errMsg.message);
  return value;
}

bool isValidPath(List<int> data) => data.every((x) => isUint32(x)) && data.length <= 5;

ParsedOutput parseTxOutput(TxOutput output, Network network) {
  final format = output.format == TxOutputFormat.mapBabbage ? TxOutputFormat.mapBabbage : TxOutputFormat.arrayLegacy;

  final amount = output.amount;

  final tokenBundle = parseTokenBundle(
    output.tokenBundle ?? [],
    true,
  );

  final destination = parseTxDestination(network, output.destination, true);

  final datum = parseDatum(output);
  if (datum is DatumInline) {
    validate(
      output.format == TxOutputFormat.mapBabbage,
      InvalidDataReason.outputInconsistentDatum.message,
    );
  }

  final referenceScriptHex = output is TxOutputBabbage && output.referenceScriptHex != null
      ? parseHexString(
          output.referenceScriptHex,
          InvalidDataReason.outputInvalidReferenceScriptHex,
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

List<ParsedAssetGroup> parseTokenBundle(List<AssetGroup>? tokenBundle, bool emptyTokenBundleAllowed) {
  if (tokenBundle == null) throw ValidationException(InvalidDataReason.multiassetInvalidTokenBundleEmpty.message);
  validate(
    tokenBundle.length <= assetGroupsMax,
    InvalidDataReason.multiassetInvalidTokenBundleTooLarge.message,
  );
  validate(
    emptyTokenBundleAllowed || tokenBundle.isNotEmpty,
    InvalidDataReason.multiassetInvalidTokenBundleEmpty.message,
  );

  final parsedTokenBundle = tokenBundle.map((ag) => parseAssetGroup(ag)).toList();

  final policyIds = parsedTokenBundle.map((ag) => ag.policyIdHex).toList();
  validate(
    policyIds.length == policyIds.toSet().length,
    InvalidDataReason.multiassetInvalidTokenBundleNotUnique.message,
  );

  final sortedPolicyIds = List.from(policyIds)..sort();
  validate(
    listEquals(policyIds, sortedPolicyIds),
    InvalidDataReason.multiassetInvalidTokenBundleOrdering.message,
  );

  return parsedTokenBundle;
}

ParsedAssetGroup parseAssetGroup(AssetGroup assetGroup) {
  validate(
    assetGroup.tokens.length <= tokensInGroupMax,
    InvalidDataReason.multiassetInvalidAssetGroupTooLarge.message,
  );
  validate(
    assetGroup.tokens.isNotEmpty,
    InvalidDataReason.multiassetInvalidAssetGroupEmpty.message,
  );

  final parsedAssetGroup = ParsedAssetGroup(
    policyIdHex: parseHexStringOfLength(
      assetGroup.policyIdHex,
      tokenPolicyLength,
      InvalidDataReason.multiassetInvalidPolicyName,
    ),
    tokens: assetGroup.tokens.map((t) => parseToken(t)).toList(),
  );

  final assetNamesHex = parsedAssetGroup.tokens.map((t) => t.assetNameHex).toList();
  validate(
    assetNamesHex.length == assetNamesHex.toSet().length,
    InvalidDataReason.multiassetInvalidAssetGroupNotUnique.message,
  );

  final sortedAssetNames = List.from(assetNamesHex)
    ..sort((n1, n2) {
      if (n1.length == n2.length) {
        return n1.compareTo(n2);
      } else {
        return n1.length.compareTo(n2.length);
      }
    });
  validate(
    listEquals(assetNamesHex, sortedAssetNames),
    InvalidDataReason.multiassetInvalidAssetGroupOrdering.message,
  );

  return parsedAssetGroup;
}

ParsedToken parseToken(Token token) {
  final assetNameHex = parseHexString(
    token.assetNameHex,
    InvalidDataReason.multiassetInvalidAssetName,
  );
  validate(
    token.assetNameHex.length <= assetNameLengthMax * 2,
    InvalidDataReason.multiassetInvalidAssetName.message,
  );

  final amount = token.amount;

  return ParsedToken(
    assetNameHex: assetNameHex,
    amount: amount,
  );
}

String parseHexString(String? str, InvalidDataReason errMsg) {
  if (str == null) throw ValidationException(errMsg.message);
  validate(isHexString(str), errMsg.message);
  return str;
}

ParsedOutputDestination parseTxDestination(Network network, TxOutputDestination destination, bool validateAsTxOutput) {
  final ParsedOutputDestination Function() parser = switch (destination) {
    TxOutputDestinationThirdParty() => () => ParsedOutputDestination.thirdParty(
          addressHex: parseHexString(
            destination.params.addressHex,
            InvalidDataReason.outputInvalidAddress,
          ),
        ),
    TxOutputDestinationDeviceOwned() => () => ParsedOutputDestination.deviceOwned(
          addressParams: parseAddress(
            network,
            destination.params,
          ),
        ),
  };

  if (validateAsTxOutput && destination is TxOutputDestinationDeviceOwned) {
    final addressParams = parseAddress(network, destination.params);
    if (addressParams is ByronAddressParams) {
      validate(
        addressParams.spendingDataSource is SpendingDataSourcePath,
        InvalidDataReason.outputInvalidAddressParams.message,
      );
    }
  }

  return parser();
}

ParsedAddressParams parseAddress(Network network, DeviceOwnedAddress address) {
  final parsedNetwork = parseNetwork(network);
  // Cast to union of all param fields
  final params = address.params;

  final spendingDataSource = extractSpendingDataSource(
    params.spendingPath,
    params.spendingScriptHashHex,
  );
  final stakingDataSource = extractStakingDataSource(
    params.stakingPath,
    params.stakingKeyHashHex,
    params.stakingBlockchainPointer,
    params.stakingScriptHashHex,
  );

  validateSpendingDataSource(address.type, spendingDataSource);
  validateStakingDataSource(address.type, stakingDataSource);

  if (address is DeviceOwnedAddressByron) {
    return ParsedAddressParams.byron(
      protocolMagic: parsedNetwork.protocolMagic,
      spendingDataSource: spendingDataSource,
      stakingDataSource: stakingDataSource,
    );
  } else {
    final networkId = parsedNetwork.networkId;
    return ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData(
        networkId: networkId,
        spendingDataSource: spendingDataSource,
        stakingDataSource: stakingDataSource,
      ),
    );
  }
}

SpendingDataSource extractSpendingDataSource(
  List<int>? spendingPath,
  String? spendingScriptHash,
) {
  if (spendingPath != null) {
    validate(
      spendingScriptHash == null,
      InvalidDataReason.addressInvalidSpendingScriptHash.message,
    );
    return SpendingDataSource.path(
      path: parseBIP32Path(
        spendingPath,
        InvalidDataReason.addressInvalidSpendingKeyPath,
      ),
    );
  }
  if (spendingScriptHash != null) {
    validate(
      spendingPath == null,
      InvalidDataReason.addressInvalidSpendingKeyPath.message,
    );
    return SpendingDataSource.scriptHash(
      scriptHashHex: parseHexStringOfLength(
        spendingScriptHash,
        scriptHashLength,
        InvalidDataReason.addressInvalidSpendingScriptHash,
      ),
    );
  }
  return SpendingDataSource.none();
}

StakingDataSource extractStakingDataSource(
  List<int>? stakingPath,
  String? stakingKeyHashHex,
  BlockchainPointer? stakingBlockchainPointer,
  String? stakingScriptHashHex,
) {
  if (stakingPath != null) {
    validate(
      stakingKeyHashHex == null && stakingBlockchainPointer == null && stakingScriptHashHex == null,
      InvalidDataReason.addressInvalidStakingInfo.message,
    );
    return StakingDataSource.keyPath(
      path: parseBIP32Path(
        stakingPath,
        InvalidDataReason.addressInvalidSpendingKeyPath,
      ),
    );
  }
  if (stakingKeyHashHex != null) {
    validate(
      stakingPath == null && stakingBlockchainPointer == null && stakingScriptHashHex == null,
      InvalidDataReason.addressInvalidStakingInfo.message,
    );
    return StakingDataSource.keyHash(
      keyHashHex: parseHexStringOfLength(
        stakingKeyHashHex,
        keyHashLength,
        InvalidDataReason.addressInvalidStakingKeyHash,
      ),
    );
  }
  if (stakingBlockchainPointer != null) {
    validate(
      stakingPath == null && stakingKeyHashHex == null && stakingScriptHashHex == null,
      InvalidDataReason.addressInvalidStakingInfo.message,
    );
    return StakingDataSource.blockchainPointer(
      blockIndex: stakingBlockchainPointer.blockIndex,
      txIndex: stakingBlockchainPointer.txIndex,
      certificateIndex: stakingBlockchainPointer.certificateIndex,
    );
  }
  if (stakingScriptHashHex != null) {
    validate(
      stakingPath == null && stakingKeyHashHex == null && stakingBlockchainPointer == null,
      InvalidDataReason.addressInvalidStakingInfo.message,
    );
    return StakingDataSource.scriptHash(
      scriptHashHex: parseHexStringOfLength(
        stakingScriptHashHex,
        scriptHashLength,
        InvalidDataReason.addressInvalidStakingScriptHash,
      ),
    );
  }
  return StakingDataSource.none();
}
ParsedDatum? parseDatum(TxOutput output) {
  if (output is TxOutputBabbage) {
    final datum = output.datum;
    final ParsedDatum? Function()? parser = switch (datum) {
      DatumHash() => () => parseDatumHash(datum.datumHashHex),
      DatumInline() => () => ParsedDatum.inline(
            datumHex: parseHexString(
              datum.datumHex,
              InvalidDataReason.outputInvalidInlineDatum,
            ),
          ),
      _ => null,
    };

    return parser?.call();
  } else {
    if(output is TxOutputAlonzo) {
      return output.datumHashHex == null ? null : parseDatumHash(output.datumHashHex);
    }
    return null;
  }
}

ParsedDatum? parseDatumHash(String? datumHashHex) {
  if (datumHashHex == null) return null;
  return ParsedDatum.hash(
    datumHashHex: parseHexStringOfLength(
      datumHashHex,
      datumHashLength,
      InvalidDataReason.outputInvalidDatumHash,
    ),
  );
}

