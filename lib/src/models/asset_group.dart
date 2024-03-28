import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/token.dart';

part 'asset_group.freezed.dart';

@freezed
class AssetGroup with _$AssetGroup {
  AssetGroup._();

  factory AssetGroup({
    required String policyIdHex,
    required List<Token> tokens,
  }) = _AssetGroup;

}