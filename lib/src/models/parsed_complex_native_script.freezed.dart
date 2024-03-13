// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_complex_native_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedComplexNativeScript {
  List<ParsedNativeScript> get scripts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ParsedNativeScript> scripts) all,
    required TResult Function(List<ParsedNativeScript> scripts) any,
    required TResult Function(
            int requiredCount, List<ParsedNativeScript> scripts)
        nOfK,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ParsedNativeScript> scripts)? all,
    TResult? Function(List<ParsedNativeScript> scripts)? any,
    TResult? Function(int requiredCount, List<ParsedNativeScript> scripts)?
        nOfK,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ParsedNativeScript> scripts)? all,
    TResult Function(List<ParsedNativeScript> scripts)? any,
    TResult Function(int requiredCount, List<ParsedNativeScript> scripts)? nOfK,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedComplexNativeScriptCopyWith<ParsedComplexNativeScript> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedComplexNativeScriptCopyWith<$Res> {
  factory $ParsedComplexNativeScriptCopyWith(ParsedComplexNativeScript value,
          $Res Function(ParsedComplexNativeScript) then) =
      _$ParsedComplexNativeScriptCopyWithImpl<$Res, ParsedComplexNativeScript>;
  @useResult
  $Res call({List<ParsedNativeScript> scripts});
}

/// @nodoc
class _$ParsedComplexNativeScriptCopyWithImpl<$Res,
        $Val extends ParsedComplexNativeScript>
    implements $ParsedComplexNativeScriptCopyWith<$Res> {
  _$ParsedComplexNativeScriptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scripts = null,
  }) {
    return _then(_value.copyWith(
      scripts: null == scripts
          ? _value.scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ParsedNativeScript>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedComplexNativeScript_AllImplCopyWith<$Res>
    implements $ParsedComplexNativeScriptCopyWith<$Res> {
  factory _$$ParsedComplexNativeScript_AllImplCopyWith(
          _$ParsedComplexNativeScript_AllImpl value,
          $Res Function(_$ParsedComplexNativeScript_AllImpl) then) =
      __$$ParsedComplexNativeScript_AllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ParsedNativeScript> scripts});
}

/// @nodoc
class __$$ParsedComplexNativeScript_AllImplCopyWithImpl<$Res>
    extends _$ParsedComplexNativeScriptCopyWithImpl<$Res,
        _$ParsedComplexNativeScript_AllImpl>
    implements _$$ParsedComplexNativeScript_AllImplCopyWith<$Res> {
  __$$ParsedComplexNativeScript_AllImplCopyWithImpl(
      _$ParsedComplexNativeScript_AllImpl _value,
      $Res Function(_$ParsedComplexNativeScript_AllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scripts = null,
  }) {
    return _then(_$ParsedComplexNativeScript_AllImpl(
      scripts: null == scripts
          ? _value._scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ParsedNativeScript>,
    ));
  }
}

/// @nodoc

class _$ParsedComplexNativeScript_AllImpl
    extends ParsedComplexNativeScript_All {
  const _$ParsedComplexNativeScript_AllImpl(
      {required final List<ParsedNativeScript> scripts})
      : _scripts = scripts,
        super._();

  final List<ParsedNativeScript> _scripts;
  @override
  List<ParsedNativeScript> get scripts {
    if (_scripts is EqualUnmodifiableListView) return _scripts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scripts);
  }

  @override
  String toString() {
    return 'ParsedComplexNativeScript.all(scripts: $scripts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedComplexNativeScript_AllImpl &&
            const DeepCollectionEquality().equals(other._scripts, _scripts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scripts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedComplexNativeScript_AllImplCopyWith<
          _$ParsedComplexNativeScript_AllImpl>
      get copyWith => __$$ParsedComplexNativeScript_AllImplCopyWithImpl<
          _$ParsedComplexNativeScript_AllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ParsedNativeScript> scripts) all,
    required TResult Function(List<ParsedNativeScript> scripts) any,
    required TResult Function(
            int requiredCount, List<ParsedNativeScript> scripts)
        nOfK,
  }) {
    return all(scripts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ParsedNativeScript> scripts)? all,
    TResult? Function(List<ParsedNativeScript> scripts)? any,
    TResult? Function(int requiredCount, List<ParsedNativeScript> scripts)?
        nOfK,
  }) {
    return all?.call(scripts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ParsedNativeScript> scripts)? all,
    TResult Function(List<ParsedNativeScript> scripts)? any,
    TResult Function(int requiredCount, List<ParsedNativeScript> scripts)? nOfK,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(scripts);
    }
    return orElse();
  }
}

abstract class ParsedComplexNativeScript_All extends ParsedComplexNativeScript {
  const factory ParsedComplexNativeScript_All(
          {required final List<ParsedNativeScript> scripts}) =
      _$ParsedComplexNativeScript_AllImpl;
  const ParsedComplexNativeScript_All._() : super._();

  @override
  List<ParsedNativeScript> get scripts;
  @override
  @JsonKey(ignore: true)
  _$$ParsedComplexNativeScript_AllImplCopyWith<
          _$ParsedComplexNativeScript_AllImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedComplexNativeScript_AnyImplCopyWith<$Res>
    implements $ParsedComplexNativeScriptCopyWith<$Res> {
  factory _$$ParsedComplexNativeScript_AnyImplCopyWith(
          _$ParsedComplexNativeScript_AnyImpl value,
          $Res Function(_$ParsedComplexNativeScript_AnyImpl) then) =
      __$$ParsedComplexNativeScript_AnyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ParsedNativeScript> scripts});
}

/// @nodoc
class __$$ParsedComplexNativeScript_AnyImplCopyWithImpl<$Res>
    extends _$ParsedComplexNativeScriptCopyWithImpl<$Res,
        _$ParsedComplexNativeScript_AnyImpl>
    implements _$$ParsedComplexNativeScript_AnyImplCopyWith<$Res> {
  __$$ParsedComplexNativeScript_AnyImplCopyWithImpl(
      _$ParsedComplexNativeScript_AnyImpl _value,
      $Res Function(_$ParsedComplexNativeScript_AnyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scripts = null,
  }) {
    return _then(_$ParsedComplexNativeScript_AnyImpl(
      scripts: null == scripts
          ? _value._scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ParsedNativeScript>,
    ));
  }
}

/// @nodoc

class _$ParsedComplexNativeScript_AnyImpl
    extends ParsedComplexNativeScript_Any {
  const _$ParsedComplexNativeScript_AnyImpl(
      {required final List<ParsedNativeScript> scripts})
      : _scripts = scripts,
        super._();

  final List<ParsedNativeScript> _scripts;
  @override
  List<ParsedNativeScript> get scripts {
    if (_scripts is EqualUnmodifiableListView) return _scripts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scripts);
  }

  @override
  String toString() {
    return 'ParsedComplexNativeScript.any(scripts: $scripts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedComplexNativeScript_AnyImpl &&
            const DeepCollectionEquality().equals(other._scripts, _scripts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scripts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedComplexNativeScript_AnyImplCopyWith<
          _$ParsedComplexNativeScript_AnyImpl>
      get copyWith => __$$ParsedComplexNativeScript_AnyImplCopyWithImpl<
          _$ParsedComplexNativeScript_AnyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ParsedNativeScript> scripts) all,
    required TResult Function(List<ParsedNativeScript> scripts) any,
    required TResult Function(
            int requiredCount, List<ParsedNativeScript> scripts)
        nOfK,
  }) {
    return any(scripts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ParsedNativeScript> scripts)? all,
    TResult? Function(List<ParsedNativeScript> scripts)? any,
    TResult? Function(int requiredCount, List<ParsedNativeScript> scripts)?
        nOfK,
  }) {
    return any?.call(scripts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ParsedNativeScript> scripts)? all,
    TResult Function(List<ParsedNativeScript> scripts)? any,
    TResult Function(int requiredCount, List<ParsedNativeScript> scripts)? nOfK,
    required TResult orElse(),
  }) {
    if (any != null) {
      return any(scripts);
    }
    return orElse();
  }
}

abstract class ParsedComplexNativeScript_Any extends ParsedComplexNativeScript {
  const factory ParsedComplexNativeScript_Any(
          {required final List<ParsedNativeScript> scripts}) =
      _$ParsedComplexNativeScript_AnyImpl;
  const ParsedComplexNativeScript_Any._() : super._();

  @override
  List<ParsedNativeScript> get scripts;
  @override
  @JsonKey(ignore: true)
  _$$ParsedComplexNativeScript_AnyImplCopyWith<
          _$ParsedComplexNativeScript_AnyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedComplexNativeScript_NOfKImplCopyWith<$Res>
    implements $ParsedComplexNativeScriptCopyWith<$Res> {
  factory _$$ParsedComplexNativeScript_NOfKImplCopyWith(
          _$ParsedComplexNativeScript_NOfKImpl value,
          $Res Function(_$ParsedComplexNativeScript_NOfKImpl) then) =
      __$$ParsedComplexNativeScript_NOfKImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requiredCount, List<ParsedNativeScript> scripts});
}

/// @nodoc
class __$$ParsedComplexNativeScript_NOfKImplCopyWithImpl<$Res>
    extends _$ParsedComplexNativeScriptCopyWithImpl<$Res,
        _$ParsedComplexNativeScript_NOfKImpl>
    implements _$$ParsedComplexNativeScript_NOfKImplCopyWith<$Res> {
  __$$ParsedComplexNativeScript_NOfKImplCopyWithImpl(
      _$ParsedComplexNativeScript_NOfKImpl _value,
      $Res Function(_$ParsedComplexNativeScript_NOfKImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredCount = null,
    Object? scripts = null,
  }) {
    return _then(_$ParsedComplexNativeScript_NOfKImpl(
      requiredCount: null == requiredCount
          ? _value.requiredCount
          : requiredCount // ignore: cast_nullable_to_non_nullable
              as int,
      scripts: null == scripts
          ? _value._scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ParsedNativeScript>,
    ));
  }
}

/// @nodoc

class _$ParsedComplexNativeScript_NOfKImpl
    extends ParsedComplexNativeScript_NOfK {
  const _$ParsedComplexNativeScript_NOfKImpl(
      {required this.requiredCount,
      required final List<ParsedNativeScript> scripts})
      : _scripts = scripts,
        super._();

  @override
  final int requiredCount;
  final List<ParsedNativeScript> _scripts;
  @override
  List<ParsedNativeScript> get scripts {
    if (_scripts is EqualUnmodifiableListView) return _scripts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scripts);
  }

  @override
  String toString() {
    return 'ParsedComplexNativeScript.nOfK(requiredCount: $requiredCount, scripts: $scripts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedComplexNativeScript_NOfKImpl &&
            (identical(other.requiredCount, requiredCount) ||
                other.requiredCount == requiredCount) &&
            const DeepCollectionEquality().equals(other._scripts, _scripts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requiredCount,
      const DeepCollectionEquality().hash(_scripts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedComplexNativeScript_NOfKImplCopyWith<
          _$ParsedComplexNativeScript_NOfKImpl>
      get copyWith => __$$ParsedComplexNativeScript_NOfKImplCopyWithImpl<
          _$ParsedComplexNativeScript_NOfKImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ParsedNativeScript> scripts) all,
    required TResult Function(List<ParsedNativeScript> scripts) any,
    required TResult Function(
            int requiredCount, List<ParsedNativeScript> scripts)
        nOfK,
  }) {
    return nOfK(requiredCount, scripts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ParsedNativeScript> scripts)? all,
    TResult? Function(List<ParsedNativeScript> scripts)? any,
    TResult? Function(int requiredCount, List<ParsedNativeScript> scripts)?
        nOfK,
  }) {
    return nOfK?.call(requiredCount, scripts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ParsedNativeScript> scripts)? all,
    TResult Function(List<ParsedNativeScript> scripts)? any,
    TResult Function(int requiredCount, List<ParsedNativeScript> scripts)? nOfK,
    required TResult orElse(),
  }) {
    if (nOfK != null) {
      return nOfK(requiredCount, scripts);
    }
    return orElse();
  }
}

abstract class ParsedComplexNativeScript_NOfK
    extends ParsedComplexNativeScript {
  const factory ParsedComplexNativeScript_NOfK(
          {required final int requiredCount,
          required final List<ParsedNativeScript> scripts}) =
      _$ParsedComplexNativeScript_NOfKImpl;
  const ParsedComplexNativeScript_NOfK._() : super._();

  int get requiredCount;
  @override
  List<ParsedNativeScript> get scripts;
  @override
  @JsonKey(ignore: true)
  _$$ParsedComplexNativeScript_NOfKImplCopyWith<
          _$ParsedComplexNativeScript_NOfKImpl>
      get copyWith => throw _privateConstructorUsedError;
}
