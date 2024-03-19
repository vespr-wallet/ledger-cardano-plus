import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_required_signer.freezed.dart';

@freezed
class ParsedRequiredSigner with _$ParsedRequiredSigner {
  const ParsedRequiredSigner._();

  const factory ParsedRequiredSigner.hash({
    required String hashHex,
  }) = RequiredSignerHash;

  const factory ParsedRequiredSigner.path({
    required List<int> path,
  }) = RequiredSignerPath;

}