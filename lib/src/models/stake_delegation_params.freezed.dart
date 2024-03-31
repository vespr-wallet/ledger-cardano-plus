// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stake_delegation_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StakeDelegationParams {
  CredentialParams get stakeCredential => throw _privateConstructorUsedError;
  String get poolKeyHashHex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, String poolKeyHashHex)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams stakeCredential, String poolKeyHashHex)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, String poolKeyHashHex)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StakeDelegationParamsCopyWith<StakeDelegationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeDelegationParamsCopyWith<$Res> {
  factory $StakeDelegationParamsCopyWith(StakeDelegationParams value,
          $Res Function(StakeDelegationParams) then) =
      _$StakeDelegationParamsCopyWithImpl<$Res, StakeDelegationParams>;
  @useResult
  $Res call({CredentialParams stakeCredential, String poolKeyHashHex});

  $CredentialParamsCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$StakeDelegationParamsCopyWithImpl<$Res,
        $Val extends StakeDelegationParams>
    implements $StakeDelegationParamsCopyWith<$Res> {
  _$StakeDelegationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
    Object? poolKeyHashHex = null,
  }) {
    return _then(_value.copyWith(
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      poolKeyHashHex: null == poolKeyHashHex
          ? _value.poolKeyHashHex
          : poolKeyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CredentialParamsCopyWith<$Res> get stakeCredential {
    return $CredentialParamsCopyWith<$Res>(_value.stakeCredential, (value) {
      return _then(_value.copyWith(stakeCredential: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StakeDelegationParamsImplCopyWith<$Res>
    implements $StakeDelegationParamsCopyWith<$Res> {
  factory _$$StakeDelegationParamsImplCopyWith(
          _$StakeDelegationParamsImpl value,
          $Res Function(_$StakeDelegationParamsImpl) then) =
      __$$StakeDelegationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CredentialParams stakeCredential, String poolKeyHashHex});

  @override
  $CredentialParamsCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeDelegationParamsImplCopyWithImpl<$Res>
    extends _$StakeDelegationParamsCopyWithImpl<$Res,
        _$StakeDelegationParamsImpl>
    implements _$$StakeDelegationParamsImplCopyWith<$Res> {
  __$$StakeDelegationParamsImplCopyWithImpl(_$StakeDelegationParamsImpl _value,
      $Res Function(_$StakeDelegationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
    Object? poolKeyHashHex = null,
  }) {
    return _then(_$StakeDelegationParamsImpl(
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      poolKeyHashHex: null == poolKeyHashHex
          ? _value.poolKeyHashHex
          : poolKeyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StakeDelegationParamsImpl extends _StakeDelegationParams {
  const _$StakeDelegationParamsImpl(
      {required this.stakeCredential, required this.poolKeyHashHex})
      : super._();

  @override
  final CredentialParams stakeCredential;
  @override
  final String poolKeyHashHex;

  @override
  String toString() {
    return 'StakeDelegationParams(stakeCredential: $stakeCredential, poolKeyHashHex: $poolKeyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeDelegationParamsImpl &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.poolKeyHashHex, poolKeyHashHex) ||
                other.poolKeyHashHex == poolKeyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, poolKeyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeDelegationParamsImplCopyWith<_$StakeDelegationParamsImpl>
      get copyWith => __$$StakeDelegationParamsImplCopyWithImpl<
          _$StakeDelegationParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, String poolKeyHashHex)
        $default,
  ) {
    return $default(stakeCredential, poolKeyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams stakeCredential, String poolKeyHashHex)?
        $default,
  ) {
    return $default?.call(stakeCredential, poolKeyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, String poolKeyHashHex)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(stakeCredential, poolKeyHashHex);
    }
    return orElse();
  }
}

abstract class _StakeDelegationParams extends StakeDelegationParams {
  const factory _StakeDelegationParams(
      {required final CredentialParams stakeCredential,
      required final String poolKeyHashHex}) = _$StakeDelegationParamsImpl;
  const _StakeDelegationParams._() : super._();

  @override
  CredentialParams get stakeCredential;
  @override
  String get poolKeyHashHex;
  @override
  @JsonKey(ignore: true)
  _$$StakeDelegationParamsImplCopyWith<_$StakeDelegationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
