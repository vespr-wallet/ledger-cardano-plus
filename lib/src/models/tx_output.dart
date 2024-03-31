import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/asset_group.dart';
import 'package:ledger_cardano/src/models/datum.dart';
import 'package:ledger_cardano/src/models/tx_output_destination.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'tx_output.freezed.dart';

@freezed
sealed class TxOutput with _$TxOutput {
  TxOutput._();

  factory TxOutput.alonzo({
    required TxOutputDestination destination,
    required BigInt amount, // Using String to represent bigint_like
    List<AssetGroup>? tokenBundle,
    String? datumHashHex,
  }) = TxOutputAlonzo;

  factory TxOutput.babbage({
    required TxOutputDestination destination,
    required BigInt amount, // Using String to represent bigint_like
    List<AssetGroup>? tokenBundle,
    Datum? datum,
    String? referenceScriptHex,
  }) = TxOutputBabbage;

  late final TxOutputFormat format = switch (this) {
    TxOutputAlonzo() => TxOutputFormat.arrayLegacy,
    TxOutputBabbage() => TxOutputFormat.mapBabbage,
  };
}
