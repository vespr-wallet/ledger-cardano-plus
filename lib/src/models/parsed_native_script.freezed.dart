// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_native_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedNativeScript {
  Object get script => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedComplexNativeScript script) complex,
    required TResult Function(ParsedSimpleNativeScript script) simple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedComplexNativeScript script)? complex,
    TResult? Function(ParsedSimpleNativeScript script)? simple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedComplexNativeScript script)? complex,
    TResult Function(ParsedSimpleNativeScript script)? simple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedNativeScriptCopyWith<$Res> {
  factory $ParsedNativeScriptCopyWith(
          ParsedNativeScript value, $Res Function(ParsedNativeScript) then) =
      _$ParsedNativeScriptCopyWithImpl<$Res, ParsedNativeScript>;
}

/// @nodoc
class _$ParsedNativeScriptCopyWithImpl<$Res, $Val extends ParsedNativeScript>
    implements $ParsedNativeScriptCopyWith<$Res> {
  _$ParsedNativeScriptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParsedNativeScript_ComplexImplCopyWith<$Res> {
  factory _$$ParsedNativeScript_ComplexImplCopyWith(
          _$ParsedNativeScript_ComplexImpl value,
          $Res Function(_$ParsedNativeScript_ComplexImpl) then) =
      __$$ParsedNativeScript_ComplexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParsedComplexNativeScript script});

  $ParsedComplexNativeScriptCopyWith<$Res> get script;
}

/// @nodoc
class __$$ParsedNativeScript_ComplexImplCopyWithImpl<$Res>
    extends _$ParsedNativeScriptCopyWithImpl<$Res,
        _$ParsedNativeScript_ComplexImpl>
    implements _$$ParsedNativeScript_ComplexImplCopyWith<$Res> {
  __$$ParsedNativeScript_ComplexImplCopyWithImpl(
      _$ParsedNativeScript_ComplexImpl _value,
      $Res Function(_$ParsedNativeScript_ComplexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? script = null,
  }) {
    return _then(_$ParsedNativeScript_ComplexImpl(
      null == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as ParsedComplexNativeScript,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedComplexNativeScriptCopyWith<$Res> get script {
    return $ParsedComplexNativeScriptCopyWith<$Res>(_value.script, (value) {
      return _then(_value.copyWith(script: value));
    });
  }
}

/// @nodoc

class _$ParsedNativeScript_ComplexImpl implements ParsedNativeScript_Complex {
  const _$ParsedNativeScript_ComplexImpl(this.script);

  @override
  final ParsedComplexNativeScript script;

  @override
  String toString() {
    return 'ParsedNativeScript.complex(script: $script)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedNativeScript_ComplexImpl &&
            (identical(other.script, script) || other.script == script));
  }

  @override
  int get hashCode => Object.hash(runtimeType, script);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedNativeScript_ComplexImplCopyWith<_$ParsedNativeScript_ComplexImpl>
      get copyWith => __$$ParsedNativeScript_ComplexImplCopyWithImpl<
          _$ParsedNativeScript_ComplexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedComplexNativeScript script) complex,
    required TResult Function(ParsedSimpleNativeScript script) simple,
  }) {
    return complex(script);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedComplexNativeScript script)? complex,
    TResult? Function(ParsedSimpleNativeScript script)? simple,
  }) {
    return complex?.call(script);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedComplexNativeScript script)? complex,
    TResult Function(ParsedSimpleNativeScript script)? simple,
    required TResult orElse(),
  }) {
    if (complex != null) {
      return complex(script);
    }
    return orElse();
  }
}

abstract class ParsedNativeScript_Complex implements ParsedNativeScript {
  const factory ParsedNativeScript_Complex(
          final ParsedComplexNativeScript script) =
      _$ParsedNativeScript_ComplexImpl;

  @override
  ParsedComplexNativeScript get script;
  @JsonKey(ignore: true)
  _$$ParsedNativeScript_ComplexImplCopyWith<_$ParsedNativeScript_ComplexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedNativeScript_SimpleImplCopyWith<$Res> {
  factory _$$ParsedNativeScript_SimpleImplCopyWith(
          _$ParsedNativeScript_SimpleImpl value,
          $Res Function(_$ParsedNativeScript_SimpleImpl) then) =
      __$$ParsedNativeScript_SimpleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParsedSimpleNativeScript script});

  $ParsedSimpleNativeScriptCopyWith<$Res> get script;
}

/// @nodoc
class __$$ParsedNativeScript_SimpleImplCopyWithImpl<$Res>
    extends _$ParsedNativeScriptCopyWithImpl<$Res,
        _$ParsedNativeScript_SimpleImpl>
    implements _$$ParsedNativeScript_SimpleImplCopyWith<$Res> {
  __$$ParsedNativeScript_SimpleImplCopyWithImpl(
      _$ParsedNativeScript_SimpleImpl _value,
      $Res Function(_$ParsedNativeScript_SimpleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? script = null,
  }) {
    return _then(_$ParsedNativeScript_SimpleImpl(
      null == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as ParsedSimpleNativeScript,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedSimpleNativeScriptCopyWith<$Res> get script {
    return $ParsedSimpleNativeScriptCopyWith<$Res>(_value.script, (value) {
      return _then(_value.copyWith(script: value));
    });
  }
}

/// @nodoc

class _$ParsedNativeScript_SimpleImpl implements ParsedNativeScript_Simple {
  const _$ParsedNativeScript_SimpleImpl(this.script);

  @override
  final ParsedSimpleNativeScript script;

  @override
  String toString() {
    return 'ParsedNativeScript.simple(script: $script)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedNativeScript_SimpleImpl &&
            (identical(other.script, script) || other.script == script));
  }

  @override
  int get hashCode => Object.hash(runtimeType, script);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedNativeScript_SimpleImplCopyWith<_$ParsedNativeScript_SimpleImpl>
      get copyWith => __$$ParsedNativeScript_SimpleImplCopyWithImpl<
          _$ParsedNativeScript_SimpleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedComplexNativeScript script) complex,
    required TResult Function(ParsedSimpleNativeScript script) simple,
  }) {
    return simple(script);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedComplexNativeScript script)? complex,
    TResult? Function(ParsedSimpleNativeScript script)? simple,
  }) {
    return simple?.call(script);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedComplexNativeScript script)? complex,
    TResult Function(ParsedSimpleNativeScript script)? simple,
    required TResult orElse(),
  }) {
    if (simple != null) {
      return simple(script);
    }
    return orElse();
  }
}

abstract class ParsedNativeScript_Simple implements ParsedNativeScript {
  const factory ParsedNativeScript_Simple(
      final ParsedSimpleNativeScript script) = _$ParsedNativeScript_SimpleImpl;

  @override
  ParsedSimpleNativeScript get script;
  @JsonKey(ignore: true)
  _$$ParsedNativeScript_SimpleImplCopyWith<_$ParsedNativeScript_SimpleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
