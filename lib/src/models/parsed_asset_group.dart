import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'parsed_token.dart';

part 'parsed_asset_group.freezed.dart';

@freezed
sealed class ParsedAssetGroup with _$ParsedAssetGroup {
  ParsedAssetGroup._() {
    validateExactHexString(policyIdHex, 'Policy ID hex', policyIdLength);
  }

  factory ParsedAssetGroup({
    required String policyIdHex,
    required List<ParsedToken> tokens,
  }) = _ParsedAssetGroup;
}
