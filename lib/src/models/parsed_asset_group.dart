import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_token.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_asset_group.freezed.dart';

@freezed
class ParsedAssetGroup with _$ParsedAssetGroup {
  ParsedAssetGroup._() {
    // Validate policyIdHex length
    if (policyIdHex.length != 28) {
      throw ValidationException("Policy ID hex must be exactly 28 characters long.");
    }
  }

  factory ParsedAssetGroup({
    required String policyIdHex,
    required List<ParsedToken<String>> tokens,
  }) = ParsedAssetGroup_data;
}
