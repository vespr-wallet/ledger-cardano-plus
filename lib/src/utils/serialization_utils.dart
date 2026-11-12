import "dart:convert";
import "dart:typed_data";

import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart";

import "../../ledger_cardano_plus.dart";
import "../models/parsed_c_vote_delegation.dart";
import "utilities.dart";

part 'serialization/serialization_v7.dart';
part 'serialization/serialization_v8.dart';

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

  static Uint8List serializeCoin(BigInt coin) => serializeUint64(coin);

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

  static Uint8List serializeTxOutputDestination(
    ParsedOutputDestination destination,
    CardanoVersion version,
    CardanoNetwork network,
  ) => useBinaryWriter((ByteDataWriter writer) {
    writer.writeUint8(destination.typeEncoding);
    final void Function() invoker = switch (destination) {
      ThirdParty() => () {
        final addressHex = destination.addressHex;
        final addressBytes = hex.decode(addressHex);
        if (version.versionMajor >= 8) {
          writer.writeUint16(addressBytes.length);
        } else {
          writer.writeUint32(addressBytes.length);
        }
        writer.write(addressBytes);
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

  static Uint8List serializeTxWithdrawal(ParsedWithdrawal withdrawal, CardanoVersion version) {
    if (VersionCompatibility.checkVersionCompatibility(version).supportsMultisigTransaction) {
      return useBinaryWriter((ByteDataWriter writer) {
        writer.write(serializeCoin(withdrawal.amount));
        writer.write(SerializationV7.serializeV7Credential(withdrawal.stakeCredential));
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
}
