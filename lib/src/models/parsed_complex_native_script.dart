import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_native_script.dart';

part 'parsed_complex_native_script.freezed.dart';

@freezed
class ParsedComplexNativeScript with _$ParsedComplexNativeScript {
  const factory ParsedComplexNativeScript.all({
    required List<ParsedNativeScript> scripts,
  }) = _All;
  const factory ParsedComplexNativeScript.any({
    required List<ParsedNativeScript> scripts,
  }) = _Any;
  const factory ParsedComplexNativeScript.nOfK({
    required int requiredCount,
    required List<ParsedNativeScript> scripts,
  }) = _NOfK;
}