// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedPoolKey {
  int get poolKeyValue;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedPoolKey &&
            (identical(other.poolKeyValue, poolKeyValue) ||
                other.poolKeyValue == poolKeyValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, poolKeyValue);

  @override
  String toString() {
    return 'ParsedPoolKey(poolKeyValue: $poolKeyValue)';
  }
}

/// @nodoc
class $ParsedPoolKeyCopyWith<$Res> {
  $ParsedPoolKeyCopyWith(ParsedPoolKey _, $Res Function(ParsedPoolKey) __);
}

/// @nodoc

class DeviceOwnedPoolKey extends ParsedPoolKey {
  DeviceOwnedPoolKey({required this.path}) : super._();

  final LedgerSigningPath path;

  /// Create a copy of ParsedPoolKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeviceOwnedPoolKeyCopyWith<DeviceOwnedPoolKey> get copyWith =>
      _$DeviceOwnedPoolKeyCopyWithImpl<DeviceOwnedPoolKey>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeviceOwnedPoolKey &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @override
  String toString() {
    return 'ParsedPoolKey.deviceOwned(path: $path)';
  }
}

/// @nodoc
abstract mixin class $DeviceOwnedPoolKeyCopyWith<$Res>
    implements $ParsedPoolKeyCopyWith<$Res> {
  factory $DeviceOwnedPoolKeyCopyWith(
          DeviceOwnedPoolKey value, $Res Function(DeviceOwnedPoolKey) _then) =
      _$DeviceOwnedPoolKeyCopyWithImpl;
  @useResult
  $Res call({LedgerSigningPath path});

  $LedgerSigningPathCopyWith<$Res> get path;
}

/// @nodoc
class _$DeviceOwnedPoolKeyCopyWithImpl<$Res>
    implements $DeviceOwnedPoolKeyCopyWith<$Res> {
  _$DeviceOwnedPoolKeyCopyWithImpl(this._self, this._then);

  final DeviceOwnedPoolKey _self;
  final $Res Function(DeviceOwnedPoolKey) _then;

  /// Create a copy of ParsedPoolKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? path = null,
  }) {
    return _then(DeviceOwnedPoolKey(
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  /// Create a copy of ParsedPoolKey
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

class ThirdPartyPoolKey extends ParsedPoolKey {
  ThirdPartyPoolKey({required this.hashHex}) : super._();

  final String hashHex;

  /// Create a copy of ParsedPoolKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThirdPartyPoolKeyCopyWith<ThirdPartyPoolKey> get copyWith =>
      _$ThirdPartyPoolKeyCopyWithImpl<ThirdPartyPoolKey>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThirdPartyPoolKey &&
            (identical(other.hashHex, hashHex) || other.hashHex == hashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hashHex);

  @override
  String toString() {
    return 'ParsedPoolKey.thirdParty(hashHex: $hashHex)';
  }
}

/// @nodoc
abstract mixin class $ThirdPartyPoolKeyCopyWith<$Res>
    implements $ParsedPoolKeyCopyWith<$Res> {
  factory $ThirdPartyPoolKeyCopyWith(
          ThirdPartyPoolKey value, $Res Function(ThirdPartyPoolKey) _then) =
      _$ThirdPartyPoolKeyCopyWithImpl;
  @useResult
  $Res call({String hashHex});
}

/// @nodoc
class _$ThirdPartyPoolKeyCopyWithImpl<$Res>
    implements $ThirdPartyPoolKeyCopyWith<$Res> {
  _$ThirdPartyPoolKeyCopyWithImpl(this._self, this._then);

  final ThirdPartyPoolKey _self;
  final $Res Function(ThirdPartyPoolKey) _then;

  /// Create a copy of ParsedPoolKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hashHex = null,
  }) {
    return _then(ThirdPartyPoolKey(
      hashHex: null == hashHex
          ? _self.hashHex
          : hashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
