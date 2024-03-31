// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote_delegation_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoteDelegationParams {
  CredentialParams get stakeCredential => throw _privateConstructorUsedError;
  DRepParams get dRep => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, DRepParams dRep)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams stakeCredential, DRepParams dRep)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, DRepParams dRep)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoteDelegationParamsCopyWith<VoteDelegationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteDelegationParamsCopyWith<$Res> {
  factory $VoteDelegationParamsCopyWith(VoteDelegationParams value,
          $Res Function(VoteDelegationParams) then) =
      _$VoteDelegationParamsCopyWithImpl<$Res, VoteDelegationParams>;
  @useResult
  $Res call({CredentialParams stakeCredential, DRepParams dRep});

  $CredentialParamsCopyWith<$Res> get stakeCredential;
  $DRepParamsCopyWith<$Res> get dRep;
}

/// @nodoc
class _$VoteDelegationParamsCopyWithImpl<$Res,
        $Val extends VoteDelegationParams>
    implements $VoteDelegationParamsCopyWith<$Res> {
  _$VoteDelegationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
    Object? dRep = null,
  }) {
    return _then(_value.copyWith(
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      dRep: null == dRep
          ? _value.dRep
          : dRep // ignore: cast_nullable_to_non_nullable
              as DRepParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CredentialParamsCopyWith<$Res> get stakeCredential {
    return $CredentialParamsCopyWith<$Res>(_value.stakeCredential, (value) {
      return _then(_value.copyWith(stakeCredential: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DRepParamsCopyWith<$Res> get dRep {
    return $DRepParamsCopyWith<$Res>(_value.dRep, (value) {
      return _then(_value.copyWith(dRep: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VoteDelegationParamsImplCopyWith<$Res>
    implements $VoteDelegationParamsCopyWith<$Res> {
  factory _$$VoteDelegationParamsImplCopyWith(_$VoteDelegationParamsImpl value,
          $Res Function(_$VoteDelegationParamsImpl) then) =
      __$$VoteDelegationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CredentialParams stakeCredential, DRepParams dRep});

  @override
  $CredentialParamsCopyWith<$Res> get stakeCredential;
  @override
  $DRepParamsCopyWith<$Res> get dRep;
}

/// @nodoc
class __$$VoteDelegationParamsImplCopyWithImpl<$Res>
    extends _$VoteDelegationParamsCopyWithImpl<$Res, _$VoteDelegationParamsImpl>
    implements _$$VoteDelegationParamsImplCopyWith<$Res> {
  __$$VoteDelegationParamsImplCopyWithImpl(_$VoteDelegationParamsImpl _value,
      $Res Function(_$VoteDelegationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
    Object? dRep = null,
  }) {
    return _then(_$VoteDelegationParamsImpl(
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      dRep: null == dRep
          ? _value.dRep
          : dRep // ignore: cast_nullable_to_non_nullable
              as DRepParams,
    ));
  }
}

/// @nodoc

class _$VoteDelegationParamsImpl implements _VoteDelegationParams {
  const _$VoteDelegationParamsImpl(
      {required this.stakeCredential, required this.dRep});

  @override
  final CredentialParams stakeCredential;
  @override
  final DRepParams dRep;

  @override
  String toString() {
    return 'VoteDelegationParams(stakeCredential: $stakeCredential, dRep: $dRep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteDelegationParamsImpl &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.dRep, dRep) || other.dRep == dRep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, dRep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteDelegationParamsImplCopyWith<_$VoteDelegationParamsImpl>
      get copyWith =>
          __$$VoteDelegationParamsImplCopyWithImpl<_$VoteDelegationParamsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, DRepParams dRep)
        $default,
  ) {
    return $default(stakeCredential, dRep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams stakeCredential, DRepParams dRep)?
        $default,
  ) {
    return $default?.call(stakeCredential, dRep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams stakeCredential, DRepParams dRep)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(stakeCredential, dRep);
    }
    return orElse();
  }
}

abstract class _VoteDelegationParams implements VoteDelegationParams {
  const factory _VoteDelegationParams(
      {required final CredentialParams stakeCredential,
      required final DRepParams dRep}) = _$VoteDelegationParamsImpl;

  @override
  CredentialParams get stakeCredential;
  @override
  DRepParams get dRep;
  @override
  @JsonKey(ignore: true)
  _$$VoteDelegationParamsImplCopyWith<_$VoteDelegationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
