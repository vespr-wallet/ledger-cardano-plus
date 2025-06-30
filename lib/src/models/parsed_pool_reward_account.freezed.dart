// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_reward_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedPoolRewardAccount {
  int get poolRewardAccountValue;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedPoolRewardAccount &&
            (identical(other.poolRewardAccountValue, poolRewardAccountValue) ||
                other.poolRewardAccountValue == poolRewardAccountValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, poolRewardAccountValue);

  @override
  String toString() {
    return 'ParsedPoolRewardAccount(poolRewardAccountValue: $poolRewardAccountValue)';
  }
}

/// @nodoc
class $ParsedPoolRewardAccountCopyWith<$Res> {
  $ParsedPoolRewardAccountCopyWith(
      ParsedPoolRewardAccount _, $Res Function(ParsedPoolRewardAccount) __);
}

/// @nodoc

class DeviceOwnedPoolRewardAccount extends ParsedPoolRewardAccount {
  DeviceOwnedPoolRewardAccount({required this.path}) : super._();

  final LedgerSigningPath path;

  /// Create a copy of ParsedPoolRewardAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeviceOwnedPoolRewardAccountCopyWith<DeviceOwnedPoolRewardAccount>
      get copyWith => _$DeviceOwnedPoolRewardAccountCopyWithImpl<
          DeviceOwnedPoolRewardAccount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeviceOwnedPoolRewardAccount &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @override
  String toString() {
    return 'ParsedPoolRewardAccount.deviceOwned(path: $path)';
  }
}

/// @nodoc
abstract mixin class $DeviceOwnedPoolRewardAccountCopyWith<$Res>
    implements $ParsedPoolRewardAccountCopyWith<$Res> {
  factory $DeviceOwnedPoolRewardAccountCopyWith(
          DeviceOwnedPoolRewardAccount value,
          $Res Function(DeviceOwnedPoolRewardAccount) _then) =
      _$DeviceOwnedPoolRewardAccountCopyWithImpl;
  @useResult
  $Res call({LedgerSigningPath path});

  $LedgerSigningPathCopyWith<$Res> get path;
}

/// @nodoc
class _$DeviceOwnedPoolRewardAccountCopyWithImpl<$Res>
    implements $DeviceOwnedPoolRewardAccountCopyWith<$Res> {
  _$DeviceOwnedPoolRewardAccountCopyWithImpl(this._self, this._then);

  final DeviceOwnedPoolRewardAccount _self;
  final $Res Function(DeviceOwnedPoolRewardAccount) _then;

  /// Create a copy of ParsedPoolRewardAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? path = null,
  }) {
    return _then(DeviceOwnedPoolRewardAccount(
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  /// Create a copy of ParsedPoolRewardAccount
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

class ThirdPartyPoolRewardAccount extends ParsedPoolRewardAccount {
  ThirdPartyPoolRewardAccount({required this.rewardAccountHex}) : super._();

  final String rewardAccountHex;

  /// Create a copy of ParsedPoolRewardAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThirdPartyPoolRewardAccountCopyWith<ThirdPartyPoolRewardAccount>
      get copyWith => _$ThirdPartyPoolRewardAccountCopyWithImpl<
          ThirdPartyPoolRewardAccount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThirdPartyPoolRewardAccount &&
            (identical(other.rewardAccountHex, rewardAccountHex) ||
                other.rewardAccountHex == rewardAccountHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rewardAccountHex);

  @override
  String toString() {
    return 'ParsedPoolRewardAccount.thirdParty(rewardAccountHex: $rewardAccountHex)';
  }
}

/// @nodoc
abstract mixin class $ThirdPartyPoolRewardAccountCopyWith<$Res>
    implements $ParsedPoolRewardAccountCopyWith<$Res> {
  factory $ThirdPartyPoolRewardAccountCopyWith(
          ThirdPartyPoolRewardAccount value,
          $Res Function(ThirdPartyPoolRewardAccount) _then) =
      _$ThirdPartyPoolRewardAccountCopyWithImpl;
  @useResult
  $Res call({String rewardAccountHex});
}

/// @nodoc
class _$ThirdPartyPoolRewardAccountCopyWithImpl<$Res>
    implements $ThirdPartyPoolRewardAccountCopyWith<$Res> {
  _$ThirdPartyPoolRewardAccountCopyWithImpl(this._self, this._then);

  final ThirdPartyPoolRewardAccount _self;
  final $Res Function(ThirdPartyPoolRewardAccount) _then;

  /// Create a copy of ParsedPoolRewardAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rewardAccountHex = null,
  }) {
    return _then(ThirdPartyPoolRewardAccount(
      rewardAccountHex: null == rewardAccountHex
          ? _self.rewardAccountHex
          : rewardAccountHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
