// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_reward_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedPoolRewardAccount {
  PoolRewardAccountType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PoolRewardAccountType type, List<int> path)
        deviceOwned,
    required TResult Function(
            PoolRewardAccountType type, String rewardAccountHex)
        thirdParty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PoolRewardAccountType type, List<int> path)? deviceOwned,
    TResult? Function(PoolRewardAccountType type, String rewardAccountHex)?
        thirdParty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PoolRewardAccountType type, List<int> path)? deviceOwned,
    TResult Function(PoolRewardAccountType type, String rewardAccountHex)?
        thirdParty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedPoolRewardAccountCopyWith<ParsedPoolRewardAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedPoolRewardAccountCopyWith<$Res> {
  factory $ParsedPoolRewardAccountCopyWith(ParsedPoolRewardAccount value,
          $Res Function(ParsedPoolRewardAccount) then) =
      _$ParsedPoolRewardAccountCopyWithImpl<$Res, ParsedPoolRewardAccount>;
  @useResult
  $Res call({PoolRewardAccountType type});
}

/// @nodoc
class _$ParsedPoolRewardAccountCopyWithImpl<$Res,
        $Val extends ParsedPoolRewardAccount>
    implements $ParsedPoolRewardAccountCopyWith<$Res> {
  _$ParsedPoolRewardAccountCopyWithImpl(this._value, this._then);

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
              as PoolRewardAccountType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceOwnedPoolRewardAccountImplCopyWith<$Res>
    implements $ParsedPoolRewardAccountCopyWith<$Res> {
  factory _$$DeviceOwnedPoolRewardAccountImplCopyWith(
          _$DeviceOwnedPoolRewardAccountImpl value,
          $Res Function(_$DeviceOwnedPoolRewardAccountImpl) then) =
      __$$DeviceOwnedPoolRewardAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PoolRewardAccountType type, List<int> path});
}

/// @nodoc
class __$$DeviceOwnedPoolRewardAccountImplCopyWithImpl<$Res>
    extends _$ParsedPoolRewardAccountCopyWithImpl<$Res,
        _$DeviceOwnedPoolRewardAccountImpl>
    implements _$$DeviceOwnedPoolRewardAccountImplCopyWith<$Res> {
  __$$DeviceOwnedPoolRewardAccountImplCopyWithImpl(
      _$DeviceOwnedPoolRewardAccountImpl _value,
      $Res Function(_$DeviceOwnedPoolRewardAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? path = null,
  }) {
    return _then(_$DeviceOwnedPoolRewardAccountImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PoolRewardAccountType,
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DeviceOwnedPoolRewardAccountImpl extends DeviceOwnedPoolRewardAccount {
  const _$DeviceOwnedPoolRewardAccountImpl(
      {required this.type, required final List<int> path})
      : _path = path,
        super._();

  @override
  final PoolRewardAccountType type;
  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'ParsedPoolRewardAccount.deviceOwned(type: $type, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceOwnedPoolRewardAccountImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceOwnedPoolRewardAccountImplCopyWith<
          _$DeviceOwnedPoolRewardAccountImpl>
      get copyWith => __$$DeviceOwnedPoolRewardAccountImplCopyWithImpl<
          _$DeviceOwnedPoolRewardAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PoolRewardAccountType type, List<int> path)
        deviceOwned,
    required TResult Function(
            PoolRewardAccountType type, String rewardAccountHex)
        thirdParty,
  }) {
    return deviceOwned(type, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PoolRewardAccountType type, List<int> path)? deviceOwned,
    TResult? Function(PoolRewardAccountType type, String rewardAccountHex)?
        thirdParty,
  }) {
    return deviceOwned?.call(type, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PoolRewardAccountType type, List<int> path)? deviceOwned,
    TResult Function(PoolRewardAccountType type, String rewardAccountHex)?
        thirdParty,
    required TResult orElse(),
  }) {
    if (deviceOwned != null) {
      return deviceOwned(type, path);
    }
    return orElse();
  }
}

abstract class DeviceOwnedPoolRewardAccount extends ParsedPoolRewardAccount {
  const factory DeviceOwnedPoolRewardAccount(
      {required final PoolRewardAccountType type,
      required final List<int> path}) = _$DeviceOwnedPoolRewardAccountImpl;
  const DeviceOwnedPoolRewardAccount._() : super._();

  @override
  PoolRewardAccountType get type;
  List<int> get path;
  @override
  @JsonKey(ignore: true)
  _$$DeviceOwnedPoolRewardAccountImplCopyWith<
          _$DeviceOwnedPoolRewardAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThirdPartyPoolRewardAccountImplCopyWith<$Res>
    implements $ParsedPoolRewardAccountCopyWith<$Res> {
  factory _$$ThirdPartyPoolRewardAccountImplCopyWith(
          _$ThirdPartyPoolRewardAccountImpl value,
          $Res Function(_$ThirdPartyPoolRewardAccountImpl) then) =
      __$$ThirdPartyPoolRewardAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PoolRewardAccountType type, String rewardAccountHex});
}

/// @nodoc
class __$$ThirdPartyPoolRewardAccountImplCopyWithImpl<$Res>
    extends _$ParsedPoolRewardAccountCopyWithImpl<$Res,
        _$ThirdPartyPoolRewardAccountImpl>
    implements _$$ThirdPartyPoolRewardAccountImplCopyWith<$Res> {
  __$$ThirdPartyPoolRewardAccountImplCopyWithImpl(
      _$ThirdPartyPoolRewardAccountImpl _value,
      $Res Function(_$ThirdPartyPoolRewardAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? rewardAccountHex = null,
  }) {
    return _then(_$ThirdPartyPoolRewardAccountImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PoolRewardAccountType,
      rewardAccountHex: null == rewardAccountHex
          ? _value.rewardAccountHex
          : rewardAccountHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThirdPartyPoolRewardAccountImpl extends ThirdPartyPoolRewardAccount {
  const _$ThirdPartyPoolRewardAccountImpl(
      {required this.type, required this.rewardAccountHex})
      : super._();

  @override
  final PoolRewardAccountType type;
  @override
  final String rewardAccountHex;

  @override
  String toString() {
    return 'ParsedPoolRewardAccount.thirdParty(type: $type, rewardAccountHex: $rewardAccountHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThirdPartyPoolRewardAccountImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rewardAccountHex, rewardAccountHex) ||
                other.rewardAccountHex == rewardAccountHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, rewardAccountHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThirdPartyPoolRewardAccountImplCopyWith<_$ThirdPartyPoolRewardAccountImpl>
      get copyWith => __$$ThirdPartyPoolRewardAccountImplCopyWithImpl<
          _$ThirdPartyPoolRewardAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PoolRewardAccountType type, List<int> path)
        deviceOwned,
    required TResult Function(
            PoolRewardAccountType type, String rewardAccountHex)
        thirdParty,
  }) {
    return thirdParty(type, rewardAccountHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PoolRewardAccountType type, List<int> path)? deviceOwned,
    TResult? Function(PoolRewardAccountType type, String rewardAccountHex)?
        thirdParty,
  }) {
    return thirdParty?.call(type, rewardAccountHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PoolRewardAccountType type, List<int> path)? deviceOwned,
    TResult Function(PoolRewardAccountType type, String rewardAccountHex)?
        thirdParty,
    required TResult orElse(),
  }) {
    if (thirdParty != null) {
      return thirdParty(type, rewardAccountHex);
    }
    return orElse();
  }
}

abstract class ThirdPartyPoolRewardAccount extends ParsedPoolRewardAccount {
  const factory ThirdPartyPoolRewardAccount(
          {required final PoolRewardAccountType type,
          required final String rewardAccountHex}) =
      _$ThirdPartyPoolRewardAccountImpl;
  const ThirdPartyPoolRewardAccount._() : super._();

  @override
  PoolRewardAccountType get type;
  String get rewardAccountHex;
  @override
  @JsonKey(ignore: true)
  _$$ThirdPartyPoolRewardAccountImplCopyWith<_$ThirdPartyPoolRewardAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}
