// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressParamsReward {}

/// @nodoc
abstract class $AddressParamsRewardCopyWith<$Res> {
  factory $AddressParamsRewardCopyWith(
          AddressParamsReward value, $Res Function(AddressParamsReward) then) =
      _$AddressParamsRewardCopyWithImpl<$Res, AddressParamsReward>;
}

/// @nodoc
class _$AddressParamsRewardCopyWithImpl<$Res, $Val extends AddressParamsReward>
    implements $AddressParamsRewardCopyWith<$Res> {
  _$AddressParamsRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddressParamsRewardStakingPathImplCopyWith<$Res> {
  factory _$$AddressParamsRewardStakingPathImplCopyWith(
          _$AddressParamsRewardStakingPathImpl value,
          $Res Function(_$AddressParamsRewardStakingPathImpl) then) =
      __$$AddressParamsRewardStakingPathImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LedgerSigningPath stakingPath});

  $LedgerSigningPathCopyWith<$Res> get stakingPath;
}

/// @nodoc
class __$$AddressParamsRewardStakingPathImplCopyWithImpl<$Res>
    extends _$AddressParamsRewardCopyWithImpl<$Res,
        _$AddressParamsRewardStakingPathImpl>
    implements _$$AddressParamsRewardStakingPathImplCopyWith<$Res> {
  __$$AddressParamsRewardStakingPathImplCopyWithImpl(
      _$AddressParamsRewardStakingPathImpl _value,
      $Res Function(_$AddressParamsRewardStakingPathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingPath = null,
  }) {
    return _then(_$AddressParamsRewardStakingPathImpl(
      stakingPath: null == stakingPath
          ? _value.stakingPath
          : stakingPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get stakingPath {
    return $LedgerSigningPathCopyWith<$Res>(_value.stakingPath, (value) {
      return _then(_value.copyWith(stakingPath: value));
    });
  }
}

/// @nodoc

class _$AddressParamsRewardStakingPathImpl
    extends AddressParamsRewardStakingPath {
  _$AddressParamsRewardStakingPathImpl({required this.stakingPath}) : super._();

  @override
  final LedgerSigningPath stakingPath;

  @override
  String toString() {
    return 'AddressParamsReward.stakingPath(stakingPath: $stakingPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressParamsRewardStakingPathImpl &&
            (identical(other.stakingPath, stakingPath) ||
                other.stakingPath == stakingPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakingPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressParamsRewardStakingPathImplCopyWith<
          _$AddressParamsRewardStakingPathImpl>
      get copyWith => __$$AddressParamsRewardStakingPathImplCopyWithImpl<
          _$AddressParamsRewardStakingPathImpl>(this, _$identity);
}

abstract class AddressParamsRewardStakingPath extends AddressParamsReward {
  factory AddressParamsRewardStakingPath(
          {required final LedgerSigningPath stakingPath}) =
      _$AddressParamsRewardStakingPathImpl;
  AddressParamsRewardStakingPath._() : super._();

  LedgerSigningPath get stakingPath;
  @JsonKey(ignore: true)
  _$$AddressParamsRewardStakingPathImplCopyWith<
          _$AddressParamsRewardStakingPathImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressParamsRewardStakingScriptHashHexImplCopyWith<$Res> {
  factory _$$AddressParamsRewardStakingScriptHashHexImplCopyWith(
          _$AddressParamsRewardStakingScriptHashHexImpl value,
          $Res Function(_$AddressParamsRewardStakingScriptHashHexImpl) then) =
      __$$AddressParamsRewardStakingScriptHashHexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stakingScriptHashHex});
}

/// @nodoc
class __$$AddressParamsRewardStakingScriptHashHexImplCopyWithImpl<$Res>
    extends _$AddressParamsRewardCopyWithImpl<$Res,
        _$AddressParamsRewardStakingScriptHashHexImpl>
    implements _$$AddressParamsRewardStakingScriptHashHexImplCopyWith<$Res> {
  __$$AddressParamsRewardStakingScriptHashHexImplCopyWithImpl(
      _$AddressParamsRewardStakingScriptHashHexImpl _value,
      $Res Function(_$AddressParamsRewardStakingScriptHashHexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingScriptHashHex = null,
  }) {
    return _then(_$AddressParamsRewardStakingScriptHashHexImpl(
      stakingScriptHashHex: null == stakingScriptHashHex
          ? _value.stakingScriptHashHex
          : stakingScriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressParamsRewardStakingScriptHashHexImpl
    extends AddressParamsRewardStakingScriptHashHex {
  _$AddressParamsRewardStakingScriptHashHexImpl(
      {required this.stakingScriptHashHex})
      : super._();

  @override
  final String stakingScriptHashHex;

  @override
  String toString() {
    return 'AddressParamsReward.stakingScriptHashHex(stakingScriptHashHex: $stakingScriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressParamsRewardStakingScriptHashHexImpl &&
            (identical(other.stakingScriptHashHex, stakingScriptHashHex) ||
                other.stakingScriptHashHex == stakingScriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakingScriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressParamsRewardStakingScriptHashHexImplCopyWith<
          _$AddressParamsRewardStakingScriptHashHexImpl>
      get copyWith =>
          __$$AddressParamsRewardStakingScriptHashHexImplCopyWithImpl<
              _$AddressParamsRewardStakingScriptHashHexImpl>(this, _$identity);
}

abstract class AddressParamsRewardStakingScriptHashHex
    extends AddressParamsReward {
  factory AddressParamsRewardStakingScriptHashHex(
          {required final String stakingScriptHashHex}) =
      _$AddressParamsRewardStakingScriptHashHexImpl;
  AddressParamsRewardStakingScriptHashHex._() : super._();

  String get stakingScriptHashHex;
  @JsonKey(ignore: true)
  _$$AddressParamsRewardStakingScriptHashHexImplCopyWith<
          _$AddressParamsRewardStakingScriptHashHexImpl>
      get copyWith => throw _privateConstructorUsedError;
}
