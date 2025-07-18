import "dart:convert";
import "dart:typed_data";

import "package:collection/collection.dart";
import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../../ledger_cardano_plus.dart";
import "../models/parsed_c_vote_delegation.dart";
import "../models/parsed_pool_relay.dart";
import "utilities.dart";

class SerializationUtils {
  static final BigInt maxUint32 = BigInt.from(0xFFFFFFFF);
  static final BigInt optionFlagsTagCborSets = BigInt.from(OptionFlags.tagCborSets.value);

  static Uint8List serializePath(LedgerSigningPath path) => useBinaryWriter((writer) {
    writer.writeUint8(path.signingPath.length);
    for (final index in path.signingPath) {
      writer.writeUint32(index);
    }
    return writer.toBytes();
  });

  static Uint8List pathToBuf(List<int> path) {
    final ByteData data = ByteData(1 + 4 * path.length);
    data.setUint8(0, path.length);
    for (int i = 0; i < path.length; i++) {
      data.setUint32(1 + i * 4, path[i], Endian.big);
    }
    return data.buffer.asUint8List();
  }

  static void writeSerializedHex(ByteDataWriter writer, String hexString) {
    writer.write(hex.decode(hexString));
  }

  static Uint8List serializeUint64(BigInt value) {
    if (value.isNegative) {
      throw LedgerCardanoValidationException("serializeUint64 - Value is negative");
    }
    if (value.bitLength > 64) {
      throw LedgerCardanoValidationException("serializeUint64 - Value is too large");
    }
    final ByteData data = ByteData(8);
    data.setUint32(0, (value >> 32).toInt());
    data.setUint32(4, (value & maxUint32).toInt());
    return data.buffer.asUint8List();
  }

  static Uint8List serializeUint32(int value) {
    if (value < 0 || value > max32BitValue) {
      throw LedgerCardanoValidationException("serializeUint32 - Value out of range");
    }
    final ByteData data = ByteData(4);
    data.setUint32(0, value, Endian.big);
    return data.buffer.asUint8List();
  }

  static Uint8List serializeInt64(BigInt value) {
    if (value.bitLength > 63) {
      throw LedgerCardanoValidationException("serializeInt64 - Value is too large");
    }
    final ByteData data = ByteData(8);
    data.setUint32(0, (value >> 32).toInt());
    data.setUint32(4, (value & maxUint32).toInt());
    return data.buffer.asUint8List();
  }

  static void serializeOptionFlag(ByteDataWriter writer, bool included) {
    final int value = included ? signTxIncludedYes : signTxIncludedNo;
    writer.writeUint8(value);
  }

  static void serializeTxOptions(ByteDataWriter writer, ParsedTransactionOptions options) {
    BigInt optionFlags = BigInt.zero;
    if (options.tagCborSets) {
      optionFlags += optionFlagsTagCborSets;
    }
    writer.write(serializeUint64(optionFlags));
  }

  static Uint8List serializeTxInit({
    required ParsedTransaction tx,
    required TransactionSigningModes signingMode,
    required int numWitnesses,
    required ParsedTransactionOptions? options,
    required CardanoVersion version,
  }) {
    return useBinaryWriter((ByteDataWriter writer) {
      final compatibility = version.compatibility;

      if (compatibility.supportsConway) {
        serializeTxOptions(writer, options ?? ParsedTransactionOptions(tagCborSets: false));
      } else {
        writer.write(Uint8List(0));
      }

      writer.writeUint8(tx.network.networkId);
      writer.writeUint32(tx.network.networkMagic);

      serializeOptionFlag(writer, tx.ttl != null);
      serializeOptionFlag(writer, tx.auxiliaryData != null);
      serializeOptionFlag(writer, tx.validityIntervalStart != null);

      if (compatibility.supportsMint || version.flags.isAppXS) {
        serializeOptionFlag(writer, tx.mint != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsAlonzo) {
        serializeOptionFlag(writer, tx.scriptDataHashHex != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsAlonzo) {
        serializeOptionFlag(writer, tx.includeNetworkId ?? false);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsBabbage) {
        serializeOptionFlag(writer, tx.collateralOutput != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsBabbage) {
        serializeOptionFlag(writer, tx.totalCollateral != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsConway) {
        serializeOptionFlag(writer, tx.treasury != null);
      } else {
        writer.write(Uint8List(0));
      }

      if (compatibility.supportsConway) {
        serializeOptionFlag(writer, tx.donation != null);
      } else {
        writer.write(Uint8List(0));
      }

      writer.writeUint8(signingMode.value);

      writer.writeUint32(tx.inputs.length);
      writer.writeUint32(tx.outputs.length);
      writer.writeUint32(tx.certificates?.length ?? 0);
      writer.writeUint32(tx.withdrawals?.length ?? 0);

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

  static Uint8List serializeCoin(BigInt coin) => serializeUint64(coin);

  static Uint8List serializeTxTtl(BigInt ttl) => serializeUint64(ttl);

  static Uint8List serializeSpendingDataSource(SpendingDataSource dataSource) => useBinaryWriter((writer) {
    final void Function() invoker = switch (dataSource) {
      SpendingDataSourcePath() => () {
        writer.write(serializePath(dataSource.path));
      },
      SpendingDataSourceScriptHash() => () {
        writeSerializedHex(writer, dataSource.scriptHashHex);
      },
      SpendingDataSourceNone() => () {},
    };
    invoker();
    return writer.toBytes();
  });

  static Uint8List serializeStakingDataSource(StakingDataSource dataSource) => useBinaryWriter((writer) {
    final void Function() invoker = switch (dataSource) {
      StakingDataSourceNone() => () {},
      StakingDataSourceKey() => () {
        final keyContent = dataSource.data;
        switch (keyContent) {
          case StakingDataSourceKeyPath():
            writer.writeUint8(dataSource.stakingDataSourceValue);
            writer.write(serializePath(keyContent.path));
          case StakingDataSourceKeyHash():
            writer.writeUint8(dataSource.stakingDataSourceValue);
            writeSerializedHex(writer, keyContent.keyHashHex);
        }
      },
      StakingDataSourceScriptHash() => () {
        writer.writeUint8(dataSource.stakingDataSourceValue);
        writeSerializedHex(writer, dataSource.scriptHashHex);
      },
      StakingDataSourceBlockchainPointer() => () {
        writer.writeUint8(dataSource.stakingDataSourceValue);
        writer.writeUint32(dataSource.blockIndex);
        writer.writeUint32(dataSource.txIndex);
        writer.writeUint32(dataSource.certificateIndex);
      },
    };
    invoker();
    return writer.toBytes();
  });

  static Uint8List serializeOperationalCertificate(ParsedOperationalCertificate certificate) {
    return useBinaryWriter((writer) {
      writeSerializedHex(writer, certificate.kesPublicKeyHex);
      writer.write(serializeUint64(certificate.kesPeriod));
      writer.write(serializeUint64(certificate.issueCounter));
      writer.write(serializePath(certificate.coldKeyPath));

      return writer.toBytes();
    });
  }

  static Uint8List serializeTxAuxiliaryData(ParsedTxAuxiliaryData auxiliaryData) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (auxiliaryData) {
        ArbitraryHash() => () {
          writer.writeUint8(auxiliaryData.txAuxiliaryDataValue);
          writeSerializedHex(writer, auxiliaryData.hashHex);
        },
        CIP36Registration() => () {
          writer.writeUint8(auxiliaryData.txAuxiliaryDataValue);
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationInit(ParsedCVoteRegistrationParams params) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(params.format.encodingValue);

      final numDelegations = params.delegations?.length ?? 0;
      writer.writeUint32(numDelegations);
      return writer.toBytes();
    });
  }

  static Uint8List serializeDelegationType(CIP36VoteDelegationType type) => Uint8List.fromList([type.encodingValue]);

  static Uint8List serializeCVoteRegistrationVoteKey(
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
          writer.write(serializeDelegationType(CIP36VoteDelegationType.key));
        }
        writeSerializedHex(writer, votePublicKey.value);
      } else {
        if (votePublicKeyPath == null) {
          throw LedgerCardanoValidationException("Missing vote key");
        }

        if (!VersionCompatibility.checkVersionCompatibility(version).supportsCIP36Vote) {
          throw LedgerCardanoValidationException("Key derivation path for vote keys not supported by the device");
        }
        writer.write(serializeDelegationType(CIP36VoteDelegationType.path));
        writer.write(serializePath(votePublicKeyPath));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializePoolInitialParamsLegacy(ParsedPoolParams pool) {
    return useBinaryWriter((ByteDataWriter writer) {
      final poolkey = pool.poolKey;
      final void Function() poolKeyInvoker = switch (poolkey) {
        ThirdPartyPoolKey() => () => writer.write(serializePoolKeyLegacy(poolkey)),
        _ => () {},
      };
      poolKeyInvoker();

      writeSerializedHex(writer, pool.vrfHashHex);
      writer.write(serializeCoin(pool.pledge));
      writer.write(serializeCoin(pool.cost));
      writer.write(serializeUint64(pool.margin.numerator));
      writer.write(serializeUint64(pool.margin.denominator));

      final rewardAccount = pool.rewardAccount;
      final void Function() rewardAccountInvoker = switch (rewardAccount) {
        ThirdPartyPoolRewardAccount() => () => writer.write(serializePoolRewardAccountLegacy(rewardAccount)),
        _ => () {},
      };
      rewardAccountInvoker();

      writer.writeUint32(pool.owners.length);
      writer.writeUint32(pool.relays.length);

      return writer.toBytes();
    });
  }

  static Uint8List serializePoolKeyLegacy(ThirdPartyPoolKey key) {
    return useBinaryWriter((ByteDataWriter writer) {
      writeSerializedHex(writer, key.hashHex);
      return writer.toBytes();
    });
  }

  static Uint8List serializePoolRewardAccountLegacy(ThirdPartyPoolRewardAccount rewardAccount) {
    return useBinaryWriter((ByteDataWriter writer) {
      writeSerializedHex(writer, rewardAccount.rewardAccountHex);
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationDelegation(ParsedCVoteDelegation delegation) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(delegation.cVoteDelegationValue);
      writer.writeUint32(delegation.weight);

      final void Function() invoker = switch (delegation) {
        KeyDelegation() => () => writeSerializedHex(writer, delegation.voteKey),
        PathDelegation() => () => writer.write(serializePath(delegation.voteKeyPath)),
      };

      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationStakingPath(LedgerSigningPath stakingPath) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(serializePath(stakingPath));
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationPaymentDestination(
    ParsedOutputDestination paymentDestination,
    CardanoVersion version,
    CardanoNetwork network,
  ) {
    if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
      return serializeTxOutputDestination(paymentDestination, version, network);
    } else {
      final Uint8List Function() invoker = switch (paymentDestination) {
        DeviceOwned() => () => serializeAddressParams(paymentDestination.addressParams, version, network),
        _ => () => throw LedgerCardanoValidationException("serializeCVoteRegPayDest: Invalid payment destination"),
      };
      return invoker();
    }
  }

  static Uint8List serializeCVoteRegistrationNonce(BigInt nonce) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(serializeUint64(nonce));
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationVotingPurpose(BigInt? votingPurpose) {
    return useBinaryWriter((ByteDataWriter writer) {
      serializeOptionFlag(writer, votingPurpose != null);
      if (votingPurpose != null) {
        writer.write(serializeUint64(votingPurpose));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeTxOutputDestination(
    ParsedOutputDestination destination,
    CardanoVersion version,
    CardanoNetwork network,
  ) => useBinaryWriter((ByteDataWriter writer) {
    writer.writeUint8(destination.typeEncoding);
    final void Function() invoker = switch (destination) {
      ThirdParty() => () {
        final addressHex = destination.addressHex;
        final addressHexLength = addressHex.length / 2;
        writer.writeUint32(addressHexLength.toInt());
        writer.write(hex.decode(addressHex));
      },
      DeviceOwned() => () {
        final addressParamsBytes = serializeAddressParams(destination.addressParams, version, network);
        writer.write(addressParamsBytes);
      },
    };

    invoker();

    return writer.toBytes();
  });

  static Uint8List serializeAddressParams(
    ParsedAddressParams params,
    CardanoVersion version,
    CardanoNetwork network,
  ) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(params.addressType.value);

      final void Function() invoker = switch (params) {
        ByronAddressParams() => () {
          writer.writeUint32(network.networkMagic);
          writer.write(serializeSpendingDataSource(params.spendingDataSource));
          writer.writeUint8(StakingDataSource.none().stakingDataSourceValue);
        },
        ShelleyAddressParams() => () {
          writer.writeUint8(network.networkId);
          final newparams = params.shelleyAddressParams;

          final void Function() shelleyInvoker = switch (newparams) {
            BasePaymentKeyStakeKey() => () {
              writer.write(serializeSpendingDataSource(newparams.spendingDataSource));
              writer.write(serializeStakingDataSource(newparams.stakingDataSource));
            },
            BasePaymentScriptStakeKey() => () {
              writer.write(serializeSpendingDataSource(newparams.spendingDataSource));
              writer.write(serializeStakingDataSource(newparams.stakingDataSource));
            },
            BasePaymentKeyStakeScript() => () {
              writer.write(serializeSpendingDataSource(newparams.spendingDataSource));
              writer.write(serializeStakingDataSource(newparams.stakingDataSource));
            },
            BasePaymentScriptStakeScript() => () {
              writer.write(serializeSpendingDataSource(newparams.spendingDataSource));
              writer.write(serializeStakingDataSource(newparams.stakingDataSource));
            },
            EnterpriseKey() => () {
              writer.write(serializeSpendingDataSource(newparams.spendingDataSource));
              writer.writeUint8(StakingDataSource.none().stakingDataSourceValue);
            },
            EnterpriseScript() => () {
              writer.write(serializeSpendingDataSource(newparams.spendingDataSource));
              writer.writeUint8(StakingDataSource.none().stakingDataSourceValue);
            },
            PointerKey() => () {
              writer.write(serializeSpendingDataSource(newparams.spendingDataSource));
              writer.write(serializeStakingDataSource(newparams.stakingDataSource));
            },
            PointerScript() => () {
              writer.write(serializeSpendingDataSource(newparams.spendingDataSource));
              writer.write(serializeStakingDataSource(newparams.stakingDataSource));
            },
            RewardKey() => () {
              writer.write(SerializationUtils.serializeStakingDataSource(newparams.stakingDataSource));
            },
            RewardScript() => () {
              writer.writeUint8(
                StakingDataSource.scriptHash(scriptHashHex: newparams.stakingScriptHashHex).stakingDataSourceValue,
              );
              SerializationUtils.writeSerializedHex(writer, newparams.stakingScriptHashHex);
            },
          };

          shelleyInvoker();
        },
      };

      invoker();

      return writer.toBytes();
    });
  }

  static Uint8List serializeTxInput(ParsedInput input) {
    return useBinaryWriter((ByteDataWriter writer) {
      writeSerializedHex(writer, input.txHashHex);
      writer.writeUint32(input.outputIndex);
      return writer.toBytes();
    });
  }

  static Uint8List serializeTxCertificate(
    ParsedCertificate certificate,
    CardanoVersion version,
  ) {
    if (!VersionCompatibility.checkVersionCompatibility(version).supportsMultisigTransaction) {
      return serializeTxCertificatePreMultisig(certificate);
    }

    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (certificate) {
        StakeRegistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.stakeCredential));
        },
        StakeDeregistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.stakeCredential));
        },
        StakeRegistrationConway() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.stakeCredential));
          writeSerializedCoin(writer, certificate.deposit);
        },
        StakeDeregistrationConway() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.stakeCredential));
          writeSerializedCoin(writer, certificate.deposit);
        },
        StakeDelegation() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.stakeCredential));
          writeSerializedHex(writer, certificate.poolKeyHashHex);
        },
        VoteDelegation() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.stakeCredential));
          writer.write(serializeDRep(certificate.dRep));
        },
        AuthorizeCommitteeHot() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.coldCredential));
          writer.write(serializeCredential(certificate.hotCredential));
        },
        ResignCommitteeCold() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.coldCredential));
          writer.write(serializeAnchor(certificate.anchor));
        },
        DRepRegistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.dRepCredential));
          writeSerializedCoin(writer, certificate.deposit);
          writer.write(serializeAnchor(certificate.anchor));
        },
        DRepDeregistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.dRepCredential));
          writeSerializedCoin(writer, certificate.deposit);
        },
        DRepUpdate() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializeCredential(certificate.dRepCredential));
          writer.write(serializeAnchor(certificate.anchor));
        },
        StakePoolRegistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
        },
        StakePoolRetirement() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializePath(certificate.path));
          writer.write(serializeUint64(certificate.retirementEpoch));
        },
      };

      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeCredential(ParsedCredential credential) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (credential) {
        CredentialKeyPath() => () => {
          writer.writeUint8(credential.credentialValue),
          writer.write(serializePath(credential.path)),
        },
        CredentialKeyHash() => () => {
          writer.writeUint8(credential.credentialValue),
          writeSerializedHex(writer, credential.keyHashHex),
        },
        CredentialScriptHash() => () => {
          writer.writeUint8(credential.credentialValue),
          writeSerializedHex(writer, credential.scriptHashHex),
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static void writeSerializedCoin(ByteDataWriter writer, BigInt coin) {
    writer.write(serializeCoin(coin));
  }

  static Uint8List serializeDRep(ParsedDRep dRep) => useBinaryWriter(
    (ByteDataWriter writer) {
      writer.writeUint8(dRep.serializationType);
      switch (dRep) {
        case DRepKeyPath():
          writer.write(serializePath(dRep.path));
        case DRepKeyHash():
          writeSerializedHex(writer, dRep.keyHashHex);
        case DRepScriptHash():
          writeSerializedHex(writer, dRep.scriptHashHex);
        case DRepAbstain():
        case DRepNoConfidence():
          break;
      }
      return writer.toBytes();
    },
  );

  static Uint8List serializeAnchor(ParsedAnchor? anchor) {
    return useBinaryWriter((ByteDataWriter writer) {
      serializeOptionFlag(writer, anchor != null);
      if (anchor != null) {
        writeSerializedHex(writer, anchor.hashHex);
        writer.write(Uint8List.fromList(utf8.encode(anchor.url)));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeTxCertificatePreMultisig(ParsedCertificate certificate) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(certificate.certificateTypeSerializationValue);
      final void Function() invoker = switch (certificate) {
        StakeRegistration() => () {
          final certStakeCredential = certificate.stakeCredential;
          if (certStakeCredential is! CredentialKeyPath) {
            throw LedgerCardanoValidationException("Invalid stake credential");
          }
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializePath(certStakeCredential.path));
        },
        StakeDeregistration() => () {
          final certStakeCredential = certificate.stakeCredential;
          if (certStakeCredential is! CredentialKeyPath) {
            throw LedgerCardanoValidationException(
              "Invalid stake credential",
            );
          }
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializePath(certStakeCredential.path));
        },
        StakeDelegation() => () {
          final certStakeCredential = certificate.stakeCredential;
          if (certStakeCredential is! CredentialKeyPath) {
            throw LedgerCardanoValidationException(
              "Invalid stake credential",
            );
          }
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializePath(certStakeCredential.path));
          writeSerializedHex(writer, certificate.poolKeyHashHex);
        },
        StakePoolRegistration() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
        },
        StakePoolRetirement() => () {
          writer.writeUint8(certificate.certificateTypeSerializationValue);
          writer.write(serializePath(certificate.path));
          writer.write(serializeUint64(certificate.retirementEpoch));
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
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializePoolInitialParams(ParsedPoolParams pool) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint32(pool.owners.length);
      writer.writeUint32(pool.relays.length);
      return writer.toBytes();
    });
  }

  static Uint8List serializePoolKey(ParsedPoolKey key) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (key) {
        DeviceOwnedPoolKey() => () {
          writer.writeUint8(key.poolKeyValue);
          writer.write(serializePath(key.path));
        },
        ThirdPartyPoolKey() => () {
          writer.writeUint8(key.poolKeyValue);
          writeSerializedHex(writer, key.hashHex);
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeFinancials(ParsedPoolParams pool) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(serializeCoin(pool.pledge));
      writer.write(serializeCoin(pool.cost));
      writer.write(serializeUint64(pool.margin.numerator));
      writer.write(serializeUint64(pool.margin.denominator));
      return writer.toBytes();
    });
  }

  static Uint8List serializePoolRewardAccount(ParsedPoolRewardAccount rewardAccount) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (rewardAccount) {
        DeviceOwnedPoolRewardAccount() => () {
          writer.writeUint8(rewardAccount.poolRewardAccountValue);
          writer.write(serializePath(rewardAccount.path));
        },
        ThirdPartyPoolRewardAccount() => () {
          writer.writeUint8(rewardAccount.poolRewardAccountValue);
          writeSerializedHex(writer, rewardAccount.rewardAccountHex);
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializePoolOwner(ParsedPoolOwner owner) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (owner) {
        DeviceOwnedPoolOwner() => () {
          writer.writeUint8(owner.poolOwnerValue);
          writer.write(serializePath(owner.path));
        },
        ThirdPartyPoolOwner() => () {
          writer.writeUint8(owner.poolOwnerValue);
          writeSerializedHex(writer, owner.hashHex);
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializePoolRelay(ParsedPoolRelay relay) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (relay) {
        SingleHostIpAddr() => () {
          writer.writeUint8(relay.relayType.value);
          serializeOptional(writer, relay.port, (w, value) => w.writeUint16(value));
          serializeOptional(writer, relay.ipv4, (w, value) => w.write(serializeIpv4(value)));
        },
        SingleHostName() => () {
          writer.writeUint8(relay.relayType.value);
          serializeOptional(writer, relay.port, (w, value) => w.writeUint16(value));
          serializeOptional(writer, relay.dnsName, (w, value) => w.write(serializeDnsName(value)));
        },
        MultiHost() => () {
          writer.writeUint8(relay.relayType.value);
          serializeOptional(writer, relay.dnsName, (w, value) => w.write(serializeDnsName(value)));
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static void serializeOptional<T>(
    ByteDataWriter writer,
    T? value,
    void Function(ByteDataWriter, T) serializeFunction,
  ) {
    if (value == null) {
      writer.writeUint8(1);
    } else {
      writer.writeUint8(2);
      serializeFunction(writer, value);
    }
  }

  static Uint8List serializeIpv4(String ipv4) {
    return ipStringToBytes(ipv4);
  }

  static Uint8List serializeIpv6(String ipv6) {
    return ipStringToBytes(ipv6);
  }

  static Uint8List serializeDnsName(String dnsName) {
    return Uint8List.fromList(utf8.encode(dnsName));
  }

  static Uint8List serializePoolMetadata(ParsedPoolMetadata? metadata) {
    return useBinaryWriter((ByteDataWriter writer) {
      if (metadata == null) {
        serializeOptionFlag(writer, false);
      } else {
        serializeOptionFlag(writer, true);
        writeSerializedHex(writer, metadata.hashHex);
        writer.write(Uint8List.fromList(utf8.encode(metadata.url)));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeTxWithdrawal(ParsedWithdrawal withdrawal, CardanoVersion version) {
    if (VersionCompatibility.checkVersionCompatibility(version).supportsMultisigTransaction) {
      return useBinaryWriter((ByteDataWriter writer) {
        writer.write(serializeCoin(withdrawal.amount));
        writer.write(serializeCredential(withdrawal.stakeCredential));
        return writer.toBytes();
      });
    } else {
      final withdrawalStakeCredential = withdrawal.stakeCredential;
      if (withdrawalStakeCredential is! CredentialKeyPath) {
        throw LedgerCardanoValidationException("WITHDRAWAL_INVALID_STAKE_CREDENTIAL");
      }
      return useBinaryWriter((ByteDataWriter writer) {
        writer.write(serializeCoin(withdrawal.amount));
        writer.write(serializePath(withdrawalStakeCredential.path));
        return writer.toBytes();
      });
    }
  }

  static Uint8List serializeTxValidityStart(BigInt validityIntervalStart) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(serializeUint64(validityIntervalStart));
      return writer.toBytes();
    });
  }

  static Uint8List serializeMintBasicParams(List<ParsedAssetGroup> mint) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint32(mint.length);
      return writer.toBytes();
    });
  }

  static Uint8List serializeAssetGroup(ParsedAssetGroup assetGroup) {
    return useBinaryWriter((ByteDataWriter writer) {
      writeSerializedHex(writer, assetGroup.policyIdHex);
      writer.writeUint32(assetGroup.tokens.length);
      return writer.toBytes();
    });
  }

  static Uint8List serializeToken(ParsedToken token) {
    return useBinaryWriter((ByteDataWriter writer) {
      final assetNameBytes = hex.decode(token.assetNameHex);
      writer.writeUint32(assetNameBytes.length);
      writer.write(assetNameBytes);
      writer.write(serializedInt64(token.amount));
      return writer.toBytes();
    });
  }

  static Uint8List serializeRequiredSigner(
    ParsedRequiredSigner requiredSigner,
  ) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (requiredSigner) {
        RequiredSignerPath() => () {
          writer.writeUint8(requiredSigner.requiredSignerValue);
          writer.write(serializePath(requiredSigner.path));
        },
        RequiredSignerHash() => () {
          writer.writeUint8(requiredSigner.requiredSignerValue);
          writeSerializedHex(writer, requiredSigner.hashHex);
        },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializedInt64(BigInt value) {
    if (value.bitLength > 63) {
      throw LedgerCardanoValidationException("int64ToBuf - Value is too large");
    }
    final ByteDataWriter writer = ByteDataWriter();
    writer.write(serializeInt64(value));
    final Uint8List data = writer.toBytes();
    if (data.length != 8) {
      throw LedgerCardanoValidationException("int64ToBuf - Invalid data length");
    }
    return data;
  }

  static Uint8List serializeTxOutputBasicParams(ParsedOutput output, CardanoVersion version, CardanoNetwork network) {
    final ByteDataWriter writer = ByteDataWriter();

    final compatibility = VersionCompatibility.checkVersionCompatibility(version);

    if (compatibility.supportsBabbage) {
      writer.writeUint8(output.format.value);
    }

    writer.write(serializeTxOutputDestination(output.destination, version, network));

    writer.write(serializeCoin(output.amount));

    writer.writeUint32(output.tokenBundle.length);

    if (compatibility.supportsAlonzo) {
      serializeOptionFlag(writer, output.outputDatum != null);
    }

    if (compatibility.supportsBabbage) {
      serializeOptionFlag(writer, output.referenceScriptHash != null);
    }

    return writer.toBytes();
  }

  static Uint8List serializeVoterVotes(ParsedVoterVotes voterVotes) {
    if (voterVotes.votes.length != 1) {
      throw LedgerCardanoValidationException("too few / too many votes");
    }
    final vote = voterVotes.votes[0];
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(serializeVoter(voterVotes.voter));
      writer.write(hex.decode(vote.govActionId.txHashHex));
      writer.writeUint32(vote.govActionId.govActionIndex);
      writer.writeUint8(vote.votingProcedure.vote.value);
      writer.write(serializeAnchor(vote.votingProcedure.anchor));
      return writer.toBytes();
    });
  }

  static Uint8List serializeVoter(ParsedVoter voter) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(voter.voterValue);
      final void Function() invoker = switch (voter) {
        CommitteeKeyHash() => () => writeSerializedHex(writer, voter.keyHashHex),
        CommitteeKeyPath() => () => writer.write(serializePath(voter.keyPath)),
        CommitteeScriptHash() => () => writeSerializedHex(writer, voter.scriptHashHex),
        DrepKeyHash() => () => writeSerializedHex(writer, voter.keyHashHex),
        DrepKeyPath() => () => writer.write(serializePath(voter.keyPath)),
        DrepScriptHash() => () => writeSerializedHex(writer, voter.scriptHashHex),
        StakePoolKeyHash() => () => writeSerializedHex(writer, voter.keyHashHex),
        StakePoolKeyPath() => () => writer.write(serializePath(voter.keyPath)),
      };
      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeTxOutputDatum(ParsedDatum datum, CardanoVersion version) {
    return useBinaryWriter((ByteDataWriter writer) {
      final compatibility = VersionCompatibility.checkVersionCompatibility(version);

      final void Function() invoker = switch (datum) {
        ParsedDatumHash() => () {
          if (compatibility.supportsBabbage) {
            writer.writeUint8(datum.datumValue);
          }
          writeSerializedHex(writer, datum.datumHashHex);
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
          writeSerializedHex(writer, chunkHex);
        },
      };

      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeTxOutputRefScript(String referenceScriptHex) {
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
      writeSerializedHex(writer, chunkHex);

      return writer.toBytes();
    });
  }

  static Uint8List serializeMessageDataInit({
    required CardanoVersion version,
    required ParsedMessageData msgData,
    required CardanoNetwork network,
  }) {
    return useBinaryWriter((ByteDataWriter writer) {
      // Message length
      final msgBytes = hex.decode(msgData.messageHex);
      final msgLengthBuffer = serializeUint32(msgBytes.length);
      final hashPayloadUint8 = msgData.hashPayload ? 1 : 0;
      final isAsciiUint8 = msgData.isAscii ? 1 : 0;
      final serializedDataFieldTypeUint8 = msgData.serializedDataFieldType;

      final addressBuffer = switch (msgData) {
        ParsedMessageDataAddress() => serializeAddressParams(msgData.address, version, network),
        ParsedMessageDataKeyHash() => Uint8List(0),
      };

      writer.write(msgLengthBuffer);
      writer.write(serializePath(msgData.signingPath));
      writer.writeUint8(hashPayloadUint8);
      writer.writeUint8(isAsciiUint8);
      writer.writeUint8(serializedDataFieldTypeUint8);
      writer.write(addressBuffer);

      return writer.toBytes();
    });
  }
}

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

List<LedgerSigningPath> uniquify(List<LedgerSigningPath> paths) {
  const eq = DeepCollectionEquality();
  final List<LedgerSigningPath> finalPaths = [];
  for (final path in paths) {
    if (finalPaths.none((addedPath) => eq.equals(addedPath, path))) {
      finalPaths.add(path);
    }
  }

  return finalPaths;
}
