// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Certificate {
  Object get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateCopyWith<$Res> {
  factory $CertificateCopyWith(
          Certificate value, $Res Function(Certificate) then) =
      _$CertificateCopyWithImpl<$Res, Certificate>;
}

/// @nodoc
class _$CertificateCopyWithImpl<$Res, $Val extends Certificate>
    implements $CertificateCopyWith<$Res> {
  _$CertificateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StakeRegistrationImplCopyWith<$Res> {
  factory _$$StakeRegistrationImplCopyWith(_$StakeRegistrationImpl value,
          $Res Function(_$StakeRegistrationImpl) then) =
      __$$StakeRegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StakeRegistrationParams params});

  $StakeRegistrationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$StakeRegistrationImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$StakeRegistrationImpl>
    implements _$$StakeRegistrationImplCopyWith<$Res> {
  __$$StakeRegistrationImplCopyWithImpl(_$StakeRegistrationImpl _value,
      $Res Function(_$StakeRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$StakeRegistrationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StakeRegistrationParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StakeRegistrationParamsCopyWith<$Res> get params {
    return $StakeRegistrationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$StakeRegistrationImpl extends StakeRegistration {
  _$StakeRegistrationImpl({required this.params}) : super._();

  @override
  final StakeRegistrationParams params;

  @override
  String toString() {
    return 'Certificate.stakeRegistration(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeRegistrationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeRegistrationImplCopyWith<_$StakeRegistrationImpl> get copyWith =>
      __$$StakeRegistrationImplCopyWithImpl<_$StakeRegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return stakeRegistration(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return stakeRegistration?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeRegistration != null) {
      return stakeRegistration(params);
    }
    return orElse();
  }
}

abstract class StakeRegistration extends Certificate {
  factory StakeRegistration({required final StakeRegistrationParams params}) =
      _$StakeRegistrationImpl;
  StakeRegistration._() : super._();

  @override
  StakeRegistrationParams get params;
  @JsonKey(ignore: true)
  _$$StakeRegistrationImplCopyWith<_$StakeRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeDeregistrationImplCopyWith<$Res> {
  factory _$$StakeDeregistrationImplCopyWith(_$StakeDeregistrationImpl value,
          $Res Function(_$StakeDeregistrationImpl) then) =
      __$$StakeDeregistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StakeDeregistrationParams params});

  $StakeDeregistrationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$StakeDeregistrationImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$StakeDeregistrationImpl>
    implements _$$StakeDeregistrationImplCopyWith<$Res> {
  __$$StakeDeregistrationImplCopyWithImpl(_$StakeDeregistrationImpl _value,
      $Res Function(_$StakeDeregistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$StakeDeregistrationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StakeDeregistrationParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StakeDeregistrationParamsCopyWith<$Res> get params {
    return $StakeDeregistrationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$StakeDeregistrationImpl extends StakeDeregistration {
  _$StakeDeregistrationImpl({required this.params}) : super._();

  @override
  final StakeDeregistrationParams params;

  @override
  String toString() {
    return 'Certificate.stakeDeregistration(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeDeregistrationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeDeregistrationImplCopyWith<_$StakeDeregistrationImpl> get copyWith =>
      __$$StakeDeregistrationImplCopyWithImpl<_$StakeDeregistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return stakeDeregistration(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return stakeDeregistration?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeDeregistration != null) {
      return stakeDeregistration(params);
    }
    return orElse();
  }
}

abstract class StakeDeregistration extends Certificate {
  factory StakeDeregistration(
          {required final StakeDeregistrationParams params}) =
      _$StakeDeregistrationImpl;
  StakeDeregistration._() : super._();

  @override
  StakeDeregistrationParams get params;
  @JsonKey(ignore: true)
  _$$StakeDeregistrationImplCopyWith<_$StakeDeregistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeRegistrationConwayImplCopyWith<$Res> {
  factory _$$StakeRegistrationConwayImplCopyWith(
          _$StakeRegistrationConwayImpl value,
          $Res Function(_$StakeRegistrationConwayImpl) then) =
      __$$StakeRegistrationConwayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StakeRegistrationConwayParams params});

  $StakeRegistrationConwayParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$StakeRegistrationConwayImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$StakeRegistrationConwayImpl>
    implements _$$StakeRegistrationConwayImplCopyWith<$Res> {
  __$$StakeRegistrationConwayImplCopyWithImpl(
      _$StakeRegistrationConwayImpl _value,
      $Res Function(_$StakeRegistrationConwayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$StakeRegistrationConwayImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StakeRegistrationConwayParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StakeRegistrationConwayParamsCopyWith<$Res> get params {
    return $StakeRegistrationConwayParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$StakeRegistrationConwayImpl extends StakeRegistrationConway {
  _$StakeRegistrationConwayImpl({required this.params}) : super._();

  @override
  final StakeRegistrationConwayParams params;

  @override
  String toString() {
    return 'Certificate.stakeRegistrationConway(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeRegistrationConwayImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeRegistrationConwayImplCopyWith<_$StakeRegistrationConwayImpl>
      get copyWith => __$$StakeRegistrationConwayImplCopyWithImpl<
          _$StakeRegistrationConwayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return stakeRegistrationConway(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return stakeRegistrationConway?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeRegistrationConway != null) {
      return stakeRegistrationConway(params);
    }
    return orElse();
  }
}

abstract class StakeRegistrationConway extends Certificate {
  factory StakeRegistrationConway(
          {required final StakeRegistrationConwayParams params}) =
      _$StakeRegistrationConwayImpl;
  StakeRegistrationConway._() : super._();

  @override
  StakeRegistrationConwayParams get params;
  @JsonKey(ignore: true)
  _$$StakeRegistrationConwayImplCopyWith<_$StakeRegistrationConwayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeDeregistrationConwayImplCopyWith<$Res> {
  factory _$$StakeDeregistrationConwayImplCopyWith(
          _$StakeDeregistrationConwayImpl value,
          $Res Function(_$StakeDeregistrationConwayImpl) then) =
      __$$StakeDeregistrationConwayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StakeDeregistrationConwayParams params});

  $StakeDeregistrationConwayParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$StakeDeregistrationConwayImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$StakeDeregistrationConwayImpl>
    implements _$$StakeDeregistrationConwayImplCopyWith<$Res> {
  __$$StakeDeregistrationConwayImplCopyWithImpl(
      _$StakeDeregistrationConwayImpl _value,
      $Res Function(_$StakeDeregistrationConwayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$StakeDeregistrationConwayImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StakeDeregistrationConwayParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StakeDeregistrationConwayParamsCopyWith<$Res> get params {
    return $StakeDeregistrationConwayParamsCopyWith<$Res>(_value.params,
        (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$StakeDeregistrationConwayImpl extends StakeDeregistrationConway {
  _$StakeDeregistrationConwayImpl({required this.params}) : super._();

  @override
  final StakeDeregistrationConwayParams params;

  @override
  String toString() {
    return 'Certificate.stakeDeregistrationConway(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeDeregistrationConwayImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeDeregistrationConwayImplCopyWith<_$StakeDeregistrationConwayImpl>
      get copyWith => __$$StakeDeregistrationConwayImplCopyWithImpl<
          _$StakeDeregistrationConwayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return stakeDeregistrationConway(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return stakeDeregistrationConway?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeDeregistrationConway != null) {
      return stakeDeregistrationConway(params);
    }
    return orElse();
  }
}

abstract class StakeDeregistrationConway extends Certificate {
  factory StakeDeregistrationConway(
          {required final StakeDeregistrationConwayParams params}) =
      _$StakeDeregistrationConwayImpl;
  StakeDeregistrationConway._() : super._();

  @override
  StakeDeregistrationConwayParams get params;
  @JsonKey(ignore: true)
  _$$StakeDeregistrationConwayImplCopyWith<_$StakeDeregistrationConwayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeDelegationImplCopyWith<$Res> {
  factory _$$StakeDelegationImplCopyWith(_$StakeDelegationImpl value,
          $Res Function(_$StakeDelegationImpl) then) =
      __$$StakeDelegationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StakeDelegationParams params});

  $StakeDelegationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$StakeDelegationImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$StakeDelegationImpl>
    implements _$$StakeDelegationImplCopyWith<$Res> {
  __$$StakeDelegationImplCopyWithImpl(
      _$StakeDelegationImpl _value, $Res Function(_$StakeDelegationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$StakeDelegationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as StakeDelegationParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StakeDelegationParamsCopyWith<$Res> get params {
    return $StakeDelegationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$StakeDelegationImpl extends StakeDelegation {
  _$StakeDelegationImpl({required this.params}) : super._();

  @override
  final StakeDelegationParams params;

  @override
  String toString() {
    return 'Certificate.stakeDelegation(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeDelegationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeDelegationImplCopyWith<_$StakeDelegationImpl> get copyWith =>
      __$$StakeDelegationImplCopyWithImpl<_$StakeDelegationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return stakeDelegation(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return stakeDelegation?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeDelegation != null) {
      return stakeDelegation(params);
    }
    return orElse();
  }
}

abstract class StakeDelegation extends Certificate {
  factory StakeDelegation({required final StakeDelegationParams params}) =
      _$StakeDelegationImpl;
  StakeDelegation._() : super._();

  @override
  StakeDelegationParams get params;
  @JsonKey(ignore: true)
  _$$StakeDelegationImplCopyWith<_$StakeDelegationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteDelegationImplCopyWith<$Res> {
  factory _$$VoteDelegationImplCopyWith(_$VoteDelegationImpl value,
          $Res Function(_$VoteDelegationImpl) then) =
      __$$VoteDelegationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoteDelegationParams params});

  $VoteDelegationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$VoteDelegationImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$VoteDelegationImpl>
    implements _$$VoteDelegationImplCopyWith<$Res> {
  __$$VoteDelegationImplCopyWithImpl(
      _$VoteDelegationImpl _value, $Res Function(_$VoteDelegationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$VoteDelegationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as VoteDelegationParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VoteDelegationParamsCopyWith<$Res> get params {
    return $VoteDelegationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$VoteDelegationImpl extends VoteDelegation {
  _$VoteDelegationImpl({required this.params}) : super._();

  @override
  final VoteDelegationParams params;

  @override
  String toString() {
    return 'Certificate.voteDelegation(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteDelegationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteDelegationImplCopyWith<_$VoteDelegationImpl> get copyWith =>
      __$$VoteDelegationImplCopyWithImpl<_$VoteDelegationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return voteDelegation(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return voteDelegation?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (voteDelegation != null) {
      return voteDelegation(params);
    }
    return orElse();
  }
}

abstract class VoteDelegation extends Certificate {
  factory VoteDelegation({required final VoteDelegationParams params}) =
      _$VoteDelegationImpl;
  VoteDelegation._() : super._();

  @override
  VoteDelegationParams get params;
  @JsonKey(ignore: true)
  _$$VoteDelegationImplCopyWith<_$VoteDelegationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorizeCommitteeHotImplCopyWith<$Res> {
  factory _$$AuthorizeCommitteeHotImplCopyWith(
          _$AuthorizeCommitteeHotImpl value,
          $Res Function(_$AuthorizeCommitteeHotImpl) then) =
      __$$AuthorizeCommitteeHotImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthorizeCommitteeParams params});

  $AuthorizeCommitteeParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$AuthorizeCommitteeHotImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$AuthorizeCommitteeHotImpl>
    implements _$$AuthorizeCommitteeHotImplCopyWith<$Res> {
  __$$AuthorizeCommitteeHotImplCopyWithImpl(_$AuthorizeCommitteeHotImpl _value,
      $Res Function(_$AuthorizeCommitteeHotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$AuthorizeCommitteeHotImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AuthorizeCommitteeParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorizeCommitteeParamsCopyWith<$Res> get params {
    return $AuthorizeCommitteeParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$AuthorizeCommitteeHotImpl extends AuthorizeCommitteeHot {
  _$AuthorizeCommitteeHotImpl({required this.params}) : super._();

  @override
  final AuthorizeCommitteeParams params;

  @override
  String toString() {
    return 'Certificate.authorizeCommitteeHot(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizeCommitteeHotImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizeCommitteeHotImplCopyWith<_$AuthorizeCommitteeHotImpl>
      get copyWith => __$$AuthorizeCommitteeHotImplCopyWithImpl<
          _$AuthorizeCommitteeHotImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return authorizeCommitteeHot(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return authorizeCommitteeHot?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (authorizeCommitteeHot != null) {
      return authorizeCommitteeHot(params);
    }
    return orElse();
  }
}

abstract class AuthorizeCommitteeHot extends Certificate {
  factory AuthorizeCommitteeHot(
          {required final AuthorizeCommitteeParams params}) =
      _$AuthorizeCommitteeHotImpl;
  AuthorizeCommitteeHot._() : super._();

  @override
  AuthorizeCommitteeParams get params;
  @JsonKey(ignore: true)
  _$$AuthorizeCommitteeHotImplCopyWith<_$AuthorizeCommitteeHotImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResignCommitteeColdImplCopyWith<$Res> {
  factory _$$ResignCommitteeColdImplCopyWith(_$ResignCommitteeColdImpl value,
          $Res Function(_$ResignCommitteeColdImpl) then) =
      __$$ResignCommitteeColdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResignCommitteeParams params});

  $ResignCommitteeParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$ResignCommitteeColdImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$ResignCommitteeColdImpl>
    implements _$$ResignCommitteeColdImplCopyWith<$Res> {
  __$$ResignCommitteeColdImplCopyWithImpl(_$ResignCommitteeColdImpl _value,
      $Res Function(_$ResignCommitteeColdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ResignCommitteeColdImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ResignCommitteeParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResignCommitteeParamsCopyWith<$Res> get params {
    return $ResignCommitteeParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$ResignCommitteeColdImpl extends ResignCommitteeCold {
  _$ResignCommitteeColdImpl({required this.params}) : super._();

  @override
  final ResignCommitteeParams params;

  @override
  String toString() {
    return 'Certificate.resignCommitteeCold(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResignCommitteeColdImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResignCommitteeColdImplCopyWith<_$ResignCommitteeColdImpl> get copyWith =>
      __$$ResignCommitteeColdImplCopyWithImpl<_$ResignCommitteeColdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return resignCommitteeCold(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return resignCommitteeCold?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (resignCommitteeCold != null) {
      return resignCommitteeCold(params);
    }
    return orElse();
  }
}

abstract class ResignCommitteeCold extends Certificate {
  factory ResignCommitteeCold({required final ResignCommitteeParams params}) =
      _$ResignCommitteeColdImpl;
  ResignCommitteeCold._() : super._();

  @override
  ResignCommitteeParams get params;
  @JsonKey(ignore: true)
  _$$ResignCommitteeColdImplCopyWith<_$ResignCommitteeColdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepRegistrationImplCopyWith<$Res> {
  factory _$$DRepRegistrationImplCopyWith(_$DRepRegistrationImpl value,
          $Res Function(_$DRepRegistrationImpl) then) =
      __$$DRepRegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DRepRegistrationParams params});

  $DRepRegistrationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$DRepRegistrationImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$DRepRegistrationImpl>
    implements _$$DRepRegistrationImplCopyWith<$Res> {
  __$$DRepRegistrationImplCopyWithImpl(_$DRepRegistrationImpl _value,
      $Res Function(_$DRepRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$DRepRegistrationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DRepRegistrationParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DRepRegistrationParamsCopyWith<$Res> get params {
    return $DRepRegistrationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$DRepRegistrationImpl extends DRepRegistration {
  _$DRepRegistrationImpl({required this.params}) : super._();

  @override
  final DRepRegistrationParams params;

  @override
  String toString() {
    return 'Certificate.dRepRegistration(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepRegistrationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepRegistrationImplCopyWith<_$DRepRegistrationImpl> get copyWith =>
      __$$DRepRegistrationImplCopyWithImpl<_$DRepRegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return dRepRegistration(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return dRepRegistration?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (dRepRegistration != null) {
      return dRepRegistration(params);
    }
    return orElse();
  }
}

abstract class DRepRegistration extends Certificate {
  factory DRepRegistration({required final DRepRegistrationParams params}) =
      _$DRepRegistrationImpl;
  DRepRegistration._() : super._();

  @override
  DRepRegistrationParams get params;
  @JsonKey(ignore: true)
  _$$DRepRegistrationImplCopyWith<_$DRepRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepDeregistrationImplCopyWith<$Res> {
  factory _$$DRepDeregistrationImplCopyWith(_$DRepDeregistrationImpl value,
          $Res Function(_$DRepDeregistrationImpl) then) =
      __$$DRepDeregistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DRepDeregistrationParams params});

  $DRepDeregistrationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$DRepDeregistrationImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$DRepDeregistrationImpl>
    implements _$$DRepDeregistrationImplCopyWith<$Res> {
  __$$DRepDeregistrationImplCopyWithImpl(_$DRepDeregistrationImpl _value,
      $Res Function(_$DRepDeregistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$DRepDeregistrationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DRepDeregistrationParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DRepDeregistrationParamsCopyWith<$Res> get params {
    return $DRepDeregistrationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$DRepDeregistrationImpl extends DRepDeregistration {
  _$DRepDeregistrationImpl({required this.params}) : super._();

  @override
  final DRepDeregistrationParams params;

  @override
  String toString() {
    return 'Certificate.dRepDeregistration(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepDeregistrationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepDeregistrationImplCopyWith<_$DRepDeregistrationImpl> get copyWith =>
      __$$DRepDeregistrationImplCopyWithImpl<_$DRepDeregistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return dRepDeregistration(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return dRepDeregistration?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (dRepDeregistration != null) {
      return dRepDeregistration(params);
    }
    return orElse();
  }
}

abstract class DRepDeregistration extends Certificate {
  factory DRepDeregistration({required final DRepDeregistrationParams params}) =
      _$DRepDeregistrationImpl;
  DRepDeregistration._() : super._();

  @override
  DRepDeregistrationParams get params;
  @JsonKey(ignore: true)
  _$$DRepDeregistrationImplCopyWith<_$DRepDeregistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepUpdateImplCopyWith<$Res> {
  factory _$$DRepUpdateImplCopyWith(
          _$DRepUpdateImpl value, $Res Function(_$DRepUpdateImpl) then) =
      __$$DRepUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DRepUpdateParams params});

  $DRepUpdateParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$DRepUpdateImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$DRepUpdateImpl>
    implements _$$DRepUpdateImplCopyWith<$Res> {
  __$$DRepUpdateImplCopyWithImpl(
      _$DRepUpdateImpl _value, $Res Function(_$DRepUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$DRepUpdateImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DRepUpdateParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DRepUpdateParamsCopyWith<$Res> get params {
    return $DRepUpdateParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$DRepUpdateImpl extends DRepUpdate {
  _$DRepUpdateImpl({required this.params}) : super._();

  @override
  final DRepUpdateParams params;

  @override
  String toString() {
    return 'Certificate.dRepUpdate(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepUpdateImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepUpdateImplCopyWith<_$DRepUpdateImpl> get copyWith =>
      __$$DRepUpdateImplCopyWithImpl<_$DRepUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return dRepUpdate(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return dRepUpdate?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (dRepUpdate != null) {
      return dRepUpdate(params);
    }
    return orElse();
  }
}

abstract class DRepUpdate extends Certificate {
  factory DRepUpdate({required final DRepUpdateParams params}) =
      _$DRepUpdateImpl;
  DRepUpdate._() : super._();

  @override
  DRepUpdateParams get params;
  @JsonKey(ignore: true)
  _$$DRepUpdateImplCopyWith<_$DRepUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakePoolRegistrationImplCopyWith<$Res> {
  factory _$$StakePoolRegistrationImplCopyWith(
          _$StakePoolRegistrationImpl value,
          $Res Function(_$StakePoolRegistrationImpl) then) =
      __$$StakePoolRegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PoolRegistrationParams params});

  $PoolRegistrationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$StakePoolRegistrationImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$StakePoolRegistrationImpl>
    implements _$$StakePoolRegistrationImplCopyWith<$Res> {
  __$$StakePoolRegistrationImplCopyWithImpl(_$StakePoolRegistrationImpl _value,
      $Res Function(_$StakePoolRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$StakePoolRegistrationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PoolRegistrationParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PoolRegistrationParamsCopyWith<$Res> get params {
    return $PoolRegistrationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$StakePoolRegistrationImpl extends StakePoolRegistration {
  _$StakePoolRegistrationImpl({required this.params}) : super._();

  @override
  final PoolRegistrationParams params;

  @override
  String toString() {
    return 'Certificate.stakePoolRegistration(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakePoolRegistrationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakePoolRegistrationImplCopyWith<_$StakePoolRegistrationImpl>
      get copyWith => __$$StakePoolRegistrationImplCopyWithImpl<
          _$StakePoolRegistrationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return stakePoolRegistration(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return stakePoolRegistration?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakePoolRegistration != null) {
      return stakePoolRegistration(params);
    }
    return orElse();
  }
}

abstract class StakePoolRegistration extends Certificate {
  factory StakePoolRegistration(
          {required final PoolRegistrationParams params}) =
      _$StakePoolRegistrationImpl;
  StakePoolRegistration._() : super._();

  @override
  PoolRegistrationParams get params;
  @JsonKey(ignore: true)
  _$$StakePoolRegistrationImplCopyWith<_$StakePoolRegistrationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakePoolRetirementImplCopyWith<$Res> {
  factory _$$StakePoolRetirementImplCopyWith(_$StakePoolRetirementImpl value,
          $Res Function(_$StakePoolRetirementImpl) then) =
      __$$StakePoolRetirementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PoolRetirementParams params});

  $PoolRetirementParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$StakePoolRetirementImplCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$StakePoolRetirementImpl>
    implements _$$StakePoolRetirementImplCopyWith<$Res> {
  __$$StakePoolRetirementImplCopyWithImpl(_$StakePoolRetirementImpl _value,
      $Res Function(_$StakePoolRetirementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$StakePoolRetirementImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PoolRetirementParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PoolRetirementParamsCopyWith<$Res> get params {
    return $PoolRetirementParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$StakePoolRetirementImpl extends StakePoolRetirement {
  _$StakePoolRetirementImpl({required this.params}) : super._();

  @override
  final PoolRetirementParams params;

  @override
  String toString() {
    return 'Certificate.stakePoolRetirement(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakePoolRetirementImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakePoolRetirementImplCopyWith<_$StakePoolRetirementImpl> get copyWith =>
      __$$StakePoolRetirementImplCopyWithImpl<_$StakePoolRetirementImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeRegistrationParams params) stakeRegistration,
    required TResult Function(StakeDeregistrationParams params)
        stakeDeregistration,
    required TResult Function(StakeRegistrationConwayParams params)
        stakeRegistrationConway,
    required TResult Function(StakeDeregistrationConwayParams params)
        stakeDeregistrationConway,
    required TResult Function(StakeDelegationParams params) stakeDelegation,
    required TResult Function(VoteDelegationParams params) voteDelegation,
    required TResult Function(AuthorizeCommitteeParams params)
        authorizeCommitteeHot,
    required TResult Function(ResignCommitteeParams params) resignCommitteeCold,
    required TResult Function(DRepRegistrationParams params) dRepRegistration,
    required TResult Function(DRepDeregistrationParams params)
        dRepDeregistration,
    required TResult Function(DRepUpdateParams params) dRepUpdate,
    required TResult Function(PoolRegistrationParams params)
        stakePoolRegistration,
    required TResult Function(PoolRetirementParams params) stakePoolRetirement,
  }) {
    return stakePoolRetirement(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeRegistrationParams params)? stakeRegistration,
    TResult? Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult? Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult? Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult? Function(StakeDelegationParams params)? stakeDelegation,
    TResult? Function(VoteDelegationParams params)? voteDelegation,
    TResult? Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult? Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult? Function(DRepRegistrationParams params)? dRepRegistration,
    TResult? Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult? Function(DRepUpdateParams params)? dRepUpdate,
    TResult? Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult? Function(PoolRetirementParams params)? stakePoolRetirement,
  }) {
    return stakePoolRetirement?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeRegistrationParams params)? stakeRegistration,
    TResult Function(StakeDeregistrationParams params)? stakeDeregistration,
    TResult Function(StakeRegistrationConwayParams params)?
        stakeRegistrationConway,
    TResult Function(StakeDeregistrationConwayParams params)?
        stakeDeregistrationConway,
    TResult Function(StakeDelegationParams params)? stakeDelegation,
    TResult Function(VoteDelegationParams params)? voteDelegation,
    TResult Function(AuthorizeCommitteeParams params)? authorizeCommitteeHot,
    TResult Function(ResignCommitteeParams params)? resignCommitteeCold,
    TResult Function(DRepRegistrationParams params)? dRepRegistration,
    TResult Function(DRepDeregistrationParams params)? dRepDeregistration,
    TResult Function(DRepUpdateParams params)? dRepUpdate,
    TResult Function(PoolRegistrationParams params)? stakePoolRegistration,
    TResult Function(PoolRetirementParams params)? stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakePoolRetirement != null) {
      return stakePoolRetirement(params);
    }
    return orElse();
  }
}

abstract class StakePoolRetirement extends Certificate {
  factory StakePoolRetirement({required final PoolRetirementParams params}) =
      _$StakePoolRetirementImpl;
  StakePoolRetirement._() : super._();

  @override
  PoolRetirementParams get params;
  @JsonKey(ignore: true)
  _$$StakePoolRetirementImplCopyWith<_$StakePoolRetirementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
