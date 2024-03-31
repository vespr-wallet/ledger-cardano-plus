// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool_reward_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PoolRewardAccount {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rewardAccountHex) thirdParty,
    required TResult Function(String path) deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rewardAccountHex)? thirdParty,
    TResult? Function(String path)? deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rewardAccountHex)? thirdParty,
    TResult Function(String path)? deviceOwned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolRewardAccountCopyWith<$Res> {
  factory $PoolRewardAccountCopyWith(
          PoolRewardAccount value, $Res Function(PoolRewardAccount) then) =
      _$PoolRewardAccountCopyWithImpl<$Res, PoolRewardAccount>;
}

/// @nodoc
class _$PoolRewardAccountCopyWithImpl<$Res, $Val extends PoolRewardAccount>
    implements $PoolRewardAccountCopyWith<$Res> {
  _$PoolRewardAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PoolRewardAccountThirdPartyImplCopyWith<$Res> {
  factory _$$PoolRewardAccountThirdPartyImplCopyWith(
          _$PoolRewardAccountThirdPartyImpl value,
          $Res Function(_$PoolRewardAccountThirdPartyImpl) then) =
      __$$PoolRewardAccountThirdPartyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rewardAccountHex});
}

/// @nodoc
class __$$PoolRewardAccountThirdPartyImplCopyWithImpl<$Res>
    extends _$PoolRewardAccountCopyWithImpl<$Res,
        _$PoolRewardAccountThirdPartyImpl>
    implements _$$PoolRewardAccountThirdPartyImplCopyWith<$Res> {
  __$$PoolRewardAccountThirdPartyImplCopyWithImpl(
      _$PoolRewardAccountThirdPartyImpl _value,
      $Res Function(_$PoolRewardAccountThirdPartyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardAccountHex = null,
  }) {
    return _then(_$PoolRewardAccountThirdPartyImpl(
      rewardAccountHex: null == rewardAccountHex
          ? _value.rewardAccountHex
          : rewardAccountHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PoolRewardAccountThirdPartyImpl extends PoolRewardAccountThirdParty {
  _$PoolRewardAccountThirdPartyImpl({required this.rewardAccountHex})
      : super._();

  @override
  final String rewardAccountHex;

  @override
  String toString() {
    return 'PoolRewardAccount.thirdParty(rewardAccountHex: $rewardAccountHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolRewardAccountThirdPartyImpl &&
            (identical(other.rewardAccountHex, rewardAccountHex) ||
                other.rewardAccountHex == rewardAccountHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rewardAccountHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolRewardAccountThirdPartyImplCopyWith<_$PoolRewardAccountThirdPartyImpl>
      get copyWith => __$$PoolRewardAccountThirdPartyImplCopyWithImpl<
          _$PoolRewardAccountThirdPartyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rewardAccountHex) thirdParty,
    required TResult Function(String path) deviceOwned,
  }) {
    return thirdParty(rewardAccountHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rewardAccountHex)? thirdParty,
    TResult? Function(String path)? deviceOwned,
  }) {
    return thirdParty?.call(rewardAccountHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rewardAccountHex)? thirdParty,
    TResult Function(String path)? deviceOwned,
    required TResult orElse(),
  }) {
    if (thirdParty != null) {
      return thirdParty(rewardAccountHex);
    }
    return orElse();
  }
}

abstract class PoolRewardAccountThirdParty extends PoolRewardAccount {
  factory PoolRewardAccountThirdParty(
          {required final String rewardAccountHex}) =
      _$PoolRewardAccountThirdPartyImpl;
  PoolRewardAccountThirdParty._() : super._();

  String get rewardAccountHex;
  @JsonKey(ignore: true)
  _$$PoolRewardAccountThirdPartyImplCopyWith<_$PoolRewardAccountThirdPartyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PoolRewardAccountDeviceOwnedImplCopyWith<$Res> {
  factory _$$PoolRewardAccountDeviceOwnedImplCopyWith(
          _$PoolRewardAccountDeviceOwnedImpl value,
          $Res Function(_$PoolRewardAccountDeviceOwnedImpl) then) =
      __$$PoolRewardAccountDeviceOwnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$PoolRewardAccountDeviceOwnedImplCopyWithImpl<$Res>
    extends _$PoolRewardAccountCopyWithImpl<$Res,
        _$PoolRewardAccountDeviceOwnedImpl>
    implements _$$PoolRewardAccountDeviceOwnedImplCopyWith<$Res> {
  __$$PoolRewardAccountDeviceOwnedImplCopyWithImpl(
      _$PoolRewardAccountDeviceOwnedImpl _value,
      $Res Function(_$PoolRewardAccountDeviceOwnedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$PoolRewardAccountDeviceOwnedImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PoolRewardAccountDeviceOwnedImpl extends PoolRewardAccountDeviceOwned {
  _$PoolRewardAccountDeviceOwnedImpl({required this.path}) : super._();

  @override
  final String path;

  @override
  String toString() {
    return 'PoolRewardAccount.deviceOwned(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolRewardAccountDeviceOwnedImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolRewardAccountDeviceOwnedImplCopyWith<
          _$PoolRewardAccountDeviceOwnedImpl>
      get copyWith => __$$PoolRewardAccountDeviceOwnedImplCopyWithImpl<
          _$PoolRewardAccountDeviceOwnedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rewardAccountHex) thirdParty,
    required TResult Function(String path) deviceOwned,
  }) {
    return deviceOwned(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rewardAccountHex)? thirdParty,
    TResult? Function(String path)? deviceOwned,
  }) {
    return deviceOwned?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rewardAccountHex)? thirdParty,
    TResult Function(String path)? deviceOwned,
    required TResult orElse(),
  }) {
    if (deviceOwned != null) {
      return deviceOwned(path);
    }
    return orElse();
  }
}

abstract class PoolRewardAccountDeviceOwned extends PoolRewardAccount {
  factory PoolRewardAccountDeviceOwned({required final String path}) =
      _$PoolRewardAccountDeviceOwnedImpl;
  PoolRewardAccountDeviceOwned._() : super._();

  String get path;
  @JsonKey(ignore: true)
  _$$PoolRewardAccountDeviceOwnedImplCopyWith<
          _$PoolRewardAccountDeviceOwnedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
