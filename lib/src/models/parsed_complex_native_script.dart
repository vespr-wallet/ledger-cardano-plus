import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_native_script.dart';

part 'parsed_complex_native_script.freezed.dart';

@freezed
sealed class ParsedComplexNativeScript with _$ParsedComplexNativeScript {
  ParsedComplexNativeScript._();
  factory ParsedComplexNativeScript.all({
    required List<ParsedNativeScript> scripts,
  }) = ParsedComplexNativeScript_All;
  factory ParsedComplexNativeScript.any({
    required List<ParsedNativeScript> scripts,
  }) = ParsedComplexNativeScript_Any;
  factory ParsedComplexNativeScript.nOfK({
    required int requiredCount,
    required List<ParsedNativeScript> scripts,
  }) = ParsedComplexNativeScript_NOfK;
  
  late final int nativeScriptSerializationValue = switch (this) {
    ParsedComplexNativeScript_All() => 1,
    ParsedComplexNativeScript_Any() => 2,
    ParsedComplexNativeScript_NOfK() => 3,
  };
}