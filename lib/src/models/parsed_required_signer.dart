import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'parsed_required_signer.freezed.dart';

@freezed
sealed class ParsedRequiredSigner with _$ParsedRequiredSigner {
  ParsedRequiredSigner._();

  factory ParsedRequiredSigner.hash({
    required String hashHex,
  }) = RequiredSignerHash;

  factory ParsedRequiredSigner.path({
    required List<int> path,
  }) = RequiredSignerPath;

  late final RequiredSignerType requiredSignerType = switch (this) {
    RequiredSignerHash() => RequiredSignerType.hash,
    RequiredSignerPath() => RequiredSignerType.path,
  };
}
