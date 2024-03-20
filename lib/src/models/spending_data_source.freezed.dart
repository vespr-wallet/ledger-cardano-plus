// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spending_data_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpendingDataSource {
  SpendingDataSourceType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpendingDataSourceType type) none,
    required TResult Function(SpendingDataSourceType type, List<int> path) path,
    required TResult Function(SpendingDataSourceType type, String scriptHashHex)
        scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpendingDataSourceType type)? none,
    TResult? Function(SpendingDataSourceType type, List<int> path)? path,
    TResult? Function(SpendingDataSourceType type, String scriptHashHex)?
        scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpendingDataSourceType type)? none,
    TResult Function(SpendingDataSourceType type, List<int> path)? path,
    TResult Function(SpendingDataSourceType type, String scriptHashHex)?
        scriptHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpendingDataSourceCopyWith<SpendingDataSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingDataSourceCopyWith<$Res> {
  factory $SpendingDataSourceCopyWith(
          SpendingDataSource value, $Res Function(SpendingDataSource) then) =
      _$SpendingDataSourceCopyWithImpl<$Res, SpendingDataSource>;
  @useResult
  $Res call({SpendingDataSourceType type});
}

/// @nodoc
class _$SpendingDataSourceCopyWithImpl<$Res, $Val extends SpendingDataSource>
    implements $SpendingDataSourceCopyWith<$Res> {
  _$SpendingDataSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SpendingDataSourceType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpendingDataSourceNoneImplCopyWith<$Res>
    implements $SpendingDataSourceCopyWith<$Res> {
  factory _$$SpendingDataSourceNoneImplCopyWith(
          _$SpendingDataSourceNoneImpl value,
          $Res Function(_$SpendingDataSourceNoneImpl) then) =
      __$$SpendingDataSourceNoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SpendingDataSourceType type});
}

/// @nodoc
class __$$SpendingDataSourceNoneImplCopyWithImpl<$Res>
    extends _$SpendingDataSourceCopyWithImpl<$Res, _$SpendingDataSourceNoneImpl>
    implements _$$SpendingDataSourceNoneImplCopyWith<$Res> {
  __$$SpendingDataSourceNoneImplCopyWithImpl(
      _$SpendingDataSourceNoneImpl _value,
      $Res Function(_$SpendingDataSourceNoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SpendingDataSourceNoneImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SpendingDataSourceType,
    ));
  }
}

/// @nodoc

class _$SpendingDataSourceNoneImpl extends SpendingDataSourceNone {
  const _$SpendingDataSourceNoneImpl({required this.type}) : super._();

  @override
  final SpendingDataSourceType type;

  @override
  String toString() {
    return 'SpendingDataSource.none(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingDataSourceNoneImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingDataSourceNoneImplCopyWith<_$SpendingDataSourceNoneImpl>
      get copyWith => __$$SpendingDataSourceNoneImplCopyWithImpl<
          _$SpendingDataSourceNoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpendingDataSourceType type) none,
    required TResult Function(SpendingDataSourceType type, List<int> path) path,
    required TResult Function(SpendingDataSourceType type, String scriptHashHex)
        scriptHash,
  }) {
    return none(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpendingDataSourceType type)? none,
    TResult? Function(SpendingDataSourceType type, List<int> path)? path,
    TResult? Function(SpendingDataSourceType type, String scriptHashHex)?
        scriptHash,
  }) {
    return none?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpendingDataSourceType type)? none,
    TResult Function(SpendingDataSourceType type, List<int> path)? path,
    TResult Function(SpendingDataSourceType type, String scriptHashHex)?
        scriptHash,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(type);
    }
    return orElse();
  }
}

abstract class SpendingDataSourceNone extends SpendingDataSource {
  const factory SpendingDataSourceNone(
          {required final SpendingDataSourceType type}) =
      _$SpendingDataSourceNoneImpl;
  const SpendingDataSourceNone._() : super._();

  @override
  SpendingDataSourceType get type;
  @override
  @JsonKey(ignore: true)
  _$$SpendingDataSourceNoneImplCopyWith<_$SpendingDataSourceNoneImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpendingDataSourcePathImplCopyWith<$Res>
    implements $SpendingDataSourceCopyWith<$Res> {
  factory _$$SpendingDataSourcePathImplCopyWith(
          _$SpendingDataSourcePathImpl value,
          $Res Function(_$SpendingDataSourcePathImpl) then) =
      __$$SpendingDataSourcePathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SpendingDataSourceType type, List<int> path});
}

/// @nodoc
class __$$SpendingDataSourcePathImplCopyWithImpl<$Res>
    extends _$SpendingDataSourceCopyWithImpl<$Res, _$SpendingDataSourcePathImpl>
    implements _$$SpendingDataSourcePathImplCopyWith<$Res> {
  __$$SpendingDataSourcePathImplCopyWithImpl(
      _$SpendingDataSourcePathImpl _value,
      $Res Function(_$SpendingDataSourcePathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? path = null,
  }) {
    return _then(_$SpendingDataSourcePathImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SpendingDataSourceType,
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SpendingDataSourcePathImpl extends SpendingDataSourcePath {
  const _$SpendingDataSourcePathImpl(
      {required this.type, required final List<int> path})
      : _path = path,
        super._();

  @override
  final SpendingDataSourceType type;
  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'SpendingDataSource.path(type: $type, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingDataSourcePathImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingDataSourcePathImplCopyWith<_$SpendingDataSourcePathImpl>
      get copyWith => __$$SpendingDataSourcePathImplCopyWithImpl<
          _$SpendingDataSourcePathImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpendingDataSourceType type) none,
    required TResult Function(SpendingDataSourceType type, List<int> path) path,
    required TResult Function(SpendingDataSourceType type, String scriptHashHex)
        scriptHash,
  }) {
    return path(type, this.path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpendingDataSourceType type)? none,
    TResult? Function(SpendingDataSourceType type, List<int> path)? path,
    TResult? Function(SpendingDataSourceType type, String scriptHashHex)?
        scriptHash,
  }) {
    return path?.call(type, this.path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpendingDataSourceType type)? none,
    TResult Function(SpendingDataSourceType type, List<int> path)? path,
    TResult Function(SpendingDataSourceType type, String scriptHashHex)?
        scriptHash,
    required TResult orElse(),
  }) {
    if (path != null) {
      return path(type, this.path);
    }
    return orElse();
  }
}

abstract class SpendingDataSourcePath extends SpendingDataSource {
  const factory SpendingDataSourcePath(
      {required final SpendingDataSourceType type,
      required final List<int> path}) = _$SpendingDataSourcePathImpl;
  const SpendingDataSourcePath._() : super._();

  @override
  SpendingDataSourceType get type;
  List<int> get path;
  @override
  @JsonKey(ignore: true)
  _$$SpendingDataSourcePathImplCopyWith<_$SpendingDataSourcePathImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpendingDataSourceScriptHashImplCopyWith<$Res>
    implements $SpendingDataSourceCopyWith<$Res> {
  factory _$$SpendingDataSourceScriptHashImplCopyWith(
          _$SpendingDataSourceScriptHashImpl value,
          $Res Function(_$SpendingDataSourceScriptHashImpl) then) =
      __$$SpendingDataSourceScriptHashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SpendingDataSourceType type, String scriptHashHex});
}

/// @nodoc
class __$$SpendingDataSourceScriptHashImplCopyWithImpl<$Res>
    extends _$SpendingDataSourceCopyWithImpl<$Res,
        _$SpendingDataSourceScriptHashImpl>
    implements _$$SpendingDataSourceScriptHashImplCopyWith<$Res> {
  __$$SpendingDataSourceScriptHashImplCopyWithImpl(
      _$SpendingDataSourceScriptHashImpl _value,
      $Res Function(_$SpendingDataSourceScriptHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? scriptHashHex = null,
  }) {
    return _then(_$SpendingDataSourceScriptHashImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SpendingDataSourceType,
      scriptHashHex: null == scriptHashHex
          ? _value.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpendingDataSourceScriptHashImpl extends SpendingDataSourceScriptHash {
  const _$SpendingDataSourceScriptHashImpl(
      {required this.type, required this.scriptHashHex})
      : super._();

  @override
  final SpendingDataSourceType type;
  @override
  final String scriptHashHex;

  @override
  String toString() {
    return 'SpendingDataSource.scriptHash(type: $type, scriptHashHex: $scriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingDataSourceScriptHashImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, scriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingDataSourceScriptHashImplCopyWith<
          _$SpendingDataSourceScriptHashImpl>
      get copyWith => __$$SpendingDataSourceScriptHashImplCopyWithImpl<
          _$SpendingDataSourceScriptHashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpendingDataSourceType type) none,
    required TResult Function(SpendingDataSourceType type, List<int> path) path,
    required TResult Function(SpendingDataSourceType type, String scriptHashHex)
        scriptHash,
  }) {
    return scriptHash(type, scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpendingDataSourceType type)? none,
    TResult? Function(SpendingDataSourceType type, List<int> path)? path,
    TResult? Function(SpendingDataSourceType type, String scriptHashHex)?
        scriptHash,
  }) {
    return scriptHash?.call(type, scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpendingDataSourceType type)? none,
    TResult Function(SpendingDataSourceType type, List<int> path)? path,
    TResult Function(SpendingDataSourceType type, String scriptHashHex)?
        scriptHash,
    required TResult orElse(),
  }) {
    if (scriptHash != null) {
      return scriptHash(type, scriptHashHex);
    }
    return orElse();
  }
}

abstract class SpendingDataSourceScriptHash extends SpendingDataSource {
  const factory SpendingDataSourceScriptHash(
          {required final SpendingDataSourceType type,
          required final String scriptHashHex}) =
      _$SpendingDataSourceScriptHashImpl;
  const SpendingDataSourceScriptHash._() : super._();

  @override
  SpendingDataSourceType get type;
  String get scriptHashHex;
  @override
  @JsonKey(ignore: true)
  _$$SpendingDataSourceScriptHashImplCopyWith<
          _$SpendingDataSourceScriptHashImpl>
      get copyWith => throw _privateConstructorUsedError;
}
