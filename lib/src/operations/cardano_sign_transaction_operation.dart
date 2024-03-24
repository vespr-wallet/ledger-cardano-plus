import 'dart:math';
import 'dart:typed_data';

import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/parsed_asset_group.dart';
import 'package:ledger_cardano/src/models/parsed_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_datum.dart';
import 'package:ledger_cardano/src/models/parsed_input.dart';
import 'package:ledger_cardano/src/models/parsed_output.dart';
import 'package:ledger_cardano/src/models/parsed_required_signer.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/parsed_transaction_options.dart';
import 'package:ledger_cardano/src/models/parsed_tx_auxiliary_data.dart';
import 'package:ledger_cardano/src/models/parsed_voter_votes.dart';
import 'package:ledger_cardano/src/models/parsed_withdrawal.dart';
import 'package:ledger_cardano/src/models/script_data_hash.dart';
import 'package:ledger_cardano/src/models/signed_transaction_data.dart';
import 'package:ledger_cardano/src/models/tx_auxiliary_data_supplement.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';
import 'package:ledger_cardano/src/models/witness.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

class CardanoSignTransactionOperation extends ComplexLedgerOperation<SignedTransactionData> {
  final ParsedTransaction transaction;
  final TransactionSigningMode signingMode;
  final List<List<int>> witnessPaths;
  final ParsedTransactionOptions options;
  final CardanoVersion cardanoVersion;

  const CardanoSignTransactionOperation({
    required this.transaction,
    required this.signingMode,
    required this.witnessPaths,
    required this.options,
    required this.cardanoVersion,
  });

  @override
  Future<SignedTransactionData> invoke(LedgerSendFct send) async {
    VersionCompatibility.checkVersionCompatibility(cardanoVersion);
    // ensureRequestSupportedByAppVersion(cardanoVersion, transaction);

    final auxDataBeforeTxBody =
        VersionCompatibility.checkVersionCompatibility(cardanoVersion).supportsCatalystRegistration ||
            VersionCompatibility.checkVersionCompatibility(cardanoVersion).supportsCIP36;

    // init
    await signTx_init(send);

    final auxiliaryData = transaction.auxiliaryData;
    // auxiliary data
    TxAuxiliaryDataSupplement? auxiliaryDataSupplement;
    if (auxDataBeforeTxBody && auxiliaryData != null) {
      auxiliaryDataSupplement = await signTx_setAuxiliaryData(auxiliaryData, cardanoVersion, send);
    }

    // inputs
    for (final input in transaction.inputs) {
      await signTx_addInput(input, send);
    }

    // outputs
    for (final output in transaction.outputs) {
      await signTx_addOutput(output, cardanoVersion, send);
    }

    // fee
    await signTx_setFee(transaction.fee, send);

    final ttl = transaction.ttl;
    // ttl
    if (ttl != null) {
      await signTx_setTtl(ttl, send);
    }

    // certificates
    for (final certificate in transaction.certificates) {
      await signTx_addCertificate(certificate, cardanoVersion, send);
    }

    // withdrawals
    for (final withdrawal in transaction.withdrawals) {
      await signTx_addWithdrawal(withdrawal, cardanoVersion, send);
    }

    final auxiliarydata = transaction.auxiliaryData;
    // auxiliary data before Ledger app version 2.3.x
    if (!auxDataBeforeTxBody && auxiliarydata != null) {
      auxiliaryDataSupplement = await signTx_setAuxiliaryData_before_v2_3(auxiliarydata, send);
    }

    final validityStart = transaction.validityIntervalStart;

    // validity start
    if (validityStart != null) {
      await signTx_setValidityIntervalStart(validityStart, send);
    }

    final mint = transaction.mint;
    // mint
    if (mint != null) {
      await signTx_setMint(mint, send);
    }

    final scriptDataHashHex = transaction.scriptDataHashHex;
    // script data hash
    if (scriptDataHashHex != null) {
      await signTx_setScriptDataHash(scriptDataHashHex, send);
    }

    // collateral inputs
    for (final input in transaction.collateralInputs) {
      await signTx_addCollateralInput(input, send);
    }

    // required signers
    for (final requiredSigner in transaction.requiredSigners) {
      await signTx_addRequiredSigner(requiredSigner, send);
    }

    final collateralOutput = transaction.collateralOutput;
    // collateral output
    if (collateralOutput != null) {
      await signTx_addCollateralOutput(collateralOutput, cardanoVersion, send);
    }

    final totalCollateral = transaction.totalCollateral;
    // totalCollateral
    if (totalCollateral != null) {
      await signTx_addTotalCollateral(totalCollateral, send);
    }

    // reference inputs
    for (final referenceInput in transaction.referenceInputs) {
      await signTx_addReferenceInput(referenceInput, send);
    }

    // voting procedures
    for (final voterVotes in transaction.votingProcedures) {
      await signTx_addVoterVotes(voterVotes, send);
    }

    final treasury = transaction.treasury;

    // treasury
    if (treasury != null) {
      await signTx_addTreasury(treasury, send);
    }

    final donation = transaction.donation;
    // donation
    if (donation != null) {
      await signTx_addDonation(donation, send);
    }

    // confirm
    final txHashHex = await signTx_awaitConfirm(send);

    // witnesses
    final witnesses = <Witness>[];
    for (final path in witnessPaths) {
      final witness = await signTx_getWitness(path, send);
      witnesses.add(witness);
    }

    return SignedTransactionData(
      txHashHex: txHashHex,
      witnesses: witnesses,
      auxiliaryDataSupplement: auxiliaryDataSupplement,
    );
  }

  Future<void> signTx_init(LedgerSendFct send) async {
    final data =
        SerializationUtils.serializeTxInit(transaction, signingMode, witnessPaths.length, options, cardanoVersion);

    await send(
      SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageInit,
        p2: p2Unused,
        data: data,
        prependDataLength: true,
        debugName: 'Sign Transaction Init',
      ),
    );
  }

  Future<void> signTx_addInputs(LedgerSendFct send) async {
    for (final input in transaction.inputs) {
      final data = SerializationUtils.serializeTxInput(input);

      await send(
        SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageInputs,
          p2: p2Unused,
          data: data,
          prependDataLength: true,
          debugName: 'Sign Transaction Add Inputs',
        ),
      );
    }
  }

  Future<void> signTx_setFee(BigInt fee, LedgerSendFct send) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageFee,
      p2: p2Unused,
      data: SerializationUtils.serializeCoin(fee),
      prependDataLength: true,
      debugName: 'Sign Transaction Set Fee',
    ));
  }

  Future<void> signTx_setTtl(String ttl, LedgerSendFct send) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageTtl,
      p2: p2Unused,
      data: SerializationUtils.serializeTxTtl(ttl),
      prependDataLength: true,
      debugName: 'Sign Transaction Set TTL',
    ));
  }

  Future<void> signTx_addCertificate(
    ParsedCertificate certificate,
    CardanoVersion version,
    LedgerSendFct send,
  ) async {
    final Uint8List data = SerializationUtils.serializeTxCertificate(certificate, version);

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCertificates,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: 'Sign Transaction Add Certificate',
    ));

    if (certificate is StakePoolRegistration) {
      if (VersionCompatibility.checkVersionCompatibility(version).supportsPoolRegistrationAsOperator) {
        await signTx_addStakePoolRegistrationCertificate(certificate, send);
      }
    }
  }

  Future<void> signTx_addStakePoolRegistrationCertificate(
    ParsedCertificate certificate,
    LedgerSendFct send,
  ) async {
    if (certificate is! StakePoolRegistration) {
      throw ValidationException('Invalid certificate type');
    }
    final poolParams = certificate;
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCertificates,
      p2: p2InitPool,
      data: SerializationUtils.serializePoolInitialParams(poolParams.pool),
      prependDataLength: true,
      debugName: 'Sign Transaction Stake Pool Registration Init',
    ));

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCertificates,
      p2: p2PoolKey,
      data: SerializationUtils.serializePoolKey(poolParams.pool.poolKey),
      prependDataLength: true,
      debugName: 'Sign Transaction Stake Pool Registration Pool Key',
    ));

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCertificates,
      p2: p2VrfKey,
      data: Uint8List.fromList(hex.decode(poolParams.pool.vrfHashHex)),
      prependDataLength: true,
      debugName: 'Sign Transaction Stake Pool Registration VRF Key',
    ));

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCertificates,
      p2: p2Financials,
      data: SerializationUtils.serializeFinancials(poolParams.pool),
      prependDataLength: true,
      debugName: 'Sign Transaction Stake Pool Registration Financials',
    ));

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCertificates,
      p2: p2RewardAccount,
      data: SerializationUtils.serializePoolRewardAccount(poolParams.pool.rewardAccount),
      prependDataLength: true,
      debugName: 'Sign Transaction Stake Pool Registration Reward Account',
    ));

    for (final owner in poolParams.pool.owners) {
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageCertificates,
        p2: p2Owners,
        data: SerializationUtils.serializePoolOwner(owner),
        prependDataLength: true,
        debugName: 'Sign Transaction Stake Pool Registration Owner',
      ));
    }

    for (final relay in poolParams.pool.relays) {
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageCertificates,
        p2: p2Relays,
        data: SerializationUtils.serializePoolRelay(relay),
        prependDataLength: true,
        debugName: 'Sign Transaction Stake Pool Registration Relay',
      ));
    }

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCertificates,
      p2: p2Metadata,
      data: SerializationUtils.serializePoolMetadata(poolParams.pool.metadata),
      prependDataLength: true,
      debugName: 'Sign Transaction Stake Pool Registration Metadata',
    ));

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCertificates,
      p2: p2Confirmation,
      data: Uint8List(0),
      prependDataLength: true,
      debugName: 'Sign Transaction Stake Pool Registration Confirmation',
    ));
  }

  Future<TxAuxiliaryDataSupplement?> signTx_setAuxiliaryData(
    ParsedTxAuxiliaryData auxiliaryData,
    CardanoVersion version,
    LedgerSendFct send,
  ) async {
    if (!(auxiliaryData is CIP36Registration || auxiliaryData is ArbitraryHash)) {
      throw ValidationException('Auxiliary data type not implemented');
    }

    final serializedAuxData = SerializationUtils.serializeTxAuxiliaryData(auxiliaryData);
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageAuxData,
      p2: p2Unused,
      data: serializedAuxData,
      prependDataLength: true,
      debugName: 'Sign Transaction Set Auxiliary Data',
    ));

    if (auxiliaryData is CIP36Registration) {
      final params = auxiliaryData.params;

      if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
        final serializedInitData = SerializationUtils.serializeCVoteRegistrationInit(params);
        await send(SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageAuxData,
          p2: p2Init,
          data: serializedInitData,
          prependDataLength: true,
          debugName: 'Sign Transaction Set CVote Registration Init',
        ));
      }

      if (params.votePublicKey != null || params.votePublicKeyPath != null) {
        final serializedVoteKeyData = SerializationUtils.serializeCVoteRegistrationVoteKey(
            params.votePublicKey, params.votePublicKeyPath, version);
        await send(SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageAuxData,
          p2: p2VoteKey,
          data: serializedVoteKeyData,
          prependDataLength: true,
          debugName: 'Sign Transaction Set CVote Registration Vote Key',
        ));
      }

      if (params.delegations != null) {
        for (final delegation in params.delegations!) {
          final serializedDelegationData = SerializationUtils.serializeCVoteRegistrationDelegation(delegation);
          await send(SendOperation(
            ins: InstructionType.signTransaction.insValue,
            p1: p1StageAuxData,
            p2: p2Delegation,
            data: serializedDelegationData,
            prependDataLength: true,
            debugName: 'Sign Transaction Set CVote Registration Delegation',
          ));
        }
      }

      final serializedStakingKeyData = SerializationUtils.serializeCVoteRegistrationStakingPath(params.stakingPath);
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageAuxData,
        p2: p2StakingKey,
        data: serializedStakingKeyData,
        prependDataLength: true,
        debugName: 'Sign Transaction Set CVote Registration Staking Key',
      ));

      final serializedPaymentAddressData =
          SerializationUtils.serializeCVoteRegistrationPaymentDestination(params.paymentDestination, version);
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageAuxData,
        p2: p2PaymentAddress,
        data: serializedPaymentAddressData,
        prependDataLength: true,
        debugName: 'Sign Transaction Set CVote Registration Payment Address',
      ));
      final serializedNonceData = SerializationUtils.serializeCVoteRegistrationNonce(params.nonce);
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageAuxData,
        p2: p2Nonce,
        data: serializedNonceData,
        prependDataLength: true,
        debugName: 'Sign Transaction Set CVote Registration Nonce',
      ));

      if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
        final serializedVotingPurposeData =
            SerializationUtils.serializeCVoteRegistrationVotingPurpose(params.votingPurpose);
        await send(SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageAuxData,
          p2: p2VotingPurpose,
          data: serializedVotingPurposeData,
          prependDataLength: true,
          debugName: 'Sign Transaction Set CVote Registration Voting Purpose',
        ));
      }

      final response = await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageAuxData,
        p2: p2Confirm,
        data: Uint8List(0),
        prependDataLength: true,
        debugName: 'Sign Transaction Confirm and Receive CVote Registration Hash and Signature',
      ));

      if (response.remainingLength != auxiliaryDataHashLength + ed25519SignatureLength) {
        throw Exception('Unexpected response length for auxiliary data hash and signature');
      }

      final auxDataHash = response.read(auxiliaryDataHashLength);
      final signature = response.read(ed25519SignatureLength);

      final auxDataHashHex = hex.encode(auxDataHash);
      final signatureHex = hex.encode(signature);

      return TxAuxiliaryDataSupplement(
        auxiliaryDataHashHex: auxDataHashHex,
        cip36VoteRegistrationSignatureHex: signatureHex,
      );
    }

    return null;
  }

  Future<void> signTx_addOutput_sendChunks(String hexString, int p2, LedgerSendFct send) async {
    var start = maxChunkSize * 2;

    while (start < hexString.length) {
      final end = min(hexString.length, start + maxChunkSize * 2);
      final chunk = hexString.substring(start, end);

      await send(
        SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageOutputs,
          p2: p2,
          data: Uint8List.fromList([
            ...Uint32List.fromList([chunk.length ~/ 2]).buffer.asUint8List(),
            ...hex.decode(chunk),
          ]),
          prependDataLength: true,
          debugName: 'Sign Transaction Add Output Chunk',
        ),
      );
      start = end;
    }
  }

  Future<void> signTx_addWithdrawal(
    ParsedWithdrawal withdrawal,
    CardanoVersion version,
    LedgerSendFct send,
  ) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageWithdrawals,
      p2: p2Unused,
      data: SerializationUtils.serializeTxWithdrawal(withdrawal, version),
      prependDataLength: true,
      debugName: 'Sign Transaction Add Withdrawal',
    ));
  }

  Future<TxAuxiliaryDataSupplement?> signTx_setAuxiliaryData_before_v2_3(
    ParsedTxAuxiliaryData auxiliaryData,
    LedgerSendFct send,
  ) async {
    if (auxiliaryData is! ArbitraryHash) {
      throw ValidationException('Auxiliary data type not implemented');
    }

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageAuxData,
      p2: p2Unused,
      data: Uint8List.fromList(hex.decode(auxiliaryData.hashHex)),
      prependDataLength: true,
      debugName: 'Sign Transaction Set Auxiliary Data Before v2.3',
    ));

    return null;
  }

  Future<void> signTx_setValidityIntervalStart(String validityIntervalStartStr, LedgerSendFct send) async {
    final Uint8List data = SerializationUtils.serializeTxValidityStart(validityIntervalStartStr);

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageValidityIntervalStart,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: 'Sign Transaction Set Validity Interval Start',
    ));
  }

  Future<void> signTx_setMint(
    List<ParsedAssetGroup> mint,
    LedgerSendFct send,
  ) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageMint,
      p2: p2MintBasicData,
      data: SerializationUtils.serializeMintBasicParams(mint),
      prependDataLength: true,
      debugName: 'Sign Transaction Set Mint Basic Data',
    ));

    await signTx_addTokenBundle(mint, p1StageMint, send, SerializationUtils.int64ToBuf);

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageMint,
      p2: p2MintConfirm,
      data: Uint8List(0),
      prependDataLength: true,
      debugName: 'Sign Transaction Confirm Mint',
    ));
  }

  Future<void> signTx_addTokenBundle<T>(
    List<ParsedAssetGroup> tokenBundle,
    int p1,
    LedgerSendFct send,
    SerializeTokenAmountFn<T> serializeTokenAmountFn,
  ) async {
    for (final assetGroup in tokenBundle) {
      final Uint8List assetGroupData = SerializationUtils.serializeAssetGroup(assetGroup);
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1,
        p2: p2AssetGroup,
        data: assetGroupData,
        prependDataLength: true,
        debugName: 'Sign Transaction Add Asset Group',
      ));

      for (final token in assetGroup.tokens) {
        final Uint8List tokenData = SerializationUtils.serializeToken<T>(token, serializeTokenAmountFn);
        await send(SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1,
          p2: p2Token,
          data: tokenData,
          prependDataLength: true,
          debugName: 'Sign Transaction Add Token',
        ));
      }
    }
  }

  Future<void> signTx_setScriptDataHash(ScriptDataHash scriptDataHash, LedgerSendFct send) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageScriptDataHash,
      p2: p2Unused,
      data: Uint8List.fromList(hex.decode(scriptDataHash.hexString)),
      prependDataLength: true,
      debugName: 'Sign Transaction Set Script Data Hash',
    ));
  }

  Future<void> signTx_addCollateralInput(ParsedInput collateralInput, LedgerSendFct send) async {
    final data = SerializationUtils.serializeTxInput(collateralInput);

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCollateralInputs,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: 'Sign Transaction Add Collateral Input',
    ));
  }

  Future<void> signTx_addRequiredSigner(ParsedRequiredSigner requiredSigner, LedgerSendFct send) async {
    final data = SerializationUtils.serializeRequiredSigner(requiredSigner);

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageRequiredSigners,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: 'Sign Transaction Add Required Signer',
    ));
  }

  Future<void> signTx_addCollateralOutput(
    ParsedOutput collateralOutput,
    CardanoVersion version,
    LedgerSendFct send,
  ) async {
    // Basic data
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCollateralOutput,
      p2: p2CollateralOutputBasicData,
      data: SerializationUtils.serializeTxOutputBasicParams(collateralOutput, version),
      prependDataLength: true,
      debugName: 'Sign Transaction Collateral Output Basic Data',
    ));

    await signTx_addTokenBundle(
        collateralOutput.tokenBundle, p1StageCollateralOutput, send, SerializationUtils.int64ToBuf);

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageCollateralOutput,
      p2: p2CollateralOutputConfirm,
      data: Uint8List(0),
      prependDataLength: true,
      debugName: 'Sign Transaction Confirm Collateral Output',
    ));
  }

  Future<void> signTx_addTotalCollateral(
    BigInt totalCollateral,
    LedgerSendFct send,
  ) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageTotalCollateral,
      p2: p2Unused,
      data: SerializationUtils.serializeCoin(totalCollateral),
      prependDataLength: true,
      debugName: 'Sign Transaction Add Total Collateral',
    ));
  }

  Future<void> signTx_addReferenceInput(ParsedInput referenceInput, LedgerSendFct send) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageReferenceInputs,
      p2: p2Unused,
      data: SerializationUtils.serializeTxInput(referenceInput),
      prependDataLength: true,
      debugName: 'Sign Transaction Add Reference Input',
    ));
  }

  Future<void> signTx_addVoterVotes(ParsedVoterVotes voterVotes, LedgerSendFct send) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageVotingProcedures,
      p2: p2Unused,
      data: SerializationUtils.serializeVoterVotes(voterVotes),
      prependDataLength: true,
      debugName: 'Sign Transaction Add Voter Votes',
    ));
  }

  Future<void> signTx_addTreasury(BigInt treasury, LedgerSendFct send) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageTreasury,
      p2: p2Unused,
      data: SerializationUtils.serializeCoin(treasury),
      prependDataLength: true,
      debugName: 'Sign Transaction Add Treasury',
    ));
  }

  Future<void> signTx_addDonation(BigInt donation, LedgerSendFct send) async {
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageDonation,
      p2: p2Unused,
      data: SerializationUtils.serializeCoin(donation),
      prependDataLength: true,
      debugName: 'Sign Transaction Add Donation',
    ));
  }

  Future<String> signTx_awaitConfirm(LedgerSendFct send) async {
    final response = await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageConfirm,
      p2: p2Unused,
      data: Uint8List(0),
      prependDataLength: true,
      debugName: 'Sign Transaction Await Confirm',
    ));

    if (response.remainingLength != txHashLength) {
      throw ValidationException('Unexpected response length for transaction hash');
    }

    final txHashHex = hex.encode(response.read(response.remainingLength));
    return txHashHex;
  }

  Future<Witness> signTx_getWitness(List<int> path, LedgerSendFct send) async {
    final Uint8List data = SerializationUtils.serializeTxWitnessRequest(path);

    final response = await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageWitnesses,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: 'Sign Transaction Get Witness',
    ));

    if (response.remainingLength != ed25519SignatureLength) {
      throw ValidationException('Unexpected response length for witness signature');
    }

    final witnessSignature = response.read(response.remainingLength);
    final witnessSignatureHex = hex.encode(witnessSignature);

    return Witness(
      path: path,
      witnessSignatureHex: witnessSignatureHex,
    );
  }

  Future<void> signTx_addInput(ParsedInput input, LedgerSendFct send) async {
    final data = SerializationUtils.serializeTxInput(input);

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageInputs,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: 'Sign Transaction Add Input',
    ));
  }

  Future<void> signTx_addOutput(
    ParsedOutput output,
    CardanoVersion version,
    LedgerSendFct send,
  ) async {
    // Basic data
    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageOutputs,
      p2: p2OutputBasicData,
      data: SerializationUtils.serializeTxOutputBasicParams(output, version),
      prependDataLength: true,
      debugName: 'Sign Transaction Output Basic Data',
    ));

    await signTx_addTokenBundle(output.tokenBundle, p1StageOutputs, send, SerializationUtils.int64ToBuf);

    final outputDatum = output.datum;
    // Datum
    if (outputDatum != null) {
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageOutputs,
        p2: p2OutputDatum,
        data: SerializationUtils.serializeTxOutputDatum(outputDatum, version),
        prependDataLength: true,
        debugName: 'Sign Transaction Output Datum',
      ));
      // Datum Chunks
      if (outputDatum is ParsedDatumInline) {
        if (outputDatum.datumHex.length / 2 > maxChunkSize) {
          await signTx_addOutput_sendChunks(outputDatum.datumHex, p2OutputDatumChunk, send);
        }
      }
    }

    // Reference Script
    if (output.referenceScriptHex != null) {
      await send(SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageOutputs,
        p2: p2OutputScript,
        data: SerializationUtils.serializeTxOutputRefScript(output.referenceScriptHex!),
        prependDataLength: true,
        debugName: 'Sign Transaction Output Reference Script',
      ));
      // Script chunks
      if (output.referenceScriptHex!.length / 2 > maxChunkSize) {
        await signTx_addOutput_sendChunks(output.referenceScriptHex!, p2OutputScriptChunk, send);
      }
    }

    await send(SendOperation(
      ins: InstructionType.signTransaction.insValue,
      p1: p1StageOutputs,
      p2: p2OutputConfirm,
      data: Uint8List(0),
      prependDataLength: true,
      debugName: 'Sign Transaction Confirm Output',
    ));
  }
}
