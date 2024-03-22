import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_required_signer.freezed.dart';

@freezed
sealed class ParsedRequiredSigner with _$ParsedRequiredSigner {
  const ParsedRequiredSigner._();

  const factory ParsedRequiredSigner.hash({
    required RequiredSignerType type,
    required String hashHex,
  }) = RequiredSignerHash;

  const factory ParsedRequiredSigner.path({
    required RequiredSignerType type,
    required List<int> path,
  }) = RequiredSignerPath;
}
