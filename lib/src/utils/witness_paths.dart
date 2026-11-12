import "package:collection/collection.dart";

import "../../ledger_cardano_plus_models.dart";

/// Returns every signing path the Ledger device produces a witness for when it
/// signs [request]: the paths of the inputs, certificates, withdrawals,
/// required signers, collateral inputs and voters it owns, plus
/// [ParsedSigningRequest.additionalWitnessPaths], without duplicates.
///
/// A multisig transaction only uses [ParsedSigningRequest.additionalWitnessPaths].
/// This matches `gatherWitnessPaths` in the Ledger Cardano JS SDK.
List<LedgerSigningPath> gatherWitnessPaths(ParsedSigningRequest request) {
  final tx = request.tx;
  final signingMode = request.signingMode;
  final additionalWitnessPaths = request.additionalWitnessPaths;
  final List<LedgerSigningPath> witnessPaths = [];

  if (signingMode != TransactionSigningModes.multisigTransaction) {
    for (final input in tx.inputs) {
      final path = input.path;
      if (path != null) {
        witnessPaths.add(path);
      }
    }
    final certificates = tx.certificates;

    if (certificates != null) {
      for (final cert in certificates) {
        final void Function() invoker = switch (cert) {
          StakeRegistrationConway() => () {
            final credential = cert.stakeCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          StakeDeregistration() => () {
            final credential = cert.stakeCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          StakeDeregistrationConway() => () {
            final credential = cert.stakeCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          StakeDelegation() => () {
            final credential = cert.stakeCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          VoteDelegation() => () {
            final credential = cert.stakeCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          AuthorizeCommitteeHot() => () {
            final credential = cert.coldCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          ResignCommitteeCold() => () {
            final credential = cert.coldCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          DRepRegistration() => () {
            final credential = cert.dRepCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          DRepDeregistration() => () {
            final credential = cert.dRepCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          DRepUpdate() => () {
            final credential = cert.dRepCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          StakePoolRegistration() => () {
            for (final owner in cert.pool.owners) {
              final void Function() invoker = switch (owner) {
                DeviceOwnedPoolOwner() => () => witnessPaths.add(owner.path),
                _ => () => (),
              };
              invoker();
            }
            final poolKey = cert.pool.poolKey;
            final void Function() invoker = switch (poolKey) {
              DeviceOwnedPoolKey() => () => witnessPaths.add(poolKey.path),
              _ => () => (),
            };
            invoker();
          },
          StakePoolRetirement() => () => witnessPaths.add(cert.path),
          StakeRegistration() => () {},
          StakePoolAndDRepDelegation() => () {
            final credential = cert.stakeCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          AccountRegistrationDelegationToStakePool() => () {
            final credential = cert.stakeCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          AccountRegistrationDelegationToDRep() => () {
            final credential = cert.stakeCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
          AccountRegistrationDelegationToStakePoolAndDRep() => () {
            final credential = cert.stakeCredential;
            final void Function() invoker = switch (credential) {
              CredentialKeyPath() => () => witnessPaths.add(credential.path),
              _ => () => (),
            };
            invoker();
          },
        };
        invoker();
      }
    }

    for (final withdrawal in tx.withdrawals ?? <ParsedWithdrawal>[]) {
      final void Function() invoker = switch (withdrawal.stakeCredential) {
        CredentialKeyPath(path: final path) => () => witnessPaths.add(path),
        _ => () => (),
      };
      invoker();
    }

    for (final signer in tx.requiredSigners ?? <ParsedRequiredSigner>[]) {
      final void Function() invoker = switch (signer) {
        RequiredSignerPath() => () => witnessPaths.add(signer.path),
        _ => () => (),
      };
      invoker();
    }

    for (final collateral in tx.collateralInputs ?? <ParsedInput>[]) {
      final path = collateral.path;
      if (path != null) {
        witnessPaths.add(path);
      }
    }

    final votingProcedures = tx.votingProcedures;
    for (final votingProcedure in (votingProcedures ?? <ParsedVoterVotes>[])) {
      final void Function() invoker = switch (votingProcedure.voter) {
        CommitteeKeyPath(keyPath: final keyPath) => () => witnessPaths.add(keyPath),
        DrepKeyPath(keyPath: final keyPath) => () => witnessPaths.add(keyPath),
        StakePoolKeyPath(keyPath: final keyPath) => () => witnessPaths.add(keyPath),
        _ => () {},
      };
      invoker();
    }
  }

  witnessPaths.addAll(additionalWitnessPaths);

  return uniquify(witnessPaths);
}

/// Removes paths whose raw [LedgerSigningPath.signingPath] already appears earlier in [paths].
List<LedgerSigningPath> uniquify(List<LedgerSigningPath> paths) {
  const eq = DeepCollectionEquality();
  final List<LedgerSigningPath> finalPaths = [];
  for (final path in paths) {
    // compare the raw paths: .shelley(...) and .custom([...]) can describe the same key
    if (finalPaths.none((addedPath) => eq.equals(addedPath.signingPath, path.signingPath))) {
      finalPaths.add(path);
    }
  }

  return finalPaths;
}
