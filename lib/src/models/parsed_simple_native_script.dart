import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_simple_native_script.freezed.dart';

@freezed
sealed class ParsedSimpleNativeScript with _$ParsedSimpleNativeScript {
  const ParsedSimpleNativeScript._();

  const factory ParsedSimpleNativeScript.pubKeyDeviceOwned({
    required List<int> path,
  }) = ParsedSimpleNativeScript_PubKeyDeviceOwned;
  const factory ParsedSimpleNativeScript.pubKeyThirdParty({
    required String keyHashHex,
  }) = ParsedSimpleNativeScript_PubKeyThirdParty;
  const factory ParsedSimpleNativeScript.invalidBefore({
    required int slot,
  }) = ParsedSimpleNativeScript_InvalidBefore;
  const factory ParsedSimpleNativeScript.invalidHereafter({
    required int slot,
  }) = ParsedSimpleNativeScript_InvalidHereafter;
}