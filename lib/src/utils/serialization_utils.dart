import 'dart:typed_data';

import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class SerializationUtils {
  static void writerSerializedPath(ByteDataWriter writer, List<int> path) {
    writer.writeUint8(path.length);
    for (var index in path) {
      writer.writeUint32(index);
    }
  }

  static void writeSerializedHex(ByteDataWriter writer, String hexString) {
    writer.write(hex.decode(hexString));
  }

  static void writeSerializedUint64(ByteDataWriter writer, int value) {
    // Dart does not natively support 64-bit integers, so we split the value into two 32-bit parts.
    writer.writeUint32(value >> 32);
    writer.writeUint32(value & 0xFFFFFFFF);
  }

  static Uint8List serializeSpendingDataSource(SpendingDataSource dataSource) => useBinaryWriter((writer) {
        final void Function() invoker = switch (dataSource) {
          SpendingDataSourcePath() => () {
              writerSerializedPath(writer, dataSource.path);
            },
          SpendingDataSourceScriptHash() => () {
              writeSerializedHex(writer, dataSource.scriptHashHex);
            },
          SpendingDataSourceNone() => () {
              // No additional data to write for None type
            },
        };
        invoker();
        return writer.toBytes();
      });

  static Uint8List serializeStakingDataSource(StakingDataSource dataSource) {
    return useBinaryWriter((writer) {
      final void Function() invoker = switch (dataSource) {
        StakingDataSourceNone() => () {
            // No additional data to write for None type
          },
        StakingDataSourceKeyPath() => () {
            writerSerializedPath(writer, dataSource.path);
          },
        StakingDataSourceKeyHash() => () {
            writeSerializedHex(writer, dataSource.keyHashHex);
          },
        StakingDataSourceScriptHash() => () {
            writeSerializedHex(writer, dataSource.scriptHashHex);
          },
        StakingDataSourceBlockchainPointer() => () {
            writer.writeUint32(dataSource.blockIndex);
            writer.writeUint32(dataSource.txIndex);
            writer.writeUint32(dataSource.certificateIndex);
          },
      };
      invoker();
      return writer.toBytes();
    });
  }
}
