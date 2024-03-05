import 'package:freezed_annotation/freezed_annotation.dart';
import 'parsed_complex_native_script.dart';
import 'parsed_simple_native_script.dart';

part 'parsed_native_script.freezed.dart';

@freezed
class ParsedNativeScript with _$ParsedNativeScript {
  const factory ParsedNativeScript.complex(ParsedComplexNativeScript script) = _Complex;
  const factory ParsedNativeScript.simple(ParsedSimpleNativeScript script) = _Simple;
}