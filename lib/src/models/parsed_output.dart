import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';
import 'parsed_asset_group.dart';
import 'parsed_output_destination.dart';
import 'parsed_datum.dart';

part 'parsed_output.freezed.dart';

@freezed
sealed class ParsedOutput with _$ParsedOutput {
  ParsedOutput._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      ParsedOutputAlonzo() => () => validateUint64(thisClass.amount, 'amount'),
      ParsedOutputBabbage() => () {
          validateHexString(thisClass.referenceScriptHex, 'referenceScriptHex');
          validateUint64(thisClass.amount, 'amount');
        },
    };
    assertInvoker();
  }

  factory ParsedOutput.alonzo({
    required ParsedOutputDestination destination,
    required BigInt amount,
    @Default([]) List<ParsedAssetGroup> tokenBundle,
    ParsedDatumHash? datumHashHex,
  }) = ParsedOutputAlonzo;

  factory ParsedOutput.babbage({
    required ParsedOutputDestination destination,
    required BigInt amount,
    @Default([]) List<ParsedAssetGroup> tokenBundle,
    ParsedDatum? datum,
    String? referenceScriptHex,
  }) = ParsedOutputBabbage;

  @override
  late final TxOutputFormat format = switch (this) {
    ParsedOutputAlonzo() => TxOutputFormat.arrayLegacy,
    ParsedOutputBabbage() => TxOutputFormat.mapBabbage,
  };

  @override
  late final ParsedDatum? outputDatum = switch (this) {
    ParsedOutputAlonzo(datumHashHex: final datumHashHex) => datumHashHex,
    ParsedOutputBabbage(datum: final datum) => datum,
  };

  @override
  late final String? referenceScriptHash = switch (this) {
    ParsedOutputAlonzo() => null,
    ParsedOutputBabbage(referenceScriptHex: final referenceScriptHex) =>
      referenceScriptHex,
  };
}
