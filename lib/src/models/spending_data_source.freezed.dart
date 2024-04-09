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
mixin _$SpendingDataSource {}

/// @nodoc
abstract class $SpendingDataSourceCopyWith<$Res> {
  factory $SpendingDataSourceCopyWith(
          SpendingDataSource value, $Res Function(SpendingDataSource) then) =
      _$SpendingDataSourceCopyWithImpl<$Res, SpendingDataSource>;
}

/// @nodoc
class _$SpendingDataSourceCopyWithImpl<$Res, $Val extends SpendingDataSource>
    implements $SpendingDataSourceCopyWith<$Res> {
  _$SpendingDataSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SpendingDataSourceNoneImplCopyWith<$Res> {
  factory _$$SpendingDataSourceNoneImplCopyWith(
          _$SpendingDataSourceNoneImpl value,
          $Res Function(_$SpendingDataSourceNoneImpl) then) =
      __$$SpendingDataSourceNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpendingDataSourceNoneImplCopyWithImpl<$Res>
    extends _$SpendingDataSourceCopyWithImpl<$Res, _$SpendingDataSourceNoneImpl>
    implements _$$SpendingDataSourceNoneImplCopyWith<$Res> {
  __$$SpendingDataSourceNoneImplCopyWithImpl(
      _$SpendingDataSourceNoneImpl _value,
      $Res Function(_$SpendingDataSourceNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpendingDataSourceNoneImpl extends SpendingDataSourceNone {
  _$SpendingDataSourceNoneImpl() : super._();

  @override
  String toString() {
    return 'SpendingDataSource.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingDataSourceNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SpendingDataSourceNone extends SpendingDataSource {
  factory SpendingDataSourceNone() = _$SpendingDataSourceNoneImpl;
  SpendingDataSourceNone._() : super._();
}

/// @nodoc
abstract class _$$SpendingDataSourcePathImplCopyWith<$Res> {
  factory _$$SpendingDataSourcePathImplCopyWith(
          _$SpendingDataSourcePathImpl value,
          $Res Function(_$SpendingDataSourcePathImpl) then) =
      __$$SpendingDataSourcePathImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> path});
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
    Object? path = null,
  }) {
    return _then(_$SpendingDataSourcePathImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SpendingDataSourcePathImpl extends SpendingDataSourcePath {
  _$SpendingDataSourcePathImpl({required final List<int> path})
      : _path = path,
        super._();

  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'SpendingDataSource.path(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingDataSourcePathImpl &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingDataSourcePathImplCopyWith<_$SpendingDataSourcePathImpl>
      get copyWith => __$$SpendingDataSourcePathImplCopyWithImpl<
          _$SpendingDataSourcePathImpl>(this, _$identity);
}

abstract class SpendingDataSourcePath extends SpendingDataSource {
  factory SpendingDataSourcePath({required final List<int> path}) =
      _$SpendingDataSourcePathImpl;
  SpendingDataSourcePath._() : super._();

  List<int> get path;
  @JsonKey(ignore: true)
  _$$SpendingDataSourcePathImplCopyWith<_$SpendingDataSourcePathImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpendingDataSourceScriptHashImplCopyWith<$Res> {
  factory _$$SpendingDataSourceScriptHashImplCopyWith(
          _$SpendingDataSourceScriptHashImpl value,
          $Res Function(_$SpendingDataSourceScriptHashImpl) then) =
      __$$SpendingDataSourceScriptHashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String scriptHashHex});
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
    Object? scriptHashHex = null,
  }) {
    return _then(_$SpendingDataSourceScriptHashImpl(
      scriptHashHex: null == scriptHashHex
          ? _value.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpendingDataSourceScriptHashImpl extends SpendingDataSourceScriptHash {
  _$SpendingDataSourceScriptHashImpl({required this.scriptHashHex}) : super._();

  @override
  final String scriptHashHex;

  @override
  String toString() {
    return 'SpendingDataSource.scriptHash(scriptHashHex: $scriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingDataSourceScriptHashImpl &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingDataSourceScriptHashImplCopyWith<
          _$SpendingDataSourceScriptHashImpl>
      get copyWith => __$$SpendingDataSourceScriptHashImplCopyWithImpl<
          _$SpendingDataSourceScriptHashImpl>(this, _$identity);
}

abstract class SpendingDataSourceScriptHash extends SpendingDataSource {
  factory SpendingDataSourceScriptHash({required final String scriptHashHex}) =
      _$SpendingDataSourceScriptHashImpl;
  SpendingDataSourceScriptHash._() : super._();

  String get scriptHashHex;
  @JsonKey(ignore: true)
  _$$SpendingDataSourceScriptHashImplCopyWith<
          _$SpendingDataSourceScriptHashImpl>
      get copyWith => throw _privateConstructorUsedError;
}
