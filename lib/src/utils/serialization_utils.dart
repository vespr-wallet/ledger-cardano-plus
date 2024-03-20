import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/models/cvote_public_key.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/models/parsed_c_vote_delegation.dart';
import 'package:ledger_cardano/src/models/parsed_c_vote_registration_params.dart';
import 'package:ledger_cardano/src/models/parsed_input.dart';
import 'package:ledger_cardano/src/models/parsed_operational_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_output_destination.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/parsed_transaction_options.dart';
import 'package:ledger_cardano/src/models/parsed_tx_auxiliary_data.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

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

      // Serialize transaction options if supported
      if (compatibility.supportsConway) {
        // Assuming serializeTxOptions exists and writes directly to the writer
        serializeTxOptions(writer, options);
      }

      // Serialize flags and counts based on version compatibility
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

      // Serialize networkId and protocolMagic
      writer.writeUint8(tx.network.networkId);
      writer.writeUint32(tx.network.protocolMagic);

      // Serialize other flags
      serializeOptionFlag(writer, tx.ttl != null);
      serializeOptionFlag(writer, tx.auxiliaryData != null);
      serializeOptionFlag(writer, tx.validityIntervalStart != null);

      // Serialize signing mode
      _serializeSigningMode(writer, signingMode);

      // Serialize counts of various transaction components
      writer.writeUint32(tx.inputs.length);
      writer.writeUint32(tx.outputs.length);
      writer.writeUint32(tx.certificates.length);
      writer.writeUint32(tx.withdrawals.length);

      // Serialize numWitnesses based on version compatibility
      if (!compatibility.supportsBabbage) {
        writer.writeUint32(numWitnesses);
      }
      if (compatibility.supportsBabbage) {
        writer.writeUint32(numWitnesses);
      }

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
      final registrationFormatEncoding = {
        CIP36VoteRegistrationFormat.cip15: 0x01,
        CIP36VoteRegistrationFormat.cip36: 0x02,
      };

      if (params.format is CIP36VoteRegistrationFormat) {
        writer.writeUint8(registrationFormatEncoding[params.format] ?? 0);
      } else {
        throw ValidationException('Invalid registration format');
      }

      final numDelegations = params.delegations?.length ?? 0;
      writer.writeUint32(numDelegations);
      return writer.toBytes();
    });
  }

  static Uint8List serializeDelegationType(CIP36VoteDelegationType type) {
    final delegationTypeEncoding = {
      CIP36VoteDelegationType.key: 0x01,
      CIP36VoteDelegationType.path: 0x02,
    };
    if (delegationTypeEncoding.containsKey(type)) {
      return Uint8List.fromList([delegationTypeEncoding[type] ?? 0]);
    } else {
      throw ValidationException('Invalid delegation type');
    }
  }

  static Uint8List serializeCVoteRegistrationVoteKey(
      CVotePublicKey? votePublicKey, List<int>? votePublicKeyPath, CardanoVersion version) {
    return useBinaryWriter((ByteDataWriter writer) {
      if (votePublicKey != null) {
        assert(votePublicKeyPath == null, 'Redundant vote key path');
        if (VersionCompatibility.checkVersionCompatibility(version).supportsCIP36) {
          writer.write(serializeDelegationType(CIP36VoteDelegationType.key));
        }
        writeSerializedHex(writer, votePublicKey.value);
      } else {
        final voteKeyPublicKeyPath = votePublicKeyPath ?? [];
        assert(votePublicKeyPath != null, 'Missing vote key');
        assert(VersionCompatibility.checkVersionCompatibility(version).supportsCIP36Vote,
            'Key derivation path for vote keys not supported by the device');
        writer.write(serializeDelegationType(CIP36VoteDelegationType.path));
        writerSerializedPath(writer, voteKeyPublicKeyPath);
      }
      return writer.toBytes();
    });
  }

  static Uint8List serializeCVoteRegistrationDelegation(ParsedCVoteDelegation delegation) {
    return useBinaryWriter((ByteDataWriter writer) {
      writer.write(serializeDelegationType(delegation.type));
      writer.writeUint32(delegation.weight);

      final void Function() invoker = switch (delegation) {
        KeyDelegation() => () {
            writeSerializedHex(writer, delegation.voteKey);
          },
        PathDelegation() => () {
            writerSerializedPath(writer, delegation.voteKeyPath);
          },
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
      final typeEncoding = {
        TxOutputDestinationType.thirdParty: 1,
        TxOutputDestinationType.deviceOwned: 2,
      };

      if (destination.type == TxOutputDestinationType.thirdParty ||
          destination.type == TxOutputDestinationType.deviceOwned) {
        writer.writeUint8(typeEncoding[destination.type] ?? 0);
      }

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
}
