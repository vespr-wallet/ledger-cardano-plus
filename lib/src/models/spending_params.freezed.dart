// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spending_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpendingParams {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> spendingPath) path,
    required TResult Function(String spendingScriptHashHex) scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> spendingPath)? path,
    TResult? Function(String spendingScriptHashHex)? scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> spendingPath)? path,
    TResult Function(String spendingScriptHashHex)? scriptHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingParamsCopyWith<$Res> {
  factory $SpendingParamsCopyWith(
          SpendingParams value, $Res Function(SpendingParams) then) =
      _$SpendingParamsCopyWithImpl<$Res, SpendingParams>;
}

/// @nodoc
class _$SpendingParamsCopyWithImpl<$Res, $Val extends SpendingParams>
    implements $SpendingParamsCopyWith<$Res> {
  _$SpendingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SpendingParamsPathImplCopyWith<$Res> {
  factory _$$SpendingParamsPathImplCopyWith(_$SpendingParamsPathImpl value,
          $Res Function(_$SpendingParamsPathImpl) then) =
      __$$SpendingParamsPathImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> spendingPath});
}

/// @nodoc
class __$$SpendingParamsPathImplCopyWithImpl<$Res>
    extends _$SpendingParamsCopyWithImpl<$Res, _$SpendingParamsPathImpl>
    implements _$$SpendingParamsPathImplCopyWith<$Res> {
  __$$SpendingParamsPathImplCopyWithImpl(_$SpendingParamsPathImpl _value,
      $Res Function(_$SpendingParamsPathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingPath = null,
  }) {
    return _then(_$SpendingParamsPathImpl(
      spendingPath: null == spendingPath
          ? _value._spendingPath
          : spendingPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SpendingParamsPathImpl extends SpendingParamsPath {
  _$SpendingParamsPathImpl({required final List<int> spendingPath})
      : _spendingPath = spendingPath,
        super._();

  final List<int> _spendingPath;
  @override
  List<int> get spendingPath {
    if (_spendingPath is EqualUnmodifiableListView) return _spendingPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spendingPath);
  }

  @override
  String toString() {
    return 'SpendingParams.path(spendingPath: $spendingPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingParamsPathImpl &&
            const DeepCollectionEquality()
                .equals(other._spendingPath, _spendingPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_spendingPath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingParamsPathImplCopyWith<_$SpendingParamsPathImpl> get copyWith =>
      __$$SpendingParamsPathImplCopyWithImpl<_$SpendingParamsPathImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> spendingPath) path,
    required TResult Function(String spendingScriptHashHex) scriptHash,
  }) {
    return path(spendingPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> spendingPath)? path,
    TResult? Function(String spendingScriptHashHex)? scriptHash,
  }) {
    return path?.call(spendingPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> spendingPath)? path,
    TResult Function(String spendingScriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (path != null) {
      return path(spendingPath);
    }
    return orElse();
  }
}

abstract class SpendingParamsPath extends SpendingParams {
  factory SpendingParamsPath({required final List<int> spendingPath}) =
      _$SpendingParamsPathImpl;
  SpendingParamsPath._() : super._();

  List<int> get spendingPath;
  @JsonKey(ignore: true)
  _$$SpendingParamsPathImplCopyWith<_$SpendingParamsPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpendingParamsScriptHashImplCopyWith<$Res> {
  factory _$$SpendingParamsScriptHashImplCopyWith(
          _$SpendingParamsScriptHashImpl value,
          $Res Function(_$SpendingParamsScriptHashImpl) then) =
      __$$SpendingParamsScriptHashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String spendingScriptHashHex});
}

/// @nodoc
class __$$SpendingParamsScriptHashImplCopyWithImpl<$Res>
    extends _$SpendingParamsCopyWithImpl<$Res, _$SpendingParamsScriptHashImpl>
    implements _$$SpendingParamsScriptHashImplCopyWith<$Res> {
  __$$SpendingParamsScriptHashImplCopyWithImpl(
      _$SpendingParamsScriptHashImpl _value,
      $Res Function(_$SpendingParamsScriptHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingScriptHashHex = null,
  }) {
    return _then(_$SpendingParamsScriptHashImpl(
      spendingScriptHashHex: null == spendingScriptHashHex
          ? _value.spendingScriptHashHex
          : spendingScriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpendingParamsScriptHashImpl extends SpendingParamsScriptHash {
  _$SpendingParamsScriptHashImpl({required this.spendingScriptHashHex})
      : super._();

  @override
  final String spendingScriptHashHex;

  @override
  String toString() {
    return 'SpendingParams.scriptHash(spendingScriptHashHex: $spendingScriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingParamsScriptHashImpl &&
            (identical(other.spendingScriptHashHex, spendingScriptHashHex) ||
                other.spendingScriptHashHex == spendingScriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spendingScriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingParamsScriptHashImplCopyWith<_$SpendingParamsScriptHashImpl>
      get copyWith => __$$SpendingParamsScriptHashImplCopyWithImpl<
          _$SpendingParamsScriptHashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> spendingPath) path,
    required TResult Function(String spendingScriptHashHex) scriptHash,
  }) {
    return scriptHash(spendingScriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> spendingPath)? path,
    TResult? Function(String spendingScriptHashHex)? scriptHash,
  }) {
    return scriptHash?.call(spendingScriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> spendingPath)? path,
    TResult Function(String spendingScriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (scriptHash != null) {
      return scriptHash(spendingScriptHashHex);
    }
    return orElse();
  }
}

abstract class SpendingParamsScriptHash extends SpendingParams {
  factory SpendingParamsScriptHash(
          {required final String spendingScriptHashHex}) =
      _$SpendingParamsScriptHashImpl;
  SpendingParamsScriptHash._() : super._();

  String get spendingScriptHashHex;
  @JsonKey(ignore: true)
  _$$SpendingParamsScriptHashImplCopyWith<_$SpendingParamsScriptHashImpl>
      get copyWith => throw _privateConstructorUsedError;
}
