import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_asset_group.dart';
import 'parsed_output_destination.dart';
import 'parsed_datum.dart';

part 'parsed_output.freezed.dart';

@freezed
sealed class ParsedOutput with _$ParsedOutput {
  ParsedOutput._();

  factory ParsedOutput({
    required TxOutputFormat format,
    required BigInt amount,
    required List<ParsedAssetGroup> tokenBundle,
    required ParsedOutputDestination destination,
    ParsedDatum? datum,
    String? referenceScriptHex,
  }) = _ParsedOutput;
}
