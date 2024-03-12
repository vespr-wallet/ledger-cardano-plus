import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_native_script.dart';

part 'parsed_complex_native_script.freezed.dart';

@freezed
sealed class ParsedComplexNativeScript with _$ParsedComplexNativeScript {
  const ParsedComplexNativeScript._();
  const factory ParsedComplexNativeScript.all({
    required List<ParsedNativeScript> scripts,
  }) = ParsedComplexNativeScript_All;
  const factory ParsedComplexNativeScript.any({
    required List<ParsedNativeScript> scripts,
  }) = ParsedComplexNativeScript_Any;
  const factory ParsedComplexNativeScript.nOfK({
    required int requiredCount,
    required List<ParsedNativeScript> scripts,
  }) = ParsedComplexNativeScript_NOfK;
}