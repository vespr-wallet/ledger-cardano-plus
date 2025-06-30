// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spending_data_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpendingDataSource {
  SpendingDataSourceType get spendingDataSourceType;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpendingDataSource &&
            (identical(other.spendingDataSourceType, spendingDataSourceType) ||
                other.spendingDataSourceType == spendingDataSourceType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spendingDataSourceType);

  @override
  String toString() {
    return 'SpendingDataSource(spendingDataSourceType: $spendingDataSourceType)';
  }
}

/// @nodoc
class $SpendingDataSourceCopyWith<$Res> {
  $SpendingDataSourceCopyWith(
      SpendingDataSource _, $Res Function(SpendingDataSource) __);
}

/// @nodoc

class SpendingDataSourceNone extends SpendingDataSource {
  SpendingDataSourceNone() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SpendingDataSourceNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SpendingDataSource.none()';
  }
}

/// @nodoc

class SpendingDataSourcePath extends SpendingDataSource {
  SpendingDataSourcePath({required this.path}) : super._();

  final LedgerSigningPath path;

  /// Create a copy of SpendingDataSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpendingDataSourcePathCopyWith<SpendingDataSourcePath> get copyWith =>
      _$SpendingDataSourcePathCopyWithImpl<SpendingDataSourcePath>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpendingDataSourcePath &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @override
  String toString() {
    return 'SpendingDataSource.path(path: $path)';
  }
}

/// @nodoc
abstract mixin class $SpendingDataSourcePathCopyWith<$Res>
    implements $SpendingDataSourceCopyWith<$Res> {
  factory $SpendingDataSourcePathCopyWith(SpendingDataSourcePath value,
          $Res Function(SpendingDataSourcePath) _then) =
      _$SpendingDataSourcePathCopyWithImpl;
  @useResult
  $Res call({LedgerSigningPath path});

  $LedgerSigningPathCopyWith<$Res> get path;
}

/// @nodoc
class _$SpendingDataSourcePathCopyWithImpl<$Res>
    implements $SpendingDataSourcePathCopyWith<$Res> {
  _$SpendingDataSourcePathCopyWithImpl(this._self, this._then);

  final SpendingDataSourcePath _self;
  final $Res Function(SpendingDataSourcePath) _then;

  /// Create a copy of SpendingDataSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? path = null,
  }) {
    return _then(SpendingDataSourcePath(
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  /// Create a copy of SpendingDataSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get path {
    return $LedgerSigningPathCopyWith<$Res>(_self.path, (value) {
      return _then(_self.copyWith(path: value));
    });
  }
}

/// @nodoc

class SpendingDataSourceScriptHash extends SpendingDataSource {
  SpendingDataSourceScriptHash({required this.scriptHashHex}) : super._();

  final String scriptHashHex;

  /// Create a copy of SpendingDataSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpendingDataSourceScriptHashCopyWith<SpendingDataSourceScriptHash>
      get copyWith => _$SpendingDataSourceScriptHashCopyWithImpl<
          SpendingDataSourceScriptHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpendingDataSourceScriptHash &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scriptHashHex);

  @override
  String toString() {
    return 'SpendingDataSource.scriptHash(scriptHashHex: $scriptHashHex)';
  }
}

/// @nodoc
abstract mixin class $SpendingDataSourceScriptHashCopyWith<$Res>
    implements $SpendingDataSourceCopyWith<$Res> {
  factory $SpendingDataSourceScriptHashCopyWith(
          SpendingDataSourceScriptHash value,
          $Res Function(SpendingDataSourceScriptHash) _then) =
      _$SpendingDataSourceScriptHashCopyWithImpl;
  @useResult
  $Res call({String scriptHashHex});
}

/// @nodoc
class _$SpendingDataSourceScriptHashCopyWithImpl<$Res>
    implements $SpendingDataSourceScriptHashCopyWith<$Res> {
  _$SpendingDataSourceScriptHashCopyWithImpl(this._self, this._then);

  final SpendingDataSourceScriptHash _self;
  final $Res Function(SpendingDataSourceScriptHash) _then;

  /// Create a copy of SpendingDataSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scriptHashHex = null,
  }) {
    return _then(SpendingDataSourceScriptHash(
      scriptHashHex: null == scriptHashHex
          ? _self.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
