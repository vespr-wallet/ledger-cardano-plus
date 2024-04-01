import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'parsed_token.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_asset_group.freezed.dart';

@freezed
sealed class ParsedAssetGroup with _$ParsedAssetGroup {
  ParsedAssetGroup._() {
    if (policyIdHex.length != policyIdLength) {
      throw ValidationException("Policy ID hex must be exactly $policyIdLength characters long.");
    }
  }

  factory ParsedAssetGroup({
    required String policyIdHex,
    required List<ParsedToken> tokens,
  }) = _ParsedAssetGroup;
}
