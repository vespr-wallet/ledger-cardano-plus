// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stake_registration_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StakeRegistrationParams {
  CredentialParams get stakeCredential => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams stakeCredential)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StakeRegistrationParamsCopyWith<StakeRegistrationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeRegistrationParamsCopyWith<$Res> {
  factory $StakeRegistrationParamsCopyWith(StakeRegistrationParams value,
          $Res Function(StakeRegistrationParams) then) =
      _$StakeRegistrationParamsCopyWithImpl<$Res, StakeRegistrationParams>;
  @useResult
  $Res call({CredentialParams stakeCredential});

  $CredentialParamsCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$StakeRegistrationParamsCopyWithImpl<$Res,
        $Val extends StakeRegistrationParams>
    implements $StakeRegistrationParamsCopyWith<$Res> {
  _$StakeRegistrationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
  }) {
    return _then(_value.copyWith(
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
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
abstract class _$$StakeRegistrationParamsImplCopyWith<$Res>
    implements $StakeRegistrationParamsCopyWith<$Res> {
  factory _$$StakeRegistrationParamsImplCopyWith(
          _$StakeRegistrationParamsImpl value,
          $Res Function(_$StakeRegistrationParamsImpl) then) =
      __$$StakeRegistrationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CredentialParams stakeCredential});

  @override
  $CredentialParamsCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeRegistrationParamsImplCopyWithImpl<$Res>
    extends _$StakeRegistrationParamsCopyWithImpl<$Res,
        _$StakeRegistrationParamsImpl>
    implements _$$StakeRegistrationParamsImplCopyWith<$Res> {
  __$$StakeRegistrationParamsImplCopyWithImpl(
      _$StakeRegistrationParamsImpl _value,
      $Res Function(_$StakeRegistrationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
  }) {
    return _then(_$StakeRegistrationParamsImpl(
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
    ));
  }
}

/// @nodoc

class _$StakeRegistrationParamsImpl extends _StakeRegistrationParams {
  _$StakeRegistrationParamsImpl({required this.stakeCredential}) : super._();

  @override
  final CredentialParams stakeCredential;

  @override
  String toString() {
    return 'StakeRegistrationParams(stakeCredential: $stakeCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeRegistrationParamsImpl &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeRegistrationParamsImplCopyWith<_$StakeRegistrationParamsImpl>
      get copyWith => __$$StakeRegistrationParamsImplCopyWithImpl<
          _$StakeRegistrationParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential) $default,
  ) {
    return $default(stakeCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams stakeCredential)? $default,
  ) {
    return $default?.call(stakeCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(stakeCredential);
    }
    return orElse();
  }
}

abstract class _StakeRegistrationParams extends StakeRegistrationParams {
  factory _StakeRegistrationParams(
          {required final CredentialParams stakeCredential}) =
      _$StakeRegistrationParamsImpl;
  _StakeRegistrationParams._() : super._();

  @override
  CredentialParams get stakeCredential;
  @override
  @JsonKey(ignore: true)
  _$$StakeRegistrationParamsImplCopyWith<_$StakeRegistrationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
