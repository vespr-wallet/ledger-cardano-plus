import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/constants.dart";
import "../utils/exceptions.dart";
import "ledger_signing_path.dart";
import "parsed_certificate.dart";
import "parsed_credential.dart";
import "parsed_output_destination.dart";
import "parsed_pool_key.dart";
import "parsed_pool_owner.dart";
import "parsed_transaction.dart";
import "parsed_transaction_options.dart";
import "parsed_voter.dart";
import "parsed_voter_votes.dart";
import "parsed_withdrawal.dart";
import "transaction_signing_mode.dart";

part "parsed_signing_request.freezed.dart";

@freezed
sealed class ParsedSigningRequest with _$ParsedSigningRequest {
  factory ParsedSigningRequest({
    required ParsedTransaction tx,
    required TransactionSigningModes signingMode,
    required List<LedgerSigningPath> additionalWitnessPaths,
    ParsedTransactionOptions? options,
  }) = _ParsedSigningRequest;
  ParsedSigningRequest._();

  /// Infers [signingMode] from the transaction, like the JS SDK does when the mode is omitted.
  /// Throws [LedgerCardanoValidationException] when the mode is ambiguous.
  /// [TransactionSigningModes.unrestrictedTransaction] needs Expert mode, so it is never inferred.
  factory ParsedSigningRequest.withInferredSigningMode({
    required ParsedTransaction tx,
    required List<LedgerSigningPath> additionalWitnessPaths,
    ParsedTransactionOptions? options,
  }) => ParsedSigningRequest(
    tx: tx,
    signingMode: _inferSigningMode(tx, additionalWitnessPaths),
    additionalWitnessPaths: additionalWitnessPaths,
    options: options,
  );
}

LedgerCardanoValidationException _ambiguousSigningMode() =>
    LedgerCardanoValidationException("Cannot determine transaction signing mode");

TransactionSigningModes _inferSigningMode(ParsedTransaction tx, List<LedgerSigningPath> additionalWitnessPaths) {
  final certificates = tx.certificates ?? const <ParsedCertificate>[];

  // Pool registration goes first: its modes are stricter than ordinary, multisig or Plutus
  final poolRegistrations = certificates.whereType<StakePoolRegistration>();
  if (poolRegistrations.isNotEmpty) {
    if (certificates.length != 1) throw _ambiguousSigningMode();

    final pool = poolRegistrations.first.pool;
    final deviceOwnedOwners = pool.owners.whereType<DeviceOwnedPoolOwner>().length;
    if (pool.poolKey is ThirdPartyPoolKey && deviceOwnedOwners == 1) {
      return TransactionSigningModes.poolRegistrationAsOwner;
    }
    if (pool.poolKey is DeviceOwnedPoolKey && deviceOwnedOwners == 0) {
      return TransactionSigningModes.poolRegistrationAsOperator;
    }
    throw _ambiguousSigningMode();
  }

  // These fields are only allowed in Plutus mode
  final hasPlutusFields =
      tx.scriptDataHashHex != null ||
      (tx.collateralInputs?.isNotEmpty ?? false) ||
      tx.collateralOutput != null ||
      tx.totalCollateral != null ||
      (tx.referenceInputs?.isNotEmpty ?? false);
  if (hasPlutusFields) return TransactionSigningModes.plutusTransaction;

  // Witness paths only break ties when the body alone says nothing
  final txMode = _inferOrdinaryOrMultisigFromTx(tx, certificates);
  final witnessMode = _inferOrdinaryOrMultisigFromWitnessPaths(additionalWitnessPaths);
  if (txMode != null && witnessMode != null && txMode != witnessMode) throw _ambiguousSigningMode();

  return txMode ?? witnessMode ?? (throw _ambiguousSigningMode());
}

TransactionSigningModes? _inferOrdinaryOrMultisigFromTx(ParsedTransaction tx, List<ParsedCertificate> certificates) {
  TransactionSigningModes? mode;

  void commit(TransactionSigningModes newMode) {
    if (mode != null && mode != newMode) throw _ambiguousSigningMode();
    mode = newMode;
  }

  // Key paths mean ordinary, script hashes mean multisig, key hashes say nothing
  void commitCredential(ParsedCredential credential) {
    switch (credential) {
      case CredentialKeyPath():
        commit(TransactionSigningModes.ordinaryTransaction);
      case CredentialScriptHash():
        commit(TransactionSigningModes.multisigTransaction);
      case CredentialKeyHash():
        break;
    }
  }

  // Multisig never witnesses inputs by path and only allows third-party outputs
  if (tx.inputs.any((input) => input.path != null)) commit(TransactionSigningModes.ordinaryTransaction);
  if (tx.outputs.any((output) => output.destination is DeviceOwned)) {
    commit(TransactionSigningModes.ordinaryTransaction);
  }

  for (final certificate in certificates) {
    switch (certificate) {
      case StakeRegistration(:final stakeCredential) ||
          StakeRegistrationConway(:final stakeCredential) ||
          StakeDeregistration(:final stakeCredential) ||
          StakeDeregistrationConway(:final stakeCredential) ||
          StakeDelegation(:final stakeCredential) ||
          VoteDelegation(:final stakeCredential) ||
          StakePoolAndDRepDelegation(:final stakeCredential) ||
          AccountRegistrationDelegationToStakePool(:final stakeCredential) ||
          AccountRegistrationDelegationToDRep(:final stakeCredential) ||
          AccountRegistrationDelegationToStakePoolAndDRep(:final stakeCredential):
        commitCredential(stakeCredential);
      case AuthorizeCommitteeHot(:final coldCredential) || ResignCommitteeCold(:final coldCredential):
        commitCredential(coldCredential);
      case DRepRegistration(:final dRepCredential) ||
          DRepDeregistration(:final dRepCredential) ||
          DRepUpdate(:final dRepCredential):
        commitCredential(dRepCredential);
      // Pool retirement is not allowed in multisig mode
      case StakePoolRetirement():
        commit(TransactionSigningModes.ordinaryTransaction);
      case StakePoolRegistration():
        break;
    }
  }

  for (final withdrawal in tx.withdrawals ?? const <ParsedWithdrawal>[]) {
    commitCredential(withdrawal.stakeCredential);
  }

  for (final voterVotes in tx.votingProcedures ?? const <ParsedVoterVotes>[]) {
    switch (voterVotes.voter) {
      case CommitteeKeyPath() || DrepKeyPath() || StakePoolKeyPath():
        commit(TransactionSigningModes.ordinaryTransaction);
      case CommitteeScriptHash() || DrepScriptHash():
        commit(TransactionSigningModes.multisigTransaction);
      case CommitteeKeyHash() || DrepKeyHash() || StakePoolKeyHash():
        break;
    }
  }

  return mode;
}

// 1852' paths are ordinary, 1854' paths are multisig; other purposes (e.g. 1855' mint) say nothing
TransactionSigningModes? _inferOrdinaryOrMultisigFromWitnessPaths(List<LedgerSigningPath> paths) {
  final purposes = paths.map((path) => path.signingPath.firstOrNull).toSet();
  final hasOrdinary = purposes.contains(harden + 1852);
  final hasMultisig = purposes.contains(harden + 1854);

  if (hasOrdinary && hasMultisig) throw _ambiguousSigningMode();
  if (hasOrdinary) return TransactionSigningModes.ordinaryTransaction;
  if (hasMultisig) return TransactionSigningModes.multisigTransaction;
  return null;
}
