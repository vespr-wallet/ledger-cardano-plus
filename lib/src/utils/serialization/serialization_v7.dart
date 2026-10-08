part of '../serialization_utils.dart';

class SerializationV7 {
  static Uint8List serializeV7TxInit({
    required ParsedTransaction tx,
    required TransactionSigningModes signingMode,
    required int numWitnesses,
    required ParsedTransactionOptions? options,
    required CardanoVersion version,
  }) {
    return useBinaryWriter((ByteDataWriter writer) {
      final compatibility = version.compatibility;

      if (compatibility.supportsConway) {
        SerializationUtils.serializeTxOptions(writer, options ?? ParsedTransactionOptions(tagCborSets: false));
      } else {
        writer.write(Uint8List(0));
      }

      writer.writeUint8(tx.network.networkId);
      writer.writeUint32(tx.network.networkMagic);

      SerializationUtils.serializeOptionFlag(writer, tx.ttl != null);
      SerializationUtils.serializeOptionFlag(writer, tx.auxiliaryData != null);
      SerializationUtils.serializeOptionFlag(writer, tx.validityIntervalStart != null);

      if (compatibility.supportsMint || version.flags.isAppXS) {
        SerializationUtils.serializeOptionFlag(writer, tx.mint != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsAlonzo) {
        SerializationUtils.serializeOptionFlag(writer, tx.scriptDataHashHex != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsAlonzo) {
        SerializationUtils.serializeOptionFlag(writer, tx.includeNetworkId ?? false);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsBabbage) {
        SerializationUtils.serializeOptionFlag(writer, tx.collateralOutput != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsBabbage) {
        SerializationUtils.serializeOptionFlag(writer, tx.totalCollateral != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsConway) {
        SerializationUtils.serializeOptionFlag(writer, tx.treasury != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsConway) {
        SerializationUtils.serializeOptionFlag(writer, tx.donation != null);
      } else {
        writer.write(Uint8List(0));
      }

      writer.writeUint8(signingMode.value);

      writer.writeUint32(tx.inputs.length);
      writer.writeUint32(tx.outputs.length);
      writer.writeUint32(tx.certificates?.length ?? 0);
      writer.writeUint32(tx.withdrawals?.length ?? 0);

      // pre-Babbage apps expect numWitnesses here; Babbage moved it to the end
      if (!compatibility.supportsBabbage) {
        writer.writeUint32(numWitnesses);
      }

      if (compatibility.supportsAlonzo) {
        writer.writeUint32(tx.collateralInputs?.length ?? 0);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsAlonzo) {
        writer.writeUint32(tx.requiredSigners?.length ?? 0);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsBabbage) {
        writer.writeUint32(tx.referenceInputs?.length ?? 0);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsConway) {
        writer.writeUint32(tx.votingProcedures?.length ?? 0);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsBabbage) {
        writer.writeUint32(numWitnesses);
      } else {
        writer.write(Uint8List(0));
      }

      return writer.toBytes();
    });
  }

  static Uint8List serializeV7TxTtl(BigInt ttl) => SerializationUtils.serializeUint64(ttl);

  static Uint8List serializeV7TxAuxiliaryData(ParsedTxAuxiliaryData auxiliaryData) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (auxiliaryData) {
        ArbitraryHash() => () {
          writer.writeUint8(auxiliaryData.txAuxiliaryDataValue);
          SerializationUtils.writeSerializedHex(writer, auxiliaryData.hashHex);
        },
        CIP36Registration() => () {
          writer.writeUint8(auxiliaryData.txAuxiliaryDataValue);
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7CVoteRegistrationInit(ParsedCVoteRegistrationParams params) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(params.format.encodingValue);

      final numDelegations = params.delegations?.length ?? 0;
      writer.writeUint32(numDelegations);
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7DelegationType(CIP36VoteDelegationType type) =>
      Uint8List.fromList([type.encodingValue]);

  static Uint8List serializeV7CVoteRegistrationVoteKey(
    CVotePublicKey? votePublicKey,
    LedgerSigningPath? votePublicKeyPath,
    CardanoVersion version,
  ) {
    if (votePublicKey != null && votePublicKeyPath != null) {
      throw LedgerCardanoValidationException("Only one of votePublicKey or votePublicKeyPath should be provided");
    }

    return useBinaryWriter((ByteDataWriter writer) {
      if (votePublicKey != null) {
        if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
          writer.write(serializeV7DelegationType(CIP36VoteDelegationType.key));
        }
        SerializationUtils.writeSerializedHex(writer, votePublicKey.value);
      } else {
        if (votePublicKeyPath == null) {
          throw LedgerCardanoValidationException("Missing vote key");
        }

        if (!VersionCompatibility.checkVersionCompatibility(version).supportsCIP36Vote) {
          throw LedgerCardanoValidationException("Key derivation path for vote keys not supported by the device");
        }
        writer.write(serializeV7DelegationType(CIP36VoteDelegationType.path));
        writer.write(SerializationUtils.serializePath(votePublicKeyPath));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7PoolInitialParamsLegacy(ParsedPoolParams pool) {
    return useBinaryWriter((ByteDataWriter writer) {
      final poolkey = pool.poolKey;
      final void Function() poolKeyInvoker = switch (poolkey) {
        ThirdPartyPoolKey() => () => writer.write(serializeV7PoolKeyLegacy(poolkey)),
        _ => () {},
      };
      poolKeyInvoker();

      SerializationUtils.writeSerializedHex(writer, pool.vrfHashHex);
      writer.write(SerializationUtils.serializeCoin(pool.pledge));
      writer.write(SerializationUtils.serializeCoin(pool.cost));
      writer.write(SerializationUtils.serializeUint64(pool.margin.numerator));
      writer.write(SerializationUtils.serializeUint64(pool.margin.denominator));

      final rewardAccount = pool.rewardAccount;
      final void Function() rewardAccountInvoker = switch (rewardAccount) {
        ThirdPartyPoolRewardAccount() => () => writer.write(serializeV7PoolRewardAccountLegacy(rewardAccount)),
        _ => () {},
      };
      rewardAccountInvoker();

      writer.writeUint32(pool.owners.length);
      writer.writeUint32(pool.relays.length);

      return writer.toBytes();
    });
  }

  static Uint8List serializeV7PoolKeyLegacy(ThirdPartyPoolKey key) {
    return useBinaryWriter((ByteDataWriter writer) {
      SerializationUtils.writeSerializedHex(writer, key.hashHex);
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7PoolRewardAccountLegacy(ThirdPartyPoolRewardAccount rewardAccount) {
    return useBinaryWriter((ByteDataWriter writer) {
      SerializationUtils.writeSerializedHex(writer, rewardAccount.rewardAccountHex);
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7CVoteRegistrationDelegation(ParsedCVoteDelegation delegation) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(delegation.cVoteDelegationValue);
      writer.writeUint32(delegation.weight);

      final void Function() invoker = switch (delegation) {
        KeyDelegation() => () => SerializationUtils.writeSerializedHex(writer, delegation.voteKey),
        PathDelegation() => () => writer.write(SerializationUtils.serializePath(delegation.voteKeyPath)),
      };

      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7CVoteRegistrationStakingPath(LedgerSigningPath stakingPath) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(SerializationUtils.serializePath(stakingPath));
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7CVoteRegistrationPaymentDestination(
    ParsedOutputDestination paymentDestination,
    CardanoVersion version,
    CardanoNetwork network,
  ) {
    if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
      return SerializationUtils.serializeTxOutputDestination(paymentDestination, version, network);
    } else {
      final Uint8List Function() invoker = switch (paymentDestination) {
        DeviceOwned() => () => SerializationUtils.serializeAddressParams(paymentDestination.addressParams, version, network),
        _ => () => throw LedgerCardanoValidationException("serializeCVoteRegPayDest: Invalid payment destination"),
      };
      return invoker();
    }
  }

  static Uint8List serializeV7CVoteRegistrationNonce(BigInt nonce) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(SerializationUtils.serializeUint64(nonce));
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7CVoteRegistrationVotingPurpose(BigInt? votingPurpose) {
    return useBinaryWriter((ByteDataWriter writer) {
      SerializationUtils.serializeOptionFlag(writer, votingPurpose != null);
      if (votingPurpose != null) {
        writer.write(SerializationUtils.serializeUint64(votingPurpose));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7TxCertificate(
    ParsedCertificate certificate,
    CardanoVersion version,
  ) {
    if (!VersionCompatibility.checkVersionCompatibility(version).supportsMultisigTransaction) {
      return serializeV7TxCertificatePreMultisig(certificate);
    }

    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (certificate) {
        StakeRegistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.stakeCredential));
        },
        StakeDeregistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.stakeCredential));
        },
        StakeRegistrationConway() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.stakeCredential));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
        },
        StakeDeregistrationConway() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.stakeCredential));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
        },
        StakeDelegation() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.stakeCredential));
          SerializationUtils.writeSerializedHex(writer, certificate.poolKeyHashHex);
        },
        VoteDelegation() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.stakeCredential));
          writer.write(SerializationUtils.serializeDRep(certificate.dRep));
        },
        AuthorizeCommitteeHot() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.coldCredential));
          writer.write(serializeV7Credential(certificate.hotCredential));
        },
        ResignCommitteeCold() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.coldCredential));
          writer.write(serializeV7Anchor(certificate.anchor));
        },
        DRepRegistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.dRepCredential));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
          writer.write(serializeV7Anchor(certificate.anchor));
        },
        DRepDeregistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.dRepCredential));
          SerializationUtils.writeSerializedCoin(writer, certificate.deposit);
        },
        DRepUpdate() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeV7Credential(certificate.dRepCredential));
          writer.write(serializeV7Anchor(certificate.anchor));
        },
        StakePoolAndDRepDelegation() => () => throw LedgerCardanoValidationException(
          "Combined delegation certificates require app version >=8.0.0",
        ),
        AccountRegistrationDelegationToStakePool() => () => throw LedgerCardanoValidationException(
          "Combined delegation certificates require app version >=8.0.0",
        ),
        AccountRegistrationDelegationToDRep() => () => throw LedgerCardanoValidationException(
          "Combined delegation certificates require app version >=8.0.0",
        ),
        AccountRegistrationDelegationToStakePoolAndDRep() => () => throw LedgerCardanoValidationException(
          "Combined delegation certificates require app version >=8.0.0",
        ),
        StakePoolRegistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
        },
        StakePoolRetirement() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(SerializationUtils.serializePath(certificate.path));
          writer.write(SerializationUtils.serializeUint64(certificate.retirementEpoch));
        },
      };

      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7Credential(ParsedCredential credential) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (credential) {
        CredentialKeyPath() => () => {
          writer.writeUint8(credential.credentialValue),
          writer.write(SerializationUtils.serializePath(credential.path)),
        },
        CredentialKeyHash() => () => {
          writer.writeUint8(credential.credentialValue),
          SerializationUtils.writeSerializedHex(writer, credential.keyHashHex),
        },
        CredentialScriptHash() => () => {
          writer.writeUint8(credential.credentialValue),
          SerializationUtils.writeSerializedHex(writer, credential.scriptHashHex),
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7Anchor(ParsedAnchor? anchor) {
    return useBinaryWriter((ByteDataWriter writer) {
      SerializationUtils.serializeOptionFlag(writer, anchor != null);
      if (anchor != null) {
        SerializationUtils.writeSerializedHex(writer, anchor.hashHex);
        writer.write(Uint8List.fromList(utf8.encode(anchor.url)));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7TxCertificatePreMultisig(ParsedCertificate certificate) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (certificate) {
        StakeRegistration() => () {
          final certStakeCredential = certificate.stakeCredential;
          if (certStakeCredential is! CredentialKeyPath) {
            throw LedgerCardanoValidationException("Invalid stake credential");
          }
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(SerializationUtils.serializePath(certStakeCredential.path));
        },
        StakeDeregistration() => () {
          final certStakeCredential = certificate.stakeCredential;
          if (certStakeCredential is! CredentialKeyPath) {
            throw LedgerCardanoValidationException(
              "Invalid stake credential",
            );
          }
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(SerializationUtils.serializePath(certStakeCredential.path));
        },
        StakeDelegation() => () {
          final certStakeCredential = certificate.stakeCredential;
          if (certStakeCredential is! CredentialKeyPath) {
            throw LedgerCardanoValidationException(
              "Invalid stake credential",
            );
          }
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(SerializationUtils.serializePath(certStakeCredential.path));
          SerializationUtils.writeSerializedHex(writer, certificate.poolKeyHashHex);
        },
        StakePoolRegistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
        },
        StakePoolRetirement() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(SerializationUtils.serializePath(certificate.path));
          writer.write(SerializationUtils.serializeUint64(certificate.retirementEpoch));
        },
        StakeRegistrationConway() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        StakeDeregistrationConway() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        VoteDelegation() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        AuthorizeCommitteeHot() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        ResignCommitteeCold() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        DRepRegistration() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        DRepDeregistration() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        DRepUpdate() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        StakePoolAndDRepDelegation() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        AccountRegistrationDelegationToStakePool() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        AccountRegistrationDelegationToDRep() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
        AccountRegistrationDelegationToStakePoolAndDRep() => throw LedgerCardanoValidationException(
          "Conway certificates in pre-multisig serialization",
        ),
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7PoolInitialParams(ParsedPoolParams pool) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint32(pool.owners.length);
      writer.writeUint32(pool.relays.length);
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7PoolKey(ParsedPoolKey key) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (key) {
        DeviceOwnedPoolKey() => () {
          writer.writeUint8(key.poolKeyValue);
          writer.write(SerializationUtils.serializePath(key.path));
        },
        ThirdPartyPoolKey() => () {
          writer.writeUint8(key.poolKeyValue);
          SerializationUtils.writeSerializedHex(writer, key.hashHex);
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7Financials(ParsedPoolParams pool) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(SerializationUtils.serializeCoin(pool.pledge));
      writer.write(SerializationUtils.serializeCoin(pool.cost));
      writer.write(SerializationUtils.serializeUint64(pool.margin.numerator));
      writer.write(SerializationUtils.serializeUint64(pool.margin.denominator));
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7PoolRewardAccount(ParsedPoolRewardAccount rewardAccount) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (rewardAccount) {
        DeviceOwnedPoolRewardAccount() => () {
          writer.writeUint8(rewardAccount.poolRewardAccountValue);
          writer.write(SerializationUtils.serializePath(rewardAccount.path));
        },
        ThirdPartyPoolRewardAccount() => () {
          writer.writeUint8(rewardAccount.poolRewardAccountValue);
          SerializationUtils.writeSerializedHex(writer, rewardAccount.rewardAccountHex);
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7PoolOwner(ParsedPoolOwner owner) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (owner) {
        DeviceOwnedPoolOwner() => () {
          writer.writeUint8(owner.poolOwnerValue);
          writer.write(SerializationUtils.serializePath(owner.path));
        },
        ThirdPartyPoolOwner() => () {
          writer.writeUint8(owner.poolOwnerValue);
          SerializationUtils.writeSerializedHex(writer, owner.hashHex);
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7PoolMetadata(ParsedPoolMetadata? metadata) {
    return useBinaryWriter((ByteDataWriter writer) {
      if (metadata == null) {
        SerializationUtils.serializeOptionFlag(writer, false);
      } else {
        SerializationUtils.serializeOptionFlag(writer, true);
        SerializationUtils.writeSerializedHex(writer, metadata.hashHex);
        writer.write(Uint8List.fromList(utf8.encode(metadata.url)));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7PoolRelay(ParsedPoolRelay relay) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (relay) {
        SingleHostIpAddr() => () {
          writer.writeUint8(relay.relayType.value);
          SerializationUtils.serializeOptional(writer, relay.port, (w, value) => w.writeUint16(value));
          SerializationUtils.serializeOptional(
            writer,
            relay.ipv4,
            (w, value) => w.write(SerializationUtils.serializeIpv4(value)),
          );
          SerializationUtils.serializeOptional(
            writer,
            relay.ipv6,
            (w, value) => w.write(SerializationUtils.serializeIpv6(value)),
          );
        },
        SingleHostName() => () {
          writer.writeUint8(relay.relayType.value);
          SerializationUtils.serializeOptional(writer, relay.port, (w, value) => w.writeUint16(value));
          writer.write(SerializationUtils.serializeDnsName(relay.dnsName));
        },
        MultiHost() => () {
          writer.writeUint8(relay.relayType.value);
          writer.write(SerializationUtils.serializeDnsName(relay.dnsName));
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7TxValidityStart(BigInt validityIntervalStart) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(SerializationUtils.serializeUint64(validityIntervalStart));
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7MintBasicParams(List<ParsedAssetGroup> mint) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint32(mint.length);
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7AssetGroup(ParsedAssetGroup assetGroup) {
    return useBinaryWriter((ByteDataWriter writer) {
      SerializationUtils.writeSerializedHex(writer, assetGroup.policyIdHex);
      writer.writeUint32(assetGroup.tokens.length);
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7Token(ParsedToken token) {
    return useBinaryWriter((ByteDataWriter writer) {
      final assetNameBytes = hex.decode(token.assetNameHex);
      writer.writeUint32(assetNameBytes.length);
      writer.write(assetNameBytes);
      writer.write(SerializationUtils.serializedInt64(token.amount));
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7TxOutputBasicParams(ParsedOutput output, CardanoVersion version, CardanoNetwork network) {
    final ByteDataWriter writer = ByteDataWriter();

    final compatibility = VersionCompatibility.checkVersionCompatibility(version);

    if (compatibility.supportsBabbage) {
      writer.writeUint8(output.format.value);
    }

    writer.write(SerializationUtils.serializeTxOutputDestination(output.destination, version, network));

    writer.write(SerializationUtils.serializeCoin(output.amount));

    writer.writeUint32(output.tokenBundle.length);

    if (compatibility.supportsAlonzo) {
      SerializationUtils.serializeOptionFlag(writer, output.outputDatum != null);
    }

    if (compatibility.supportsBabbage) {
      SerializationUtils.serializeOptionFlag(writer, output.referenceScriptHash != null);
    }

    return writer.toBytes();
  }

  static Uint8List serializeV7VoterVotes(ParsedVoterVotes voterVotes) {
    if (voterVotes.votes.length != 1) {
      throw LedgerCardanoValidationException("too few / too many votes");
    }
    final vote = voterVotes.votes[0];
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(SerializationUtils.serializeVoter(voterVotes.voter));
      writer.write(hex.decode(vote.govActionId.txHashHex));
      writer.writeUint32(vote.govActionId.govActionIndex);
      writer.writeUint8(vote.votingProcedure.vote.value);
      writer.write(serializeV7Anchor(vote.votingProcedure.anchor));
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7TxOutputDatum(ParsedDatum datum, CardanoVersion version) {
    return useBinaryWriter((ByteDataWriter writer) {
      final compatibility = VersionCompatibility.checkVersionCompatibility(version);

      final void Function() invoker = switch (datum) {
        ParsedDatumHash() => () {
          if (compatibility.supportsBabbage) {
            writer.writeUint8(datum.datumValue);
          }
          SerializationUtils.writeSerializedHex(writer, datum.datumHashHex);
        },
        ParsedDatumInline() => () {
          final totalDatumSize = datum.datumHex.length / 2;
          String chunkHex;

          if (totalDatumSize > maxChunkSize) {
            chunkHex = datum.datumHex.substring(0, maxChunkSize * 2);
          } else {
            chunkHex = datum.datumHex;
          }
          final chunkSize = chunkHex.length / 2;

          writer.writeUint8(datum.datumValue);
          writer.writeUint32(totalDatumSize.toInt());
          writer.writeUint32(chunkSize.toInt());
          SerializationUtils.writeSerializedHex(writer, chunkHex);
        },
      };

      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeV7TxOutputRefScript(String referenceScriptHex) {
    return useBinaryWriter((ByteDataWriter writer) {
      final totalScriptSize = referenceScriptHex.length / 2;
      String chunkHex;

      if (totalScriptSize > maxChunkSize) {
        chunkHex = referenceScriptHex.substring(0, maxChunkSize * 2);
      } else {
        chunkHex = referenceScriptHex;
      }
      final chunkSize = chunkHex.length / 2;

      writer.writeUint32(totalScriptSize.toInt());
      writer.writeUint32(chunkSize.toInt());
      SerializationUtils.writeSerializedHex(writer, chunkHex);

      return writer.toBytes();
    });
  }

  // v7 used raw 0/1 for hashPayload and isAscii flags
  static Uint8List serializeV7MessageDataInit({
    required CardanoVersion version,
    required ParsedMessageData msgData,
    required CardanoNetwork network,
  }) {
    return useBinaryWriter((ByteDataWriter writer) {
        // Message length
        final msgBytes = hex.decode(msgData.messageHex);
        final msgLengthBuffer = SerializationUtils.serializeUint32(msgBytes.length);
        final hashPayloadUint8 = msgData.hashPayload ? 1 : 0;
        final isAsciiUint8 = msgData.isAscii ? 1 : 0;
        final serializedDataFieldTypeUint8 = msgData.serializedDataFieldType;

        final addressBuffer = switch (msgData) {
          ParsedMessageDataAddress() => SerializationUtils.serializeAddressParams(msgData.address, version, network),
          ParsedMessageDataKeyHash() => Uint8List(0),
        };

        writer.write(msgLengthBuffer);
        writer.write(SerializationUtils.serializePath(msgData.signingPath));
        writer.writeUint8(hashPayloadUint8);
        writer.writeUint8(isAsciiUint8);
        writer.writeUint8(serializedDataFieldTypeUint8);
        writer.write(addressBuffer);

        return writer.toBytes();
      });
  }
}
