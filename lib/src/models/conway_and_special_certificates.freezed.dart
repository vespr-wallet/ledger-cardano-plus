// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conway_and_special_certificates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConwayAndSpecialCertificates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(
            ParsedCredential coldCredential, ParsedAnchor? anchor)
        resignCommitteeCold,
    required TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)
        dRepRegistration,
    required TResult Function(ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(
            ParsedCredential dRepCredential, ParsedAnchor? anchor)
        dRepUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult? Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult? Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult? Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult? Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConwayAndSpecialCertificatesCopyWith<$Res> {
  factory $ConwayAndSpecialCertificatesCopyWith(
          ConwayAndSpecialCertificates value,
          $Res Function(ConwayAndSpecialCertificates) then) =
      _$ConwayAndSpecialCertificatesCopyWithImpl<$Res,
          ConwayAndSpecialCertificates>;
}

/// @nodoc
class _$ConwayAndSpecialCertificatesCopyWithImpl<$Res,
        $Val extends ConwayAndSpecialCertificates>
    implements $ConwayAndSpecialCertificatesCopyWith<$Res> {
  _$ConwayAndSpecialCertificatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StakeRegistrationConwayImplCopyWith<$Res> {
  factory _$$StakeRegistrationConwayImplCopyWith(
          _$StakeRegistrationConwayImpl value,
          $Res Function(_$StakeRegistrationConwayImpl) then) =
      __$$StakeRegistrationConwayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParsedCredential stakeCredential, String deposit});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeRegistrationConwayImplCopyWithImpl<$Res>
    extends _$ConwayAndSpecialCertificatesCopyWithImpl<$Res,
        _$StakeRegistrationConwayImpl>
    implements _$$StakeRegistrationConwayImplCopyWith<$Res> {
  __$$StakeRegistrationConwayImplCopyWithImpl(
      _$StakeRegistrationConwayImpl _value,
      $Res Function(_$StakeRegistrationConwayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
    Object? deposit = null,
  }) {
    return _then(_$StakeRegistrationConwayImpl(
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
  _$StakeRegistrationConwayImpl(
      {required this.stakeCredential, required this.deposit})
      : super._();

  @override
  final ParsedCredential stakeCredential;
  @override
  final String deposit;

  @override
  String toString() {
    return 'ConwayAndSpecialCertificates.stakeRegistrationConway(stakeCredential: $stakeCredential, deposit: $deposit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeRegistrationConwayImpl &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, deposit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeRegistrationConwayImplCopyWith<_$StakeRegistrationConwayImpl>
      get copyWith => __$$StakeRegistrationConwayImplCopyWithImpl<
          _$StakeRegistrationConwayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(
            ParsedCredential coldCredential, ParsedAnchor? anchor)
        resignCommitteeCold,
    required TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)
        dRepRegistration,
    required TResult Function(ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(
            ParsedCredential dRepCredential, ParsedAnchor? anchor)
        dRepUpdate,
  }) {
    return stakeRegistrationConway(stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult? Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult? Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult? Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult? Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
  }) {
    return stakeRegistrationConway?.call(stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
    required TResult orElse(),
  }) {
    if (stakeRegistrationConway != null) {
      return stakeRegistrationConway(stakeCredential, deposit);
    }
    return orElse();
  }
}

abstract class StakeRegistrationConway extends ConwayAndSpecialCertificates {
  factory StakeRegistrationConway(
      {required final ParsedCredential stakeCredential,
      required final String deposit}) = _$StakeRegistrationConwayImpl;
  StakeRegistrationConway._() : super._();

  ParsedCredential get stakeCredential;
  String get deposit;
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
  $Res call({ParsedCredential stakeCredential, String deposit});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeDeregistrationConwayImplCopyWithImpl<$Res>
    extends _$ConwayAndSpecialCertificatesCopyWithImpl<$Res,
        _$StakeDeregistrationConwayImpl>
    implements _$$StakeDeregistrationConwayImplCopyWith<$Res> {
  __$$StakeDeregistrationConwayImplCopyWithImpl(
      _$StakeDeregistrationConwayImpl _value,
      $Res Function(_$StakeDeregistrationConwayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
    Object? deposit = null,
  }) {
    return _then(_$StakeDeregistrationConwayImpl(
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
  _$StakeDeregistrationConwayImpl(
      {required this.stakeCredential, required this.deposit})
      : super._();

  @override
  final ParsedCredential stakeCredential;
  @override
  final String deposit;

  @override
  String toString() {
    return 'ConwayAndSpecialCertificates.stakeDeregistrationConway(stakeCredential: $stakeCredential, deposit: $deposit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeDeregistrationConwayImpl &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, deposit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeDeregistrationConwayImplCopyWith<_$StakeDeregistrationConwayImpl>
      get copyWith => __$$StakeDeregistrationConwayImplCopyWithImpl<
          _$StakeDeregistrationConwayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(
            ParsedCredential coldCredential, ParsedAnchor? anchor)
        resignCommitteeCold,
    required TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)
        dRepRegistration,
    required TResult Function(ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(
            ParsedCredential dRepCredential, ParsedAnchor? anchor)
        dRepUpdate,
  }) {
    return stakeDeregistrationConway(stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult? Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult? Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult? Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult? Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
  }) {
    return stakeDeregistrationConway?.call(stakeCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
    required TResult orElse(),
  }) {
    if (stakeDeregistrationConway != null) {
      return stakeDeregistrationConway(stakeCredential, deposit);
    }
    return orElse();
  }
}

abstract class StakeDeregistrationConway extends ConwayAndSpecialCertificates {
  factory StakeDeregistrationConway(
      {required final ParsedCredential stakeCredential,
      required final String deposit}) = _$StakeDeregistrationConwayImpl;
  StakeDeregistrationConway._() : super._();

  ParsedCredential get stakeCredential;
  String get deposit;
  @JsonKey(ignore: true)
  _$$StakeDeregistrationConwayImplCopyWith<_$StakeDeregistrationConwayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoteDelegationImplCopyWith<$Res> {
  factory _$$VoteDelegationImplCopyWith(_$VoteDelegationImpl value,
          $Res Function(_$VoteDelegationImpl) then) =
      __$$VoteDelegationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParsedCredential stakeCredential, ParsedDRep dRep});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
  $ParsedDRepCopyWith<$Res> get dRep;
}

/// @nodoc
class __$$VoteDelegationImplCopyWithImpl<$Res>
    extends _$ConwayAndSpecialCertificatesCopyWithImpl<$Res,
        _$VoteDelegationImpl> implements _$$VoteDelegationImplCopyWith<$Res> {
  __$$VoteDelegationImplCopyWithImpl(
      _$VoteDelegationImpl _value, $Res Function(_$VoteDelegationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakeCredential = null,
    Object? dRep = null,
  }) {
    return _then(_$VoteDelegationImpl(
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
  _$VoteDelegationImpl({required this.stakeCredential, required this.dRep})
      : super._();

  @override
  final ParsedCredential stakeCredential;
  @override
  final ParsedDRep dRep;

  @override
  String toString() {
    return 'ConwayAndSpecialCertificates.voteDelegation(stakeCredential: $stakeCredential, dRep: $dRep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoteDelegationImpl &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.dRep, dRep) || other.dRep == dRep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, dRep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoteDelegationImplCopyWith<_$VoteDelegationImpl> get copyWith =>
      __$$VoteDelegationImplCopyWithImpl<_$VoteDelegationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(
            ParsedCredential coldCredential, ParsedAnchor? anchor)
        resignCommitteeCold,
    required TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)
        dRepRegistration,
    required TResult Function(ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(
            ParsedCredential dRepCredential, ParsedAnchor? anchor)
        dRepUpdate,
  }) {
    return voteDelegation(stakeCredential, dRep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult? Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult? Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult? Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult? Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
  }) {
    return voteDelegation?.call(stakeCredential, dRep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
    required TResult orElse(),
  }) {
    if (voteDelegation != null) {
      return voteDelegation(stakeCredential, dRep);
    }
    return orElse();
  }
}

abstract class VoteDelegation extends ConwayAndSpecialCertificates {
  factory VoteDelegation(
      {required final ParsedCredential stakeCredential,
      required final ParsedDRep dRep}) = _$VoteDelegationImpl;
  VoteDelegation._() : super._();

  ParsedCredential get stakeCredential;
  ParsedDRep get dRep;
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
  $Res call({ParsedCredential coldCredential, ParsedCredential hotCredential});

  $ParsedCredentialCopyWith<$Res> get coldCredential;
  $ParsedCredentialCopyWith<$Res> get hotCredential;
}

/// @nodoc
class __$$AuthorizeCommitteeHotImplCopyWithImpl<$Res>
    extends _$ConwayAndSpecialCertificatesCopyWithImpl<$Res,
        _$AuthorizeCommitteeHotImpl>
    implements _$$AuthorizeCommitteeHotImplCopyWith<$Res> {
  __$$AuthorizeCommitteeHotImplCopyWithImpl(_$AuthorizeCommitteeHotImpl _value,
      $Res Function(_$AuthorizeCommitteeHotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coldCredential = null,
    Object? hotCredential = null,
  }) {
    return _then(_$AuthorizeCommitteeHotImpl(
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
  _$AuthorizeCommitteeHotImpl(
      {required this.coldCredential, required this.hotCredential})
      : super._();

  @override
  final ParsedCredential coldCredential;
  @override
  final ParsedCredential hotCredential;

  @override
  String toString() {
    return 'ConwayAndSpecialCertificates.authorizeCommitteeHot(coldCredential: $coldCredential, hotCredential: $hotCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizeCommitteeHotImpl &&
            (identical(other.coldCredential, coldCredential) ||
                other.coldCredential == coldCredential) &&
            (identical(other.hotCredential, hotCredential) ||
                other.hotCredential == hotCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coldCredential, hotCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizeCommitteeHotImplCopyWith<_$AuthorizeCommitteeHotImpl>
      get copyWith => __$$AuthorizeCommitteeHotImplCopyWithImpl<
          _$AuthorizeCommitteeHotImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(
            ParsedCredential coldCredential, ParsedAnchor? anchor)
        resignCommitteeCold,
    required TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)
        dRepRegistration,
    required TResult Function(ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(
            ParsedCredential dRepCredential, ParsedAnchor? anchor)
        dRepUpdate,
  }) {
    return authorizeCommitteeHot(coldCredential, hotCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult? Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult? Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult? Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult? Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
  }) {
    return authorizeCommitteeHot?.call(coldCredential, hotCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
    required TResult orElse(),
  }) {
    if (authorizeCommitteeHot != null) {
      return authorizeCommitteeHot(coldCredential, hotCredential);
    }
    return orElse();
  }
}

abstract class AuthorizeCommitteeHot extends ConwayAndSpecialCertificates {
  factory AuthorizeCommitteeHot(
          {required final ParsedCredential coldCredential,
          required final ParsedCredential hotCredential}) =
      _$AuthorizeCommitteeHotImpl;
  AuthorizeCommitteeHot._() : super._();

  ParsedCredential get coldCredential;
  ParsedCredential get hotCredential;
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
  $Res call({ParsedCredential coldCredential, ParsedAnchor? anchor});

  $ParsedCredentialCopyWith<$Res> get coldCredential;
  $ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$ResignCommitteeColdImplCopyWithImpl<$Res>
    extends _$ConwayAndSpecialCertificatesCopyWithImpl<$Res,
        _$ResignCommitteeColdImpl>
    implements _$$ResignCommitteeColdImplCopyWith<$Res> {
  __$$ResignCommitteeColdImplCopyWithImpl(_$ResignCommitteeColdImpl _value,
      $Res Function(_$ResignCommitteeColdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coldCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(_$ResignCommitteeColdImpl(
      coldCredential: null == coldCredential
          ? _value.coldCredential
          : coldCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor?,
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
  $ParsedAnchorCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
      return null;
    }

    return $ParsedAnchorCopyWith<$Res>(_value.anchor!, (value) {
      return _then(_value.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class _$ResignCommitteeColdImpl extends ResignCommitteeCold {
  _$ResignCommitteeColdImpl({required this.coldCredential, this.anchor})
      : super._();

  @override
  final ParsedCredential coldCredential;
  @override
  final ParsedAnchor? anchor;

  @override
  String toString() {
    return 'ConwayAndSpecialCertificates.resignCommitteeCold(coldCredential: $coldCredential, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResignCommitteeColdImpl &&
            (identical(other.coldCredential, coldCredential) ||
                other.coldCredential == coldCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coldCredential, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResignCommitteeColdImplCopyWith<_$ResignCommitteeColdImpl> get copyWith =>
      __$$ResignCommitteeColdImplCopyWithImpl<_$ResignCommitteeColdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(
            ParsedCredential coldCredential, ParsedAnchor? anchor)
        resignCommitteeCold,
    required TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)
        dRepRegistration,
    required TResult Function(ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(
            ParsedCredential dRepCredential, ParsedAnchor? anchor)
        dRepUpdate,
  }) {
    return resignCommitteeCold(coldCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult? Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult? Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult? Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult? Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
  }) {
    return resignCommitteeCold?.call(coldCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
    required TResult orElse(),
  }) {
    if (resignCommitteeCold != null) {
      return resignCommitteeCold(coldCredential, anchor);
    }
    return orElse();
  }
}

abstract class ResignCommitteeCold extends ConwayAndSpecialCertificates {
  factory ResignCommitteeCold(
      {required final ParsedCredential coldCredential,
      final ParsedAnchor? anchor}) = _$ResignCommitteeColdImpl;
  ResignCommitteeCold._() : super._();

  ParsedCredential get coldCredential;
  ParsedAnchor? get anchor;
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
  $Res call(
      {ParsedCredential dRepCredential, String deposit, ParsedAnchor? anchor});

  $ParsedCredentialCopyWith<$Res> get dRepCredential;
  $ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$DRepRegistrationImplCopyWithImpl<$Res>
    extends _$ConwayAndSpecialCertificatesCopyWithImpl<$Res,
        _$DRepRegistrationImpl>
    implements _$$DRepRegistrationImplCopyWith<$Res> {
  __$$DRepRegistrationImplCopyWithImpl(_$DRepRegistrationImpl _value,
      $Res Function(_$DRepRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dRepCredential = null,
    Object? deposit = null,
    Object? anchor = freezed,
  }) {
    return _then(_$DRepRegistrationImpl(
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as String,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor?,
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
  $ParsedAnchorCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
      return null;
    }

    return $ParsedAnchorCopyWith<$Res>(_value.anchor!, (value) {
      return _then(_value.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class _$DRepRegistrationImpl extends DRepRegistration {
  _$DRepRegistrationImpl(
      {required this.dRepCredential, required this.deposit, this.anchor})
      : super._();

  @override
  final ParsedCredential dRepCredential;
  @override
  final String deposit;
  @override
  final ParsedAnchor? anchor;

  @override
  String toString() {
    return 'ConwayAndSpecialCertificates.dRepRegistration(dRepCredential: $dRepCredential, deposit: $deposit, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepRegistrationImpl &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, deposit, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepRegistrationImplCopyWith<_$DRepRegistrationImpl> get copyWith =>
      __$$DRepRegistrationImplCopyWithImpl<_$DRepRegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(
            ParsedCredential coldCredential, ParsedAnchor? anchor)
        resignCommitteeCold,
    required TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)
        dRepRegistration,
    required TResult Function(ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(
            ParsedCredential dRepCredential, ParsedAnchor? anchor)
        dRepUpdate,
  }) {
    return dRepRegistration(dRepCredential, deposit, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult? Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult? Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult? Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult? Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
  }) {
    return dRepRegistration?.call(dRepCredential, deposit, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
    required TResult orElse(),
  }) {
    if (dRepRegistration != null) {
      return dRepRegistration(dRepCredential, deposit, anchor);
    }
    return orElse();
  }
}

abstract class DRepRegistration extends ConwayAndSpecialCertificates {
  factory DRepRegistration(
      {required final ParsedCredential dRepCredential,
      required final String deposit,
      final ParsedAnchor? anchor}) = _$DRepRegistrationImpl;
  DRepRegistration._() : super._();

  ParsedCredential get dRepCredential;
  String get deposit;
  ParsedAnchor? get anchor;
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
  $Res call({ParsedCredential dRepCredential, String deposit});

  $ParsedCredentialCopyWith<$Res> get dRepCredential;
}

/// @nodoc
class __$$DRepDeregistrationImplCopyWithImpl<$Res>
    extends _$ConwayAndSpecialCertificatesCopyWithImpl<$Res,
        _$DRepDeregistrationImpl>
    implements _$$DRepDeregistrationImplCopyWith<$Res> {
  __$$DRepDeregistrationImplCopyWithImpl(_$DRepDeregistrationImpl _value,
      $Res Function(_$DRepDeregistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dRepCredential = null,
    Object? deposit = null,
  }) {
    return _then(_$DRepDeregistrationImpl(
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
  _$DRepDeregistrationImpl(
      {required this.dRepCredential, required this.deposit})
      : super._();

  @override
  final ParsedCredential dRepCredential;
  @override
  final String deposit;

  @override
  String toString() {
    return 'ConwayAndSpecialCertificates.dRepDeregistration(dRepCredential: $dRepCredential, deposit: $deposit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepDeregistrationImpl &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, deposit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepDeregistrationImplCopyWith<_$DRepDeregistrationImpl> get copyWith =>
      __$$DRepDeregistrationImplCopyWithImpl<_$DRepDeregistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(
            ParsedCredential coldCredential, ParsedAnchor? anchor)
        resignCommitteeCold,
    required TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)
        dRepRegistration,
    required TResult Function(ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(
            ParsedCredential dRepCredential, ParsedAnchor? anchor)
        dRepUpdate,
  }) {
    return dRepDeregistration(dRepCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult? Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult? Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult? Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult? Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
  }) {
    return dRepDeregistration?.call(dRepCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
    required TResult orElse(),
  }) {
    if (dRepDeregistration != null) {
      return dRepDeregistration(dRepCredential, deposit);
    }
    return orElse();
  }
}

abstract class DRepDeregistration extends ConwayAndSpecialCertificates {
  factory DRepDeregistration(
      {required final ParsedCredential dRepCredential,
      required final String deposit}) = _$DRepDeregistrationImpl;
  DRepDeregistration._() : super._();

  ParsedCredential get dRepCredential;
  String get deposit;
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
  $Res call({ParsedCredential dRepCredential, ParsedAnchor? anchor});

  $ParsedCredentialCopyWith<$Res> get dRepCredential;
  $ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$DRepUpdateImplCopyWithImpl<$Res>
    extends _$ConwayAndSpecialCertificatesCopyWithImpl<$Res, _$DRepUpdateImpl>
    implements _$$DRepUpdateImplCopyWith<$Res> {
  __$$DRepUpdateImplCopyWithImpl(
      _$DRepUpdateImpl _value, $Res Function(_$DRepUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dRepCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(_$DRepUpdateImpl(
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor?,
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
  $ParsedAnchorCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
      return null;
    }

    return $ParsedAnchorCopyWith<$Res>(_value.anchor!, (value) {
      return _then(_value.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class _$DRepUpdateImpl extends DRepUpdate {
  _$DRepUpdateImpl({required this.dRepCredential, this.anchor}) : super._();

  @override
  final ParsedCredential dRepCredential;
  @override
  final ParsedAnchor? anchor;

  @override
  String toString() {
    return 'ConwayAndSpecialCertificates.dRepUpdate(dRepCredential: $dRepCredential, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepUpdateImpl &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepUpdateImplCopyWith<_$DRepUpdateImpl> get copyWith =>
      __$$DRepUpdateImplCopyWithImpl<_$DRepUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeRegistrationConway,
    required TResult Function(ParsedCredential stakeCredential, String deposit)
        stakeDeregistrationConway,
    required TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)
        voteDelegation,
    required TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)
        authorizeCommitteeHot,
    required TResult Function(
            ParsedCredential coldCredential, ParsedAnchor? anchor)
        resignCommitteeCold,
    required TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)
        dRepRegistration,
    required TResult Function(ParsedCredential dRepCredential, String deposit)
        dRepDeregistration,
    required TResult Function(
            ParsedCredential dRepCredential, ParsedAnchor? anchor)
        dRepUpdate,
  }) {
    return dRepUpdate(dRepCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult? Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult? Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult? Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult? Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult? Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult? Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult? Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
  }) {
    return dRepUpdate?.call(dRepCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeRegistrationConway,
    TResult Function(ParsedCredential stakeCredential, String deposit)?
        stakeDeregistrationConway,
    TResult Function(ParsedCredential stakeCredential, ParsedDRep dRep)?
        voteDelegation,
    TResult Function(
            ParsedCredential coldCredential, ParsedCredential hotCredential)?
        authorizeCommitteeHot,
    TResult Function(ParsedCredential coldCredential, ParsedAnchor? anchor)?
        resignCommitteeCold,
    TResult Function(ParsedCredential dRepCredential, String deposit,
            ParsedAnchor? anchor)?
        dRepRegistration,
    TResult Function(ParsedCredential dRepCredential, String deposit)?
        dRepDeregistration,
    TResult Function(ParsedCredential dRepCredential, ParsedAnchor? anchor)?
        dRepUpdate,
    required TResult orElse(),
  }) {
    if (dRepUpdate != null) {
      return dRepUpdate(dRepCredential, anchor);
    }
    return orElse();
  }
}

abstract class DRepUpdate extends ConwayAndSpecialCertificates {
  factory DRepUpdate(
      {required final ParsedCredential dRepCredential,
      final ParsedAnchor? anchor}) = _$DRepUpdateImpl;
  DRepUpdate._() : super._();

  ParsedCredential get dRepCredential;
  ParsedAnchor? get anchor;
  @JsonKey(ignore: true)
  _$$DRepUpdateImplCopyWith<_$DRepUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
