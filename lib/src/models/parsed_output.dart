import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_asset_group.dart';
import 'parsed_output_destination.dart';
import 'parsed_datum.dart';

part 'parsed_output.freezed.dart';

@freezed
class ParsedOutput with _$ParsedOutput {
  const ParsedOutput._();

  const factory ParsedOutput({
    required TxOutputFormat format,
    required String amount,
    required List<ParsedAssetGroup> tokenBundle,
    required ParsedOutputDestination destination,
    ParsedDatum? datum,
    String? referenceScriptHex,
  }) = ParsedOutput_data;
}
