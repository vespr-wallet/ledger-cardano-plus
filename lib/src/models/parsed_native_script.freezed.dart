// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_native_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedNativeScript {
  Object get script;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedNativeScript &&
            const DeepCollectionEquality().equals(other.script, script));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(script));

  @override
  String toString() {
    return 'ParsedNativeScript(script: $script)';
  }
}

/// @nodoc
class $ParsedNativeScriptCopyWith<$Res> {
  $ParsedNativeScriptCopyWith(
      ParsedNativeScript _, $Res Function(ParsedNativeScript) __);
}

/// @nodoc

class ParsedNativeScript_Complex extends ParsedNativeScript {
  const ParsedNativeScript_Complex(this.script) : super._();

  @override
  final ParsedComplexNativeScript script;

  /// Create a copy of ParsedNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedNativeScript_ComplexCopyWith<ParsedNativeScript_Complex>
      get copyWith =>
          _$ParsedNativeScript_ComplexCopyWithImpl<ParsedNativeScript_Complex>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedNativeScript_Complex &&
            (identical(other.script, script) || other.script == script));
  }

  @override
  int get hashCode => Object.hash(runtimeType, script);

  @override
  String toString() {
    return 'ParsedNativeScript.complex(script: $script)';
  }
}

/// @nodoc
abstract mixin class $ParsedNativeScript_ComplexCopyWith<$Res>
    implements $ParsedNativeScriptCopyWith<$Res> {
  factory $ParsedNativeScript_ComplexCopyWith(ParsedNativeScript_Complex value,
          $Res Function(ParsedNativeScript_Complex) _then) =
      _$ParsedNativeScript_ComplexCopyWithImpl;
  @useResult
  $Res call({ParsedComplexNativeScript script});

  $ParsedComplexNativeScriptCopyWith<$Res> get script;
}

/// @nodoc
class _$ParsedNativeScript_ComplexCopyWithImpl<$Res>
    implements $ParsedNativeScript_ComplexCopyWith<$Res> {
  _$ParsedNativeScript_ComplexCopyWithImpl(this._self, this._then);

  final ParsedNativeScript_Complex _self;
  final $Res Function(ParsedNativeScript_Complex) _then;

  /// Create a copy of ParsedNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? script = null,
  }) {
    return _then(ParsedNativeScript_Complex(
      null == script
          ? _self.script
          : script // ignore: cast_nullable_to_non_nullable
              as ParsedComplexNativeScript,
    ));
  }

  /// Create a copy of ParsedNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedComplexNativeScriptCopyWith<$Res> get script {
    return $ParsedComplexNativeScriptCopyWith<$Res>(_self.script, (value) {
      return _then(_self.copyWith(script: value));
    });
  }
}

/// @nodoc

class ParsedNativeScript_Simple extends ParsedNativeScript {
  const ParsedNativeScript_Simple(this.script) : super._();

  @override
  final ParsedSimpleNativeScript script;

  /// Create a copy of ParsedNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedNativeScript_SimpleCopyWith<ParsedNativeScript_Simple> get copyWith =>
      _$ParsedNativeScript_SimpleCopyWithImpl<ParsedNativeScript_Simple>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedNativeScript_Simple &&
            (identical(other.script, script) || other.script == script));
  }

  @override
  int get hashCode => Object.hash(runtimeType, script);

  @override
  String toString() {
    return 'ParsedNativeScript.simple(script: $script)';
  }
}

/// @nodoc
abstract mixin class $ParsedNativeScript_SimpleCopyWith<$Res>
    implements $ParsedNativeScriptCopyWith<$Res> {
  factory $ParsedNativeScript_SimpleCopyWith(ParsedNativeScript_Simple value,
          $Res Function(ParsedNativeScript_Simple) _then) =
      _$ParsedNativeScript_SimpleCopyWithImpl;
  @useResult
  $Res call({ParsedSimpleNativeScript script});

  $ParsedSimpleNativeScriptCopyWith<$Res> get script;
}

/// @nodoc
class _$ParsedNativeScript_SimpleCopyWithImpl<$Res>
    implements $ParsedNativeScript_SimpleCopyWith<$Res> {
  _$ParsedNativeScript_SimpleCopyWithImpl(this._self, this._then);

  final ParsedNativeScript_Simple _self;
  final $Res Function(ParsedNativeScript_Simple) _then;

  /// Create a copy of ParsedNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? script = null,
  }) {
    return _then(ParsedNativeScript_Simple(
      null == script
          ? _self.script
          : script // ignore: cast_nullable_to_non_nullable
              as ParsedSimpleNativeScript,
    ));
  }

  /// Create a copy of ParsedNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedSimpleNativeScriptCopyWith<$Res> get script {
    return $ParsedSimpleNativeScriptCopyWith<$Res>(_self.script, (value) {
      return _then(_self.copyWith(script: value));
    });
  }
}

// dart format on
