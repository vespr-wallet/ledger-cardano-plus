import 'package:freezed_annotation/freezed_annotation.dart';

part 'drep_params.freezed.dart';

@freezed
sealed class DRepParams with _$DRepParams {
  DRepParams._();

  factory DRepParams.keyPath({
    required List<int> keyPath,
  }) = KeyPathDRepParams;

  factory DRepParams.keyHash({
    required String keyHashHex,
  }) = KeyHashDRepParams;

  factory DRepParams.scriptHash({
    required String scriptHashHex,
  }) = ScriptHashDRepParams;

  factory DRepParams.abstain() = AbstainDRepParams;

  factory DRepParams.noConfidence() = NoConfidenceParams;
}