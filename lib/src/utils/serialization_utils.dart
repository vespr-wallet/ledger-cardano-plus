import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/models/parsed_operational_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/parsed_transaction_options.dart';
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
}
