// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stake_registration_conway_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StakeRegistrationConwayParams {
  CredentialParams get stakeCredential => throw _privateConstructorUsedError;
  BigInt get deposit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, BigInt deposit) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams stakeCredential, BigInt deposit)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, BigInt deposit)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StakeRegistrationConwayParamsCopyWith<StakeRegistrationConwayParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeRegistrationConwayParamsCopyWith<$Res> {
  factory $StakeRegistrationConwayParamsCopyWith(
          StakeRegistrationConwayParams value,
          $Res Function(StakeRegistrationConwayParams) then) =
      _$StakeRegistrationConwayParamsCopyWithImpl<$Res,
          StakeRegistrationConwayParams>;
  @useResult
  $Res call({CredentialParams stakeCredential, BigInt deposit});

  $CredentialParamsCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$StakeRegistrationConwayParamsCopyWithImpl<$Res,
        $Val extends StakeRegistrationConwayParams>
    implements $StakeRegistrationConwayParamsCopyWith<$Res> {
  _$StakeRegistrationConwayParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
    Object? deposit = null,
  }) {
    return _then(_value.copyWith(
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
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
abstract class _$$StakeRegistrationConwayParamsImplCopyWith<$Res>
    implements $StakeRegistrationConwayParamsCopyWith<$Res> {
  factory _$$StakeRegistrationConwayParamsImplCopyWith(
          _$StakeRegistrationConwayParamsImpl value,
          $Res Function(_$StakeRegistrationConwayParamsImpl) then) =
      __$$StakeRegistrationConwayParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CredentialParams stakeCredential, BigInt deposit});

  @override
  $CredentialParamsCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeRegistrationConwayParamsImplCopyWithImpl<$Res>
    extends _$StakeRegistrationConwayParamsCopyWithImpl<$Res,
        _$StakeRegistrationConwayParamsImpl>
    implements _$$StakeRegistrationConwayParamsImplCopyWith<$Res> {
  __$$StakeRegistrationConwayParamsImplCopyWithImpl(
      _$StakeRegistrationConwayParamsImpl _value,
      $Res Function(_$StakeRegistrationConwayParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
    Object? deposit = null,
  }) {
    return _then(_$StakeRegistrationConwayParamsImpl(
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$StakeRegistrationConwayParamsImpl
    extends _StakeRegistrationConwayParams {
  const _$StakeRegistrationConwayParamsImpl(
      {required this.stakeCredential, required this.deposit})
      : super._();

  @override
  final CredentialParams stakeCredential;
  @override
  final BigInt deposit;

  @override
  String toString() {
    return 'StakeRegistrationConwayParams(stakeCredential: $stakeCredential, deposit: $deposit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeRegistrationConwayParamsImpl &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, deposit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeRegistrationConwayParamsImplCopyWith<
          _$StakeRegistrationConwayParamsImpl>
      get copyWith => __$$StakeRegistrationConwayParamsImplCopyWithImpl<
          _$StakeRegistrationConwayParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, BigInt deposit) $default,
  ) {
    return $default(stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams stakeCredential, BigInt deposit)?
        $default,
  ) {
    return $default?.call(stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, BigInt deposit)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(stakeCredential, deposit);
    }
    return orElse();
  }
}

abstract class _StakeRegistrationConwayParams
    extends StakeRegistrationConwayParams {
  const factory _StakeRegistrationConwayParams(
      {required final CredentialParams stakeCredential,
      required final BigInt deposit}) = _$StakeRegistrationConwayParamsImpl;
  const _StakeRegistrationConwayParams._() : super._();

  @override
  CredentialParams get stakeCredential;
  @override
  BigInt get deposit;
  @override
  @JsonKey(ignore: true)
  _$$StakeRegistrationConwayParamsImplCopyWith<
          _$StakeRegistrationConwayParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
