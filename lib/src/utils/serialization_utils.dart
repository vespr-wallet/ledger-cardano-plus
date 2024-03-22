import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/models/cvote_public_key.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/models/parsed_anchor.dart';
import 'package:ledger_cardano/src/models/parsed_asset_group.dart';
import 'package:ledger_cardano/src/models/parsed_c_vote_delegation.dart';
import 'package:ledger_cardano/src/models/parsed_c_vote_registration_params.dart';
import 'package:ledger_cardano/src/models/parsed_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_credential.dart';
import 'package:ledger_cardano/src/models/parsed_drep.dart';
import 'package:ledger_cardano/src/models/parsed_input.dart';
import 'package:ledger_cardano/src/models/parsed_operational_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_output_destination.dart';
import 'package:ledger_cardano/src/models/parsed_pool_key.dart';
import 'package:ledger_cardano/src/models/parsed_pool_metadata.dart';
import 'package:ledger_cardano/src/models/parsed_pool_owner.dart';
import 'package:ledger_cardano/src/models/parsed_pool_params.dart';
import 'package:ledger_cardano/src/models/parsed_pool_relay.dart';
import 'package:ledger_cardano/src/models/parsed_pool_reward_account.dart';
import 'package:ledger_cardano/src/models/parsed_required_signer.dart';
import 'package:ledger_cardano/src/models/parsed_token.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/parsed_transaction_options.dart';
import 'package:ledger_cardano/src/models/parsed_tx_auxiliary_data.dart';
import 'package:ledger_cardano/src/models/parsed_withdrawal.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'dart:convert';

typedef SerializeTokenAmountFn<T> = Uint8List Function(T value);

class SerializationUtils {
  static final BigInt maxUint32 = BigInt.from(0xFFFFFFFF);
  static final BigInt optionFlagsTagCborSets = BigInt.from(OptionFlags.tagCborSets.value);

  static void writerSerializedPath(ByteDataWriter writer, List<int> path) {
    writer.writeUint8(path.length);
    for (var index in path) {
      writer.writeUint32(index);
    }
  }

  static void writeSerializedHex(ByteDataWriter writer, String hexString) {
    writer.write(hex.decode(hexString));
  }

  static void writeSerializedUint64(ByteDataWriter writer, BigInt value) {
    if (value.isNegative) {
      throw ValidationException("writeSerializedUint64 - Value is negative");
    } else if (value.bitLength > 64) {
      throw ValidationException("writeSerializedUint64 - Value is too large");
    }
    writer.writeUint32((value >> 32).toInt());
    writer.writeUint32((value & maxUint32).toInt());
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

    writeSerializedUint64(writer, optionFlags);
  }

  static void _serializeSigningMode(ByteDataWriter writer, TransactionSigningMode mode) {
    writer.writeUint8(mode.value);
  }

  static Uint8List serializeTxInit(
    ParsedTransaction tx,
    TransactionSigningMode signingMode,
    int numWitnesses,
    ParsedTransactionOptions options,
    CardanoVersion version,
  ) {
    return useBinaryWriter((ByteDataWriter writer) {
      final compatibility = VersionCompatibility.checkVersionCompatibility(version);

      if (compatibility.supportsConway) {
        serializeTxOptions(writer, options);
      }

      serializeOptionFlag(writer, tx.mint != null && (compatibility.supportsMint || version.flags.isAppXS));
      serializeOptionFlag(writer, tx.scriptDataHashHex != null && compatibility.supportsAlonzo);
      if (compatibility.supportsAlonzo) {
        writer.writeUint32(tx.collateralInputs.length);
        writer.writeUint32(tx.requiredSigners.length);
        serializeOptionFlag(writer, tx.includeNetworkId);
      }
      if (compatibility.supportsBabbage) {
        serializeOptionFlag(writer, tx.collateralOutput != null);
        serializeOptionFlag(writer, tx.totalCollateral != null);
        writer.writeUint32(tx.referenceInputs.length);
      }
      if (compatibility.supportsConway) {
        writer.writeUint32(tx.votingProcedures.length);
        serializeOptionFlag(writer, tx.treasury != null);
        serializeOptionFlag(writer, tx.donation != null);
      }

      writer.writeUint8(tx.network.networkId);
      writer.writeUint32(tx.network.protocolMagic);

      serializeOptionFlag(writer, tx.ttl != null);
      serializeOptionFlag(writer, tx.auxiliaryData != null);
      serializeOptionFlag(writer, tx.validityIntervalStart != null);

      _serializeSigningMode(writer, signingMode);

      writer.writeUint32(tx.inputs.length);
      writer.writeUint32(tx.outputs.length);
      writer.writeUint32(tx.certificates.length);
      writer.writeUint32(tx.withdrawals.length);

      if (!compatibility.supportsBabbage) {
        writer.writeUint32(numWitnesses);
      }
      if (compatibility.supportsBabbage) {
        writer.writeUint32(numWitnesses);
      }

      return writer.toBytes();
    });
  }

  static Uint8List serializeCoin(String coin) {
    return useBinaryWriter((ByteDataWriter writer) {
      writeSerializedUint64(writer, BigInt.parse(coin));
      return writer.toBytes();
    });
  }

  static Uint8List serializeTxTtl(String ttl) {
    return useBinaryWriter((ByteDataWriter writer) {
      writeSerializedUint64(writer, BigInt.parse(ttl));
      return writer.toBytes();
    });
  }

  static Uint8List serializeSpendingDataSource(SpendingDataSource dataSource) => useBinaryWriter((writer) {
        final void Function() invoker = switch (dataSource) {
          SpendingDataSourcePath() => () {
              writerSerializedPath(writer, dataSource.path);
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
          StakingDataSourceKeyPath() => () {
              writer.writeUint8(StakingDataSourceType.keyPath.encoding);
              writerSerializedPath(writer, dataSource.path);
            },
          StakingDataSourceKeyHash() => () {
              writer.writeUint8(StakingDataSourceType.keyHash.encoding);
              writeSerializedHex(writer, dataSource.keyHashHex);
            },
          StakingDataSourceScriptHash() => () {
              writer.writeUint8(StakingDataSourceType.scriptHash.encoding);
              writeSerializedHex(writer, dataSource.scriptHashHex);
            },
          StakingDataSourceBlockchainPointer() => () {
              writer.writeUint8(StakingDataSourceType.blockchainPointer.encoding);
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
      writeSerializedUint64(writer, BigInt.parse(certificate.kesPeriod));
      writeSerializedUint64(writer, BigInt.parse(certificate.issueCounter));
      writerSerializedPath(writer, certificate.coldKeyPath);

      return writer.toBytes();
    });
  }

  static Uint8List serializeTxAuxiliaryData(ParsedTxAuxiliaryData auxiliaryData) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (auxiliaryData) {
        ArbitraryHash() => () {
            writer.writeUint8(TxAuxiliaryDataType.arbitraryHash.value);
            writeSerializedHex(writer, auxiliaryData.hashHex);
          },
        CIP36Registration() => () {
            writer.writeUint8(TxAuxiliaryDataType.cip36Registration.value);
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
      CVotePublicKey? votePublicKey, List<int>? votePublicKeyPath, CardanoVersion version) {
    return useBinaryWriter((ByteDataWriter writer) {
      if (votePublicKey != null) {
        if (votePublicKeyPath == null) {
          throw ValidationException('Missing vote key');
        }
        if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
          writer.write(serializeDelegationType(CIP36VoteDelegationType.key));
        }
        writeSerializedHex(writer, votePublicKey.value);
      } else {
        if (votePublicKeyPath == null) {
          throw ValidationException('Missing vote key');
        }

        if (!VersionCompatibility.checkVersionCompatibility(version).supportsCIP36Vote) {
          throw ValidationException('Key derivation path for vote keys not supported by the device');
        }
        writer.write(serializeDelegationType(CIP36VoteDelegationType.path));
        writerSerializedPath(writer, votePublicKeyPath);
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationDelegation(ParsedCVoteDelegation delegation) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(serializeDelegationType(delegation.type));
      writer.writeUint32(delegation.weight);

      final void Function() invoker = switch (delegation) {
        KeyDelegation() => () => writeSerializedHex(writer, delegation.voteKey),
        PathDelegation() => () => writerSerializedPath(writer, delegation.voteKeyPath),
      };

      invoker();
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationStakingPath(List<int> stakingPath) {
    return useBinaryWriter((ByteDataWriter writer) {
      writerSerializedPath(writer, stakingPath);
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationPaymentDestination(
      ParsedOutputDestination paymentDestination, CardanoVersion version) {
    if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
      return serializeTxOutputDestination(paymentDestination, version);
    } else if (paymentDestination is DeviceOwned) {
      return serializeAddressParams(paymentDestination.addressParams, version);
    }
    throw ValidationException('Invalid payment destination');
  }

  static Uint8List serializeCVoteRegistrationNonce(String nonce) {
    return useBinaryWriter((ByteDataWriter writer) {
      writeSerializedUint64(writer, BigInt.parse(nonce));
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationVotingPurpose(String? votingPurpose) {
    return useBinaryWriter((ByteDataWriter writer) {
      serializeOptionFlag(writer, votingPurpose != null);
      if (votingPurpose != null) {
        writeSerializedUint64(writer, BigInt.parse(votingPurpose));
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeTxOutputDestination(ParsedOutputDestination destination, CardanoVersion version) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.writeUint8(destination.type.encodingValue);
      final void Function() invoker = switch (destination) {
        ThirdParty() => () {
            final addressBytes = hex.decode(destination.addressHex);
            writer.writeUint32(addressBytes.length);
            writer.write(addressBytes);
          },
        DeviceOwned() => () {
            final addressParamsBytes = serializeAddressParams(destination.addressParams, version);
            writer.write(addressParamsBytes);
          },
      };

      invoker();

      return writer.toBytes();
    });
  }

  static Uint8List serializeAddressParams(ParsedAddressParams params, CardanoVersion version) {
    return useBinaryWriter((ByteDataWriter writer) {
      SpendingDataSource spending = params.spendingDataSource;
      StakingDataSource staking = params.stakingDataSource;

      if (!VersionCompatibility.checkVersionCompatibility(version).supportsMultisigTransaction) {
        if (params.type == AddressType.rewardKey && staking is StakingDataSourceKeyPath) {
          spending = SpendingDataSourcePath(type: SpendingDataSourceType.path, path: staking.path);
          staking = const StakingDataSourceNone(type: StakingDataSourceType.none);
        } else if (params.type == AddressType.rewardScript) {
          throw ValidationException(
              'Scripthash based address derivation not supported by Ledger app version ${version.toString()}.');
        }
      }

      writer.writeUint8(params.type.value);

      if (params.type == AddressType.byron && params is ByronAddressParams) {
        writer.writeUint32(params.protocolMagic);
      } else if (params is ShelleyAddressParams) {
        writer.writeUint8(params.networkId);
      }

      writer.write(serializeSpendingDataSource(spending));
      writer.write(serializeStakingDataSource(staking));

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

  static Uint8List serializeTxCertificate(ParsedCertificate certificate, CardanoVersion version) {
    if (!VersionCompatibility.checkVersionCompatibility(version).supportsMultisigTransaction) {
      return serializeTxCertificatePreMultisig(certificate);
    }

    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (certificate) {
        StakeRegistration() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.stakeCredential));
          },
        StakeDeregistration() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.stakeCredential));
          },
        StakeRegistrationConway() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.stakeCredential));
            writeSerializedCoin(writer, certificate.deposit);
          },
        StakeDeregistrationConway() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.stakeCredential));
            writeSerializedCoin(writer, certificate.deposit);
          },
        StakeDelegation() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.stakeCredential));
            writeSerializedHex(writer, certificate.poolKeyHashHex);
          },
        VoteDelegation() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.stakeCredential));
            writer.write(serializeDRep(certificate.dRep));
          },
        AuthorizeCommitteeHot() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.coldCredential));
            writer.write(serializeCredential(certificate.hotCredential));
          },
        ResignCommitteeCold() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.coldCredential));
            writer.write(serializeAnchor(certificate.anchor));
          },
        DRepRegistration() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.dRepCredential));
            writeSerializedCoin(writer, certificate.deposit);
            writer.write(serializeAnchor(certificate.anchor));
          },
        DRepDeregistration() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.dRepCredential));
            writeSerializedCoin(writer, certificate.deposit);
          },
        DRepUpdate() => () {
            writer.writeUint8(certificate.type.value);
            writer.write(serializeCredential(certificate.dRepCredential));
            writer.write(serializeAnchor(certificate.anchor));
          },
        StakePoolRegistration() => () {
            writer.writeUint8(certificate.type.value);
          },
        StakePoolRetirement() => () {
            writer.writeUint8(certificate.type.value);
            writerSerializedPath(writer, certificate.path);
            writeSerializedUint64(writer, BigInt.parse(certificate.retirementEpoch));
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
              writer.writeUint8(credential.type.value),
              writerSerializedPath(writer, credential.path),
            },
        CredentialKeyHash() => () => {
              writer.writeUint8(credential.type.value),
              writeSerializedHex(writer, credential.keyHashHex),
            },
        CredentialScriptHash() => () => {
              writer.writeUint8(credential.type.value),
              writeSerializedHex(writer, credential.scriptHashHex),
            },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static void writeSerializedCoin(ByteDataWriter writer, String coin) {
    writeSerializedUint64(writer, BigInt.parse(coin));
  }

  static Uint8List serializeDRep(ParsedDRep dRep) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (dRep) {
        DRepKeyPath() => () => {
              writer.writeUint8(dRep.type.value),
              writerSerializedPath(writer, dRep.path),
            },
        DRepKeyHash() => () => {
              writer.writeUint8(dRep.type.value),
              writeSerializedHex(writer, dRep.keyHashHex),
            },
        DRepScriptHash() => () => {
              writer.writeUint8(dRep.type.value),
              writeSerializedHex(writer, dRep.scriptHashHex),
            },
        DRepAbstain() => () => writer.writeUint8(dRep.type.value),
        DRepNoConfidence() => () => writer.writeUint8(dRep.type.value),
      };
      invoker();
      return writer.toBytes();
    });
  }

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
      writer.writeUint8(certificate.type.value);
      final void Function() invoker = switch (certificate) {
        StakeRegistration() => () {
            final certStakeCredential = certificate.stakeCredential;
            if (certStakeCredential is! CredentialKeyPath) {
              throw ValidationException('Invalid stake credential');
            }
            writer.writeUint8(certificate.type.value);
            writerSerializedPath(writer, certStakeCredential.path);
          },
        StakeDeregistration() => () {
            final certStakeCredential = certificate.stakeCredential;
            if (certStakeCredential is! CredentialKeyPath) {
              throw ValidationException('Invalid stake credential');
            }
            writer.writeUint8(certificate.type.value);
            writerSerializedPath(writer, certStakeCredential.path);
          },
        StakeDelegation() => () {
            final certStakeCredential = certificate.stakeCredential;
            if (certStakeCredential is! CredentialKeyPath) {
              throw ValidationException('Invalid stake credential');
            }
            writer.writeUint8(certificate.type.value);
            writerSerializedPath(writer, certStakeCredential.path);
            writeSerializedHex(writer, certificate.poolKeyHashHex);
          },
        StakePoolRegistration() => () {
            writer.writeUint8(certificate.type.value);
          },
        StakePoolRetirement() => () {
            writer.writeUint8(certificate.type.value);
            writerSerializedPath(writer, certificate.path);
            writeSerializedUint64(writer, BigInt.parse(certificate.retirementEpoch));
          },
        StakeRegistrationConway() => throw ValidationException('Conway certificates in pre-multisig serialization'),
        StakeDeregistrationConway() => throw ValidationException('Conway certificates in pre-multisig serialization'),
        VoteDelegation() => throw ValidationException('Conway certificates in pre-multisig serialization'),
        AuthorizeCommitteeHot() => throw ValidationException('Conway certificates in pre-multisig serialization'),
        ResignCommitteeCold() => throw ValidationException('Conway certificates in pre-multisig serialization'),
        DRepRegistration() => throw ValidationException('Conway certificates in pre-multisig serialization'),
        DRepDeregistration() => throw ValidationException('Conway certificates in pre-multisig serialization'),
        DRepUpdate() => throw ValidationException('Conway certificates in pre-multisig serialization'),
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
            writer.writeUint8(key.type.encodingValue);
            writerSerializedPath(writer, key.path);
          },
        ThirdPartyPoolKey() => () {
            writer.writeUint8(key.type.encodingValue);
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
      writeSerializedUint64(writer, BigInt.from(int.parse(pool.margin.numerator)));
      writeSerializedUint64(writer, BigInt.from(int.parse(pool.margin.denominator)));
      return writer.toBytes();
    });
  }

  static Uint8List serializePoolRewardAccount(ParsedPoolRewardAccount rewardAccount) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (rewardAccount) {
        DeviceOwnedPoolRewardAccount() => () {
            writer.writeUint8(rewardAccount.type.encodingValue);
            writerSerializedPath(writer, rewardAccount.path);
          },
        ThirdPartyPoolRewardAccount() => () {
            writer.writeUint8(rewardAccount.type.encodingValue);
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
            writer.writeUint8(owner.type.encodingValue);
            writerSerializedPath(writer, owner.path);
          },
        ThirdPartyPoolOwner() => () {
            writer.writeUint8(owner.type.encodingValue);
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
            writer.writeUint8(relay.type.value);
            serializeOptional(writer, relay.port, (w, value) => w.writeUint16(value));
            serializeOptional(writer, relay.ipv4, (w, value) => w.write(serializeIpv4(value)));
          },
        SingleHostName() => () {
            writer.writeUint8(relay.type.value);
            serializeOptional(writer, relay.port, (w, value) => w.writeUint16(value));
            serializeOptional(writer, relay.dnsName, (w, value) => w.write(serializeDnsName(value)));
          },
        MultiHost() => () {
            writer.writeUint8(relay.type.value);
            serializeOptional(writer, relay.dnsName, (w, value) => w.write(serializeDnsName(value)));
          },
      };
      invoker();
      return writer.toBytes();
    });
  }

  static void serializeOptional<T>(
      ByteDataWriter writer, T? value, void Function(ByteDataWriter, T) serializeFunction) {
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
        throw ValidationException('WITHDRAWAL_INVALID_STAKE_CREDENTIAL');
      }
      return useBinaryWriter((ByteDataWriter writer) {
        writer.write(serializeCoin(withdrawal.amount));
        writerSerializedPath(writer, withdrawalStakeCredential.path);
        return writer.toBytes();
      });
    }
  }

  static Uint8List serializeTxValidityStart(String validityIntervalStart) {
    return useBinaryWriter((ByteDataWriter writer) {
      writeSerializedUint64(writer, BigInt.parse(validityIntervalStart));
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

  static Uint8List serializeToken<T>(ParsedToken token, Uint8List Function(T) serializeTokenAmountFn) {
    return useBinaryWriter((ByteDataWriter writer) {
      final assetNameBytes = hex.decode(token.assetNameHex);
      writer.writeUint32(assetNameBytes.length);
      writer.write(assetNameBytes);
      writer.write(serializeTokenAmountFn(token.amount));
      return writer.toBytes();
    });
  }

  static Uint8List serializeRequiredSigner(ParsedRequiredSigner requiredSigner) {
    return useBinaryWriter((ByteDataWriter writer) {
      final void Function() invoker = switch (requiredSigner) {
        RequiredSignerPath() => () {
            writer.writeUint8(requiredSigner.type.value);
            writerSerializedPath(writer, requiredSigner.path);
          },
        RequiredSignerHash() => () {
            writer.writeUint8(requiredSigner.type.value);
            writeSerializedHex(writer, requiredSigner.hashHex);
          },
      };
      invoker();
      return writer.toBytes();
    });
  }
}
