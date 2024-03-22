// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedCertificate {
  CertificateType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedCertificateCopyWith<ParsedCertificate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedCertificateCopyWith<$Res> {
  factory $ParsedCertificateCopyWith(
          ParsedCertificate value, $Res Function(ParsedCertificate) then) =
      _$ParsedCertificateCopyWithImpl<$Res, ParsedCertificate>;
  @useResult
  $Res call({CertificateType type});
}

/// @nodoc
class _$ParsedCertificateCopyWithImpl<$Res, $Val extends ParsedCertificate>
    implements $ParsedCertificateCopyWith<$Res> {
  _$ParsedCertificateCopyWithImpl(this._value, this._then);

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
              as CertificateType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StakeRegistrationImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$StakeRegistrationImplCopyWith(_$StakeRegistrationImpl value,
          $Res Function(_$StakeRegistrationImpl) then) =
      __$$StakeRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CertificateType type, ParsedCredential stakeCredential});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeRegistrationImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$StakeRegistrationImpl>
    implements _$$StakeRegistrationImplCopyWith<$Res> {
  __$$StakeRegistrationImplCopyWithImpl(_$StakeRegistrationImpl _value,
      $Res Function(_$StakeRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? stakeCredential = null,
  }) {
    return _then(_$StakeRegistrationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
      return _then(_value.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class _$StakeRegistrationImpl extends StakeRegistration {
  const _$StakeRegistrationImpl(
      {required this.type, required this.stakeCredential})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential stakeCredential;

  @override
  String toString() {
    return 'ParsedCertificate.stakeRegistration(type: $type, stakeCredential: $stakeCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeRegistrationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, stakeCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeRegistrationImplCopyWith<_$StakeRegistrationImpl> get copyWith =>
      __$$StakeRegistrationImplCopyWithImpl<_$StakeRegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return stakeRegistration(type, stakeCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return stakeRegistration?.call(type, stakeCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeRegistration != null) {
      return stakeRegistration(type, stakeCredential);
    }
    return orElse();
  }
}

abstract class StakeRegistration extends ParsedCertificate {
  const factory StakeRegistration(
          {required final CertificateType type,
          required final ParsedCredential stakeCredential}) =
      _$StakeRegistrationImpl;
  const StakeRegistration._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get stakeCredential;
  @override
  @JsonKey(ignore: true)
  _$$StakeRegistrationImplCopyWith<_$StakeRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeRegistrationConwayImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$StakeRegistrationConwayImplCopyWith(
          _$StakeRegistrationConwayImpl value,
          $Res Function(_$StakeRegistrationConwayImpl) then) =
      __$$StakeRegistrationConwayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificateType type, ParsedCredential stakeCredential, String deposit});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeRegistrationConwayImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$StakeRegistrationConwayImpl>
    implements _$$StakeRegistrationConwayImplCopyWith<$Res> {
  __$$StakeRegistrationConwayImplCopyWithImpl(
      _$StakeRegistrationConwayImpl _value,
      $Res Function(_$StakeRegistrationConwayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? stakeCredential = null,
    Object? deposit = null,
  }) {
    return _then(_$StakeRegistrationConwayImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
      return _then(_value.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class _$StakeRegistrationConwayImpl extends StakeRegistrationConway {
  const _$StakeRegistrationConwayImpl(
      {required this.type,
      required this.stakeCredential,
      required this.deposit})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential stakeCredential;
  @override
  final String deposit;

  @override
  String toString() {
    return 'ParsedCertificate.stakeRegistrationConway(type: $type, stakeCredential: $stakeCredential, deposit: $deposit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeRegistrationConwayImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, stakeCredential, deposit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeRegistrationConwayImplCopyWith<_$StakeRegistrationConwayImpl>
      get copyWith => __$$StakeRegistrationConwayImplCopyWithImpl<
          _$StakeRegistrationConwayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return stakeRegistrationConway(type, stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return stakeRegistrationConway?.call(type, stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeRegistrationConway != null) {
      return stakeRegistrationConway(type, stakeCredential, deposit);
    }
    return orElse();
  }
}

abstract class StakeRegistrationConway extends ParsedCertificate {
  const factory StakeRegistrationConway(
      {required final CertificateType type,
      required final ParsedCredential stakeCredential,
      required final String deposit}) = _$StakeRegistrationConwayImpl;
  const StakeRegistrationConway._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get stakeCredential;
  String get deposit;
  @override
  @JsonKey(ignore: true)
  _$$StakeRegistrationConwayImplCopyWith<_$StakeRegistrationConwayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeDeregistrationImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$StakeDeregistrationImplCopyWith(_$StakeDeregistrationImpl value,
          $Res Function(_$StakeDeregistrationImpl) then) =
      __$$StakeDeregistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CertificateType type, ParsedCredential stakeCredential});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeDeregistrationImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$StakeDeregistrationImpl>
    implements _$$StakeDeregistrationImplCopyWith<$Res> {
  __$$StakeDeregistrationImplCopyWithImpl(_$StakeDeregistrationImpl _value,
      $Res Function(_$StakeDeregistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? stakeCredential = null,
  }) {
    return _then(_$StakeDeregistrationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
      return _then(_value.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class _$StakeDeregistrationImpl extends StakeDeregistration {
  const _$StakeDeregistrationImpl(
      {required this.type, required this.stakeCredential})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential stakeCredential;

  @override
  String toString() {
    return 'ParsedCertificate.stakeDeregistration(type: $type, stakeCredential: $stakeCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeDeregistrationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, stakeCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeDeregistrationImplCopyWith<_$StakeDeregistrationImpl> get copyWith =>
      __$$StakeDeregistrationImplCopyWithImpl<_$StakeDeregistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return stakeDeregistration(type, stakeCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return stakeDeregistration?.call(type, stakeCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeDeregistration != null) {
      return stakeDeregistration(type, stakeCredential);
    }
    return orElse();
  }
}

abstract class StakeDeregistration extends ParsedCertificate {
  const factory StakeDeregistration(
          {required final CertificateType type,
          required final ParsedCredential stakeCredential}) =
      _$StakeDeregistrationImpl;
  const StakeDeregistration._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get stakeCredential;
  @override
  @JsonKey(ignore: true)
  _$$StakeDeregistrationImplCopyWith<_$StakeDeregistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeDeregistrationConwayImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$StakeDeregistrationConwayImplCopyWith(
          _$StakeDeregistrationConwayImpl value,
          $Res Function(_$StakeDeregistrationConwayImpl) then) =
      __$$StakeDeregistrationConwayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificateType type, ParsedCredential stakeCredential, String deposit});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeDeregistrationConwayImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res,
        _$StakeDeregistrationConwayImpl>
    implements _$$StakeDeregistrationConwayImplCopyWith<$Res> {
  __$$StakeDeregistrationConwayImplCopyWithImpl(
      _$StakeDeregistrationConwayImpl _value,
      $Res Function(_$StakeDeregistrationConwayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? stakeCredential = null,
    Object? deposit = null,
  }) {
    return _then(_$StakeDeregistrationConwayImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
      return _then(_value.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class _$StakeDeregistrationConwayImpl extends StakeDeregistrationConway {
  const _$StakeDeregistrationConwayImpl(
      {required this.type,
      required this.stakeCredential,
      required this.deposit})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential stakeCredential;
  @override
  final String deposit;

  @override
  String toString() {
    return 'ParsedCertificate.stakeDeregistrationConway(type: $type, stakeCredential: $stakeCredential, deposit: $deposit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeDeregistrationConwayImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, stakeCredential, deposit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeDeregistrationConwayImplCopyWith<_$StakeDeregistrationConwayImpl>
      get copyWith => __$$StakeDeregistrationConwayImplCopyWithImpl<
          _$StakeDeregistrationConwayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return stakeDeregistrationConway(type, stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return stakeDeregistrationConway?.call(type, stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeDeregistrationConway != null) {
      return stakeDeregistrationConway(type, stakeCredential, deposit);
    }
    return orElse();
  }
}

abstract class StakeDeregistrationConway extends ParsedCertificate {
  const factory StakeDeregistrationConway(
      {required final CertificateType type,
      required final ParsedCredential stakeCredential,
      required final String deposit}) = _$StakeDeregistrationConwayImpl;
  const StakeDeregistrationConway._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get stakeCredential;
  String get deposit;
  @override
  @JsonKey(ignore: true)
  _$$StakeDeregistrationConwayImplCopyWith<_$StakeDeregistrationConwayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeDelegationImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$StakeDelegationImplCopyWith(_$StakeDelegationImpl value,
          $Res Function(_$StakeDelegationImpl) then) =
      __$$StakeDelegationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificateType type,
      ParsedCredential stakeCredential,
      String poolKeyHashHex});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeDelegationImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$StakeDelegationImpl>
    implements _$$StakeDelegationImplCopyWith<$Res> {
  __$$StakeDelegationImplCopyWithImpl(
      _$StakeDelegationImpl _value, $Res Function(_$StakeDelegationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? stakeCredential = null,
    Object? poolKeyHashHex = null,
  }) {
    return _then(_$StakeDelegationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      poolKeyHashHex: null == poolKeyHashHex
          ? _value.poolKeyHashHex
          : poolKeyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
      return _then(_value.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class _$StakeDelegationImpl extends StakeDelegation {
  const _$StakeDelegationImpl(
      {required this.type,
      required this.stakeCredential,
      required this.poolKeyHashHex})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential stakeCredential;
  @override
  final String poolKeyHashHex;

  @override
  String toString() {
    return 'ParsedCertificate.stakeDelegation(type: $type, stakeCredential: $stakeCredential, poolKeyHashHex: $poolKeyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeDelegationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.poolKeyHashHex, poolKeyHashHex) ||
                other.poolKeyHashHex == poolKeyHashHex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, stakeCredential, poolKeyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeDelegationImplCopyWith<_$StakeDelegationImpl> get copyWith =>
      __$$StakeDelegationImplCopyWithImpl<_$StakeDelegationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return stakeDelegation(type, stakeCredential, poolKeyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return stakeDelegation?.call(type, stakeCredential, poolKeyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakeDelegation != null) {
      return stakeDelegation(type, stakeCredential, poolKeyHashHex);
    }
    return orElse();
  }
}

abstract class StakeDelegation extends ParsedCertificate {
  const factory StakeDelegation(
      {required final CertificateType type,
      required final ParsedCredential stakeCredential,
      required final String poolKeyHashHex}) = _$StakeDelegationImpl;
  const StakeDelegation._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get stakeCredential;
  String get poolKeyHashHex;
  @override
  @JsonKey(ignore: true)
  _$$StakeDelegationImplCopyWith<_$StakeDelegationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteDelegationImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$VoteDelegationImplCopyWith(_$VoteDelegationImpl value,
          $Res Function(_$VoteDelegationImpl) then) =
      __$$VoteDelegationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificateType type,
      ParsedCredential stakeCredential,
      ParsedDRep dRep});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
  $ParsedDRepCopyWith<$Res> get dRep;
}

/// @nodoc
class __$$VoteDelegationImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$VoteDelegationImpl>
    implements _$$VoteDelegationImplCopyWith<$Res> {
  __$$VoteDelegationImplCopyWithImpl(
      _$VoteDelegationImpl _value, $Res Function(_$VoteDelegationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? stakeCredential = null,
    Object? dRep = null,
  }) {
    return _then(_$VoteDelegationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      dRep: null == dRep
          ? _value.dRep
          : dRep // ignore: cast_nullable_to_non_nullable
              as ParsedDRep,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
      return _then(_value.copyWith(stakeCredential: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedDRepCopyWith<$Res> get dRep {
    return $ParsedDRepCopyWith<$Res>(_value.dRep, (value) {
      return _then(_value.copyWith(dRep: value));
    });
  }
}

/// @nodoc

class _$VoteDelegationImpl extends VoteDelegation {
  const _$VoteDelegationImpl(
      {required this.type, required this.stakeCredential, required this.dRep})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential stakeCredential;
  @override
  final ParsedDRep dRep;

  @override
  String toString() {
    return 'ParsedCertificate.voteDelegation(type: $type, stakeCredential: $stakeCredential, dRep: $dRep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteDelegationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.dRep, dRep) || other.dRep == dRep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, stakeCredential, dRep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteDelegationImplCopyWith<_$VoteDelegationImpl> get copyWith =>
      __$$VoteDelegationImplCopyWithImpl<_$VoteDelegationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return voteDelegation(type, stakeCredential, dRep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return voteDelegation?.call(type, stakeCredential, dRep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (voteDelegation != null) {
      return voteDelegation(type, stakeCredential, dRep);
    }
    return orElse();
  }
}

abstract class VoteDelegation extends ParsedCertificate {
  const factory VoteDelegation(
      {required final CertificateType type,
      required final ParsedCredential stakeCredential,
      required final ParsedDRep dRep}) = _$VoteDelegationImpl;
  const VoteDelegation._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get stakeCredential;
  ParsedDRep get dRep;
  @override
  @JsonKey(ignore: true)
  _$$VoteDelegationImplCopyWith<_$VoteDelegationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorizeCommitteeHotImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$AuthorizeCommitteeHotImplCopyWith(
          _$AuthorizeCommitteeHotImpl value,
          $Res Function(_$AuthorizeCommitteeHotImpl) then) =
      __$$AuthorizeCommitteeHotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificateType type,
      ParsedCredential coldCredential,
      ParsedCredential hotCredential});

  $ParsedCredentialCopyWith<$Res> get coldCredential;
  $ParsedCredentialCopyWith<$Res> get hotCredential;
}

/// @nodoc
class __$$AuthorizeCommitteeHotImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$AuthorizeCommitteeHotImpl>
    implements _$$AuthorizeCommitteeHotImplCopyWith<$Res> {
  __$$AuthorizeCommitteeHotImplCopyWithImpl(_$AuthorizeCommitteeHotImpl _value,
      $Res Function(_$AuthorizeCommitteeHotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coldCredential = null,
    Object? hotCredential = null,
  }) {
    return _then(_$AuthorizeCommitteeHotImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      coldCredential: null == coldCredential
          ? _value.coldCredential
          : coldCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      hotCredential: null == hotCredential
          ? _value.hotCredential
          : hotCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get coldCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.coldCredential, (value) {
      return _then(_value.copyWith(coldCredential: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get hotCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.hotCredential, (value) {
      return _then(_value.copyWith(hotCredential: value));
    });
  }
}

/// @nodoc

class _$AuthorizeCommitteeHotImpl extends AuthorizeCommitteeHot {
  const _$AuthorizeCommitteeHotImpl(
      {required this.type,
      required this.coldCredential,
      required this.hotCredential})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential coldCredential;
  @override
  final ParsedCredential hotCredential;

  @override
  String toString() {
    return 'ParsedCertificate.authorizeCommitteeHot(type: $type, coldCredential: $coldCredential, hotCredential: $hotCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizeCommitteeHotImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.coldCredential, coldCredential) ||
                other.coldCredential == coldCredential) &&
            (identical(other.hotCredential, hotCredential) ||
                other.hotCredential == hotCredential));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, coldCredential, hotCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizeCommitteeHotImplCopyWith<_$AuthorizeCommitteeHotImpl>
      get copyWith => __$$AuthorizeCommitteeHotImplCopyWithImpl<
          _$AuthorizeCommitteeHotImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return authorizeCommitteeHot(type, coldCredential, hotCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return authorizeCommitteeHot?.call(type, coldCredential, hotCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (authorizeCommitteeHot != null) {
      return authorizeCommitteeHot(type, coldCredential, hotCredential);
    }
    return orElse();
  }
}

abstract class AuthorizeCommitteeHot extends ParsedCertificate {
  const factory AuthorizeCommitteeHot(
          {required final CertificateType type,
          required final ParsedCredential coldCredential,
          required final ParsedCredential hotCredential}) =
      _$AuthorizeCommitteeHotImpl;
  const AuthorizeCommitteeHot._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get coldCredential;
  ParsedCredential get hotCredential;
  @override
  @JsonKey(ignore: true)
  _$$AuthorizeCommitteeHotImplCopyWith<_$AuthorizeCommitteeHotImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResignCommitteeColdImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$ResignCommitteeColdImplCopyWith(_$ResignCommitteeColdImpl value,
          $Res Function(_$ResignCommitteeColdImpl) then) =
      __$$ResignCommitteeColdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificateType type,
      ParsedCredential coldCredential,
      ParsedAnchor anchor});

  $ParsedCredentialCopyWith<$Res> get coldCredential;
  $ParsedAnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class __$$ResignCommitteeColdImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$ResignCommitteeColdImpl>
    implements _$$ResignCommitteeColdImplCopyWith<$Res> {
  __$$ResignCommitteeColdImplCopyWithImpl(_$ResignCommitteeColdImpl _value,
      $Res Function(_$ResignCommitteeColdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coldCredential = null,
    Object? anchor = null,
  }) {
    return _then(_$ResignCommitteeColdImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      coldCredential: null == coldCredential
          ? _value.coldCredential
          : coldCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      anchor: null == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get coldCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.coldCredential, (value) {
      return _then(_value.copyWith(coldCredential: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedAnchorCopyWith<$Res> get anchor {
    return $ParsedAnchorCopyWith<$Res>(_value.anchor, (value) {
      return _then(_value.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class _$ResignCommitteeColdImpl extends ResignCommitteeCold {
  const _$ResignCommitteeColdImpl(
      {required this.type, required this.coldCredential, required this.anchor})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential coldCredential;
  @override
  final ParsedAnchor anchor;

  @override
  String toString() {
    return 'ParsedCertificate.resignCommitteeCold(type: $type, coldCredential: $coldCredential, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResignCommitteeColdImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.coldCredential, coldCredential) ||
                other.coldCredential == coldCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, coldCredential, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResignCommitteeColdImplCopyWith<_$ResignCommitteeColdImpl> get copyWith =>
      __$$ResignCommitteeColdImplCopyWithImpl<_$ResignCommitteeColdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return resignCommitteeCold(type, coldCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return resignCommitteeCold?.call(type, coldCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (resignCommitteeCold != null) {
      return resignCommitteeCold(type, coldCredential, anchor);
    }
    return orElse();
  }
}

abstract class ResignCommitteeCold extends ParsedCertificate {
  const factory ResignCommitteeCold(
      {required final CertificateType type,
      required final ParsedCredential coldCredential,
      required final ParsedAnchor anchor}) = _$ResignCommitteeColdImpl;
  const ResignCommitteeCold._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get coldCredential;
  ParsedAnchor get anchor;
  @override
  @JsonKey(ignore: true)
  _$$ResignCommitteeColdImplCopyWith<_$ResignCommitteeColdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepRegistrationImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$DRepRegistrationImplCopyWith(_$DRepRegistrationImpl value,
          $Res Function(_$DRepRegistrationImpl) then) =
      __$$DRepRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificateType type,
      ParsedCredential dRepCredential,
      String deposit,
      ParsedAnchor anchor});

  $ParsedCredentialCopyWith<$Res> get dRepCredential;
  $ParsedAnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class __$$DRepRegistrationImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$DRepRegistrationImpl>
    implements _$$DRepRegistrationImplCopyWith<$Res> {
  __$$DRepRegistrationImplCopyWithImpl(_$DRepRegistrationImpl _value,
      $Res Function(_$DRepRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dRepCredential = null,
    Object? deposit = null,
    Object? anchor = null,
  }) {
    return _then(_$DRepRegistrationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as String,
      anchor: null == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get dRepCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.dRepCredential, (value) {
      return _then(_value.copyWith(dRepCredential: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedAnchorCopyWith<$Res> get anchor {
    return $ParsedAnchorCopyWith<$Res>(_value.anchor, (value) {
      return _then(_value.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class _$DRepRegistrationImpl extends DRepRegistration {
  const _$DRepRegistrationImpl(
      {required this.type,
      required this.dRepCredential,
      required this.deposit,
      required this.anchor})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential dRepCredential;
  @override
  final String deposit;
  @override
  final ParsedAnchor anchor;

  @override
  String toString() {
    return 'ParsedCertificate.dRepRegistration(type: $type, dRepCredential: $dRepCredential, deposit: $deposit, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepRegistrationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, dRepCredential, deposit, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepRegistrationImplCopyWith<_$DRepRegistrationImpl> get copyWith =>
      __$$DRepRegistrationImplCopyWithImpl<_$DRepRegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return dRepRegistration(type, dRepCredential, deposit, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return dRepRegistration?.call(type, dRepCredential, deposit, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (dRepRegistration != null) {
      return dRepRegistration(type, dRepCredential, deposit, anchor);
    }
    return orElse();
  }
}

abstract class DRepRegistration extends ParsedCertificate {
  const factory DRepRegistration(
      {required final CertificateType type,
      required final ParsedCredential dRepCredential,
      required final String deposit,
      required final ParsedAnchor anchor}) = _$DRepRegistrationImpl;
  const DRepRegistration._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get dRepCredential;
  String get deposit;
  ParsedAnchor get anchor;
  @override
  @JsonKey(ignore: true)
  _$$DRepRegistrationImplCopyWith<_$DRepRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepDeregistrationImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$DRepDeregistrationImplCopyWith(_$DRepDeregistrationImpl value,
          $Res Function(_$DRepDeregistrationImpl) then) =
      __$$DRepDeregistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificateType type, ParsedCredential dRepCredential, String deposit});

  $ParsedCredentialCopyWith<$Res> get dRepCredential;
}

/// @nodoc
class __$$DRepDeregistrationImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$DRepDeregistrationImpl>
    implements _$$DRepDeregistrationImplCopyWith<$Res> {
  __$$DRepDeregistrationImplCopyWithImpl(_$DRepDeregistrationImpl _value,
      $Res Function(_$DRepDeregistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dRepCredential = null,
    Object? deposit = null,
  }) {
    return _then(_$DRepDeregistrationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get dRepCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.dRepCredential, (value) {
      return _then(_value.copyWith(dRepCredential: value));
    });
  }
}

/// @nodoc

class _$DRepDeregistrationImpl extends DRepDeregistration {
  const _$DRepDeregistrationImpl(
      {required this.type, required this.dRepCredential, required this.deposit})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential dRepCredential;
  @override
  final String deposit;

  @override
  String toString() {
    return 'ParsedCertificate.dRepDeregistration(type: $type, dRepCredential: $dRepCredential, deposit: $deposit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepDeregistrationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, dRepCredential, deposit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepDeregistrationImplCopyWith<_$DRepDeregistrationImpl> get copyWith =>
      __$$DRepDeregistrationImplCopyWithImpl<_$DRepDeregistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return dRepDeregistration(type, dRepCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return dRepDeregistration?.call(type, dRepCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (dRepDeregistration != null) {
      return dRepDeregistration(type, dRepCredential, deposit);
    }
    return orElse();
  }
}

abstract class DRepDeregistration extends ParsedCertificate {
  const factory DRepDeregistration(
      {required final CertificateType type,
      required final ParsedCredential dRepCredential,
      required final String deposit}) = _$DRepDeregistrationImpl;
  const DRepDeregistration._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get dRepCredential;
  String get deposit;
  @override
  @JsonKey(ignore: true)
  _$$DRepDeregistrationImplCopyWith<_$DRepDeregistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepUpdateImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$DRepUpdateImplCopyWith(
          _$DRepUpdateImpl value, $Res Function(_$DRepUpdateImpl) then) =
      __$$DRepUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CertificateType type,
      ParsedCredential dRepCredential,
      ParsedAnchor anchor});

  $ParsedCredentialCopyWith<$Res> get dRepCredential;
  $ParsedAnchorCopyWith<$Res> get anchor;
}

/// @nodoc
class __$$DRepUpdateImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$DRepUpdateImpl>
    implements _$$DRepUpdateImplCopyWith<$Res> {
  __$$DRepUpdateImplCopyWithImpl(
      _$DRepUpdateImpl _value, $Res Function(_$DRepUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dRepCredential = null,
    Object? anchor = null,
  }) {
    return _then(_$DRepUpdateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      anchor: null == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get dRepCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.dRepCredential, (value) {
      return _then(_value.copyWith(dRepCredential: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedAnchorCopyWith<$Res> get anchor {
    return $ParsedAnchorCopyWith<$Res>(_value.anchor, (value) {
      return _then(_value.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class _$DRepUpdateImpl extends DRepUpdate {
  const _$DRepUpdateImpl(
      {required this.type, required this.dRepCredential, required this.anchor})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedCredential dRepCredential;
  @override
  final ParsedAnchor anchor;

  @override
  String toString() {
    return 'ParsedCertificate.dRepUpdate(type: $type, dRepCredential: $dRepCredential, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepUpdateImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, dRepCredential, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepUpdateImplCopyWith<_$DRepUpdateImpl> get copyWith =>
      __$$DRepUpdateImplCopyWithImpl<_$DRepUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return dRepUpdate(type, dRepCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return dRepUpdate?.call(type, dRepCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (dRepUpdate != null) {
      return dRepUpdate(type, dRepCredential, anchor);
    }
    return orElse();
  }
}

abstract class DRepUpdate extends ParsedCertificate {
  const factory DRepUpdate(
      {required final CertificateType type,
      required final ParsedCredential dRepCredential,
      required final ParsedAnchor anchor}) = _$DRepUpdateImpl;
  const DRepUpdate._() : super._();

  @override
  CertificateType get type;
  ParsedCredential get dRepCredential;
  ParsedAnchor get anchor;
  @override
  @JsonKey(ignore: true)
  _$$DRepUpdateImplCopyWith<_$DRepUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakePoolRegistrationImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$StakePoolRegistrationImplCopyWith(
          _$StakePoolRegistrationImpl value,
          $Res Function(_$StakePoolRegistrationImpl) then) =
      __$$StakePoolRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CertificateType type, ParsedPoolParams pool});

  $ParsedPoolParamsCopyWith<$Res> get pool;
}

/// @nodoc
class __$$StakePoolRegistrationImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$StakePoolRegistrationImpl>
    implements _$$StakePoolRegistrationImplCopyWith<$Res> {
  __$$StakePoolRegistrationImplCopyWithImpl(_$StakePoolRegistrationImpl _value,
      $Res Function(_$StakePoolRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? pool = null,
  }) {
    return _then(_$StakePoolRegistrationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      pool: null == pool
          ? _value.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as ParsedPoolParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolParamsCopyWith<$Res> get pool {
    return $ParsedPoolParamsCopyWith<$Res>(_value.pool, (value) {
      return _then(_value.copyWith(pool: value));
    });
  }
}

/// @nodoc

class _$StakePoolRegistrationImpl extends StakePoolRegistration {
  const _$StakePoolRegistrationImpl({required this.type, required this.pool})
      : super._();

  @override
  final CertificateType type;
  @override
  final ParsedPoolParams pool;

  @override
  String toString() {
    return 'ParsedCertificate.stakePoolRegistration(type: $type, pool: $pool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakePoolRegistrationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pool, pool) || other.pool == pool));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, pool);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakePoolRegistrationImplCopyWith<_$StakePoolRegistrationImpl>
      get copyWith => __$$StakePoolRegistrationImplCopyWithImpl<
          _$StakePoolRegistrationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return stakePoolRegistration(type, pool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return stakePoolRegistration?.call(type, pool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakePoolRegistration != null) {
      return stakePoolRegistration(type, pool);
    }
    return orElse();
  }
}

abstract class StakePoolRegistration extends ParsedCertificate {
  const factory StakePoolRegistration(
      {required final CertificateType type,
      required final ParsedPoolParams pool}) = _$StakePoolRegistrationImpl;
  const StakePoolRegistration._() : super._();

  @override
  CertificateType get type;
  ParsedPoolParams get pool;
  @override
  @JsonKey(ignore: true)
  _$$StakePoolRegistrationImplCopyWith<_$StakePoolRegistrationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakePoolRetirementImplCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory _$$StakePoolRetirementImplCopyWith(_$StakePoolRetirementImpl value,
          $Res Function(_$StakePoolRetirementImpl) then) =
      __$$StakePoolRetirementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CertificateType type, List<int> path, String retirementEpoch});
}

/// @nodoc
class __$$StakePoolRetirementImplCopyWithImpl<$Res>
    extends _$ParsedCertificateCopyWithImpl<$Res, _$StakePoolRetirementImpl>
    implements _$$StakePoolRetirementImplCopyWith<$Res> {
  __$$StakePoolRetirementImplCopyWithImpl(_$StakePoolRetirementImpl _value,
      $Res Function(_$StakePoolRetirementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? path = null,
    Object? retirementEpoch = null,
  }) {
    return _then(_$StakePoolRetirementImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CertificateType,
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
      retirementEpoch: null == retirementEpoch
          ? _value.retirementEpoch
          : retirementEpoch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StakePoolRetirementImpl extends StakePoolRetirement {
  const _$StakePoolRetirementImpl(
      {required this.type,
      required final List<int> path,
      required this.retirementEpoch})
      : _path = path,
        super._();

  @override
  final CertificateType type;
  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  final String retirementEpoch;

  @override
  String toString() {
    return 'ParsedCertificate.stakePoolRetirement(type: $type, path: $path, retirementEpoch: $retirementEpoch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakePoolRetirementImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            (identical(other.retirementEpoch, retirementEpoch) ||
                other.retirementEpoch == retirementEpoch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_path), retirementEpoch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakePoolRetirementImplCopyWith<_$StakePoolRetirementImpl> get copyWith =>
      __$$StakePoolRetirementImplCopyWithImpl<_$StakePoolRetirementImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(
            CertificateType type, ParsedCredential stakeCredential)
        stakeDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, String poolKeyHashHex)
        stakeDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(CertificateType type,
            ParsedCredential coldCredential, ParsedAnchor anchor)
        resignCommitteeCold,
    required TResult Function(
            CertificateType type,
            ParsedCredential dRepCredential,
            String deposit,
            ParsedAnchor anchor)
        dRepRegistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(CertificateType type,
            ParsedCredential dRepCredential, ParsedAnchor anchor)
        dRepUpdate,
    required TResult Function(CertificateType type, ParsedPoolParams pool)
        stakePoolRegistration,
    required TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)
        stakePoolRetirement,
  }) {
    return stakePoolRetirement(type, path, retirementEpoch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult? Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult? Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult? Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult? Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
  }) {
    return stakePoolRetirement?.call(type, path, retirementEpoch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeRegistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeRegistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential)?
        stakeDeregistration,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String deposit)?
        stakeDeregistrationConway,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            String poolKeyHashHex)?
        stakeDelegation,
    TResult Function(CertificateType type, ParsedCredential stakeCredential,
            ParsedDRep dRep)?
        voteDelegation,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(CertificateType type, ParsedCredential coldCredential,
            ParsedAnchor anchor)?
        resignCommitteeCold,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit, ParsedAnchor anchor)?
        dRepRegistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            String deposit)?
        dRepDeregistration,
    TResult Function(CertificateType type, ParsedCredential dRepCredential,
            ParsedAnchor anchor)?
        dRepUpdate,
    TResult Function(CertificateType type, ParsedPoolParams pool)?
        stakePoolRegistration,
    TResult Function(
            CertificateType type, List<int> path, String retirementEpoch)?
        stakePoolRetirement,
    required TResult orElse(),
  }) {
    if (stakePoolRetirement != null) {
      return stakePoolRetirement(type, path, retirementEpoch);
    }
    return orElse();
  }
}

abstract class StakePoolRetirement extends ParsedCertificate {
  const factory StakePoolRetirement(
      {required final CertificateType type,
      required final List<int> path,
      required final String retirementEpoch}) = _$StakePoolRetirementImpl;
  const StakePoolRetirement._() : super._();

  @override
  CertificateType get type;
  List<int> get path;
  String get retirementEpoch;
  @override
  @JsonKey(ignore: true)
  _$$StakePoolRetirementImplCopyWith<_$StakePoolRetirementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
