import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_simple_native_script.freezed.dart';

@freezed
class ParsedSimpleNativeScript with _$ParsedSimpleNativeScript {
  const factory ParsedSimpleNativeScript.pubKeyDeviceOwned({
    required List<int> path,
  }) = _PubKeyDeviceOwned;
  const factory ParsedSimpleNativeScript.pubKeyThirdParty({
    required String keyHashHex,
  }) = _PubKeyThirdParty;
  const factory ParsedSimpleNativeScript.invalidBefore({
    required int slot,
  }) = _InvalidBefore;
  const factory ParsedSimpleNativeScript.invalidHereafter({
    required int slot,
  }) = _InvalidHereafter;
}