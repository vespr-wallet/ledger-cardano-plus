// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedCertificate {
  bool get isConway;
  int get certificateTypeSerializationValue;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedCertificate &&
            (identical(other.isConway, isConway) ||
                other.isConway == isConway) &&
            (identical(other.certificateTypeSerializationValue,
                    certificateTypeSerializationValue) ||
                other.certificateTypeSerializationValue ==
                    certificateTypeSerializationValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isConway, certificateTypeSerializationValue);

  @override
  String toString() {
    return 'ParsedCertificate(isConway: $isConway, certificateTypeSerializationValue: $certificateTypeSerializationValue)';
  }
}

/// @nodoc
class $ParsedCertificateCopyWith<$Res> {
  $ParsedCertificateCopyWith(
      ParsedCertificate _, $Res Function(ParsedCertificate) __);
}

/// @nodoc

class StakeRegistration extends ParsedCertificate {
  StakeRegistration({required this.stakeCredential}) : super._();

  final ParsedCredential stakeCredential;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakeRegistrationCopyWith<StakeRegistration> get copyWith =>
      _$StakeRegistrationCopyWithImpl<StakeRegistration>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakeRegistration &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential);

  @override
  String toString() {
    return 'ParsedCertificate.stakeRegistration(stakeCredential: $stakeCredential)';
  }
}

/// @nodoc
abstract mixin class $StakeRegistrationCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $StakeRegistrationCopyWith(
          StakeRegistration value, $Res Function(StakeRegistration) _then) =
      _$StakeRegistrationCopyWithImpl;
  @useResult
  $Res call({ParsedCredential stakeCredential});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$StakeRegistrationCopyWithImpl<$Res>
    implements $StakeRegistrationCopyWith<$Res> {
  _$StakeRegistrationCopyWithImpl(this._self, this._then);

  final StakeRegistration _self;
  final $Res Function(StakeRegistration) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
  }) {
    return _then(StakeRegistration(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class StakeRegistrationConway extends ParsedCertificate {
  StakeRegistrationConway(
      {required this.stakeCredential, required this.deposit})
      : super._();

  final ParsedCredential stakeCredential;
  final BigInt deposit;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakeRegistrationConwayCopyWith<StakeRegistrationConway> get copyWith =>
      _$StakeRegistrationConwayCopyWithImpl<StakeRegistrationConway>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakeRegistrationConway &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, deposit);

  @override
  String toString() {
    return 'ParsedCertificate.stakeRegistrationConway(stakeCredential: $stakeCredential, deposit: $deposit)';
  }
}

/// @nodoc
abstract mixin class $StakeRegistrationConwayCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $StakeRegistrationConwayCopyWith(StakeRegistrationConway value,
          $Res Function(StakeRegistrationConway) _then) =
      _$StakeRegistrationConwayCopyWithImpl;
  @useResult
  $Res call({ParsedCredential stakeCredential, BigInt deposit});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$StakeRegistrationConwayCopyWithImpl<$Res>
    implements $StakeRegistrationConwayCopyWith<$Res> {
  _$StakeRegistrationConwayCopyWithImpl(this._self, this._then);

  final StakeRegistrationConway _self;
  final $Res Function(StakeRegistrationConway) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? deposit = null,
  }) {
    return _then(StakeRegistrationConway(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      deposit: null == deposit
          ? _self.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class StakeDeregistration extends ParsedCertificate {
  StakeDeregistration({required this.stakeCredential}) : super._();

  final ParsedCredential stakeCredential;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakeDeregistrationCopyWith<StakeDeregistration> get copyWith =>
      _$StakeDeregistrationCopyWithImpl<StakeDeregistration>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakeDeregistration &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential);

  @override
  String toString() {
    return 'ParsedCertificate.stakeDeregistration(stakeCredential: $stakeCredential)';
  }
}

/// @nodoc
abstract mixin class $StakeDeregistrationCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $StakeDeregistrationCopyWith(
          StakeDeregistration value, $Res Function(StakeDeregistration) _then) =
      _$StakeDeregistrationCopyWithImpl;
  @useResult
  $Res call({ParsedCredential stakeCredential});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$StakeDeregistrationCopyWithImpl<$Res>
    implements $StakeDeregistrationCopyWith<$Res> {
  _$StakeDeregistrationCopyWithImpl(this._self, this._then);

  final StakeDeregistration _self;
  final $Res Function(StakeDeregistration) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
  }) {
    return _then(StakeDeregistration(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class StakeDeregistrationConway extends ParsedCertificate {
  StakeDeregistrationConway(
      {required this.stakeCredential, required this.deposit})
      : super._();

  final ParsedCredential stakeCredential;
  final BigInt deposit;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakeDeregistrationConwayCopyWith<StakeDeregistrationConway> get copyWith =>
      _$StakeDeregistrationConwayCopyWithImpl<StakeDeregistrationConway>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakeDeregistrationConway &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, deposit);

  @override
  String toString() {
    return 'ParsedCertificate.stakeDeregistrationConway(stakeCredential: $stakeCredential, deposit: $deposit)';
  }
}

/// @nodoc
abstract mixin class $StakeDeregistrationConwayCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $StakeDeregistrationConwayCopyWith(StakeDeregistrationConway value,
          $Res Function(StakeDeregistrationConway) _then) =
      _$StakeDeregistrationConwayCopyWithImpl;
  @useResult
  $Res call({ParsedCredential stakeCredential, BigInt deposit});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$StakeDeregistrationConwayCopyWithImpl<$Res>
    implements $StakeDeregistrationConwayCopyWith<$Res> {
  _$StakeDeregistrationConwayCopyWithImpl(this._self, this._then);

  final StakeDeregistrationConway _self;
  final $Res Function(StakeDeregistrationConway) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? deposit = null,
  }) {
    return _then(StakeDeregistrationConway(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      deposit: null == deposit
          ? _self.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class StakeDelegation extends ParsedCertificate {
  StakeDelegation({required this.stakeCredential, required this.poolKeyHashHex})
      : super._();

  final ParsedCredential stakeCredential;
  final String poolKeyHashHex;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakeDelegationCopyWith<StakeDelegation> get copyWith =>
      _$StakeDelegationCopyWithImpl<StakeDelegation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakeDelegation &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.poolKeyHashHex, poolKeyHashHex) ||
                other.poolKeyHashHex == poolKeyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, poolKeyHashHex);

  @override
  String toString() {
    return 'ParsedCertificate.stakeDelegation(stakeCredential: $stakeCredential, poolKeyHashHex: $poolKeyHashHex)';
  }
}

/// @nodoc
abstract mixin class $StakeDelegationCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $StakeDelegationCopyWith(
          StakeDelegation value, $Res Function(StakeDelegation) _then) =
      _$StakeDelegationCopyWithImpl;
  @useResult
  $Res call({ParsedCredential stakeCredential, String poolKeyHashHex});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$StakeDelegationCopyWithImpl<$Res>
    implements $StakeDelegationCopyWith<$Res> {
  _$StakeDelegationCopyWithImpl(this._self, this._then);

  final StakeDelegation _self;
  final $Res Function(StakeDelegation) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? poolKeyHashHex = null,
  }) {
    return _then(StakeDelegation(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      poolKeyHashHex: null == poolKeyHashHex
          ? _self.poolKeyHashHex
          : poolKeyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }
}

/// @nodoc

class VoteDelegation extends ParsedCertificate {
  VoteDelegation({required this.stakeCredential, required this.dRep})
      : super._();

  final ParsedCredential stakeCredential;
  final ParsedDRep dRep;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VoteDelegationCopyWith<VoteDelegation> get copyWith =>
      _$VoteDelegationCopyWithImpl<VoteDelegation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VoteDelegation &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential) &&
            (identical(other.dRep, dRep) || other.dRep == dRep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakeCredential, dRep);

  @override
  String toString() {
    return 'ParsedCertificate.voteDelegation(stakeCredential: $stakeCredential, dRep: $dRep)';
  }
}

/// @nodoc
abstract mixin class $VoteDelegationCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $VoteDelegationCopyWith(
          VoteDelegation value, $Res Function(VoteDelegation) _then) =
      _$VoteDelegationCopyWithImpl;
  @useResult
  $Res call({ParsedCredential stakeCredential, ParsedDRep dRep});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
  $ParsedDRepCopyWith<$Res> get dRep;
}

/// @nodoc
class _$VoteDelegationCopyWithImpl<$Res>
    implements $VoteDelegationCopyWith<$Res> {
  _$VoteDelegationCopyWithImpl(this._self, this._then);

  final VoteDelegation _self;
  final $Res Function(VoteDelegation) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stakeCredential = null,
    Object? dRep = null,
  }) {
    return _then(VoteDelegation(
      stakeCredential: null == stakeCredential
          ? _self.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      dRep: null == dRep
          ? _self.dRep
          : dRep // ignore: cast_nullable_to_non_nullable
              as ParsedDRep,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.stakeCredential, (value) {
      return _then(_self.copyWith(stakeCredential: value));
    });
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedDRepCopyWith<$Res> get dRep {
    return $ParsedDRepCopyWith<$Res>(_self.dRep, (value) {
      return _then(_self.copyWith(dRep: value));
    });
  }
}

/// @nodoc

class AuthorizeCommitteeHot extends ParsedCertificate {
  AuthorizeCommitteeHot(
      {required this.coldCredential, required this.hotCredential})
      : super._();

  final ParsedCredential coldCredential;
  final ParsedCredential hotCredential;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthorizeCommitteeHotCopyWith<AuthorizeCommitteeHot> get copyWith =>
      _$AuthorizeCommitteeHotCopyWithImpl<AuthorizeCommitteeHot>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthorizeCommitteeHot &&
            (identical(other.coldCredential, coldCredential) ||
                other.coldCredential == coldCredential) &&
            (identical(other.hotCredential, hotCredential) ||
                other.hotCredential == hotCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coldCredential, hotCredential);

  @override
  String toString() {
    return 'ParsedCertificate.authorizeCommitteeHot(coldCredential: $coldCredential, hotCredential: $hotCredential)';
  }
}

/// @nodoc
abstract mixin class $AuthorizeCommitteeHotCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $AuthorizeCommitteeHotCopyWith(AuthorizeCommitteeHot value,
          $Res Function(AuthorizeCommitteeHot) _then) =
      _$AuthorizeCommitteeHotCopyWithImpl;
  @useResult
  $Res call({ParsedCredential coldCredential, ParsedCredential hotCredential});

  $ParsedCredentialCopyWith<$Res> get coldCredential;
  $ParsedCredentialCopyWith<$Res> get hotCredential;
}

/// @nodoc
class _$AuthorizeCommitteeHotCopyWithImpl<$Res>
    implements $AuthorizeCommitteeHotCopyWith<$Res> {
  _$AuthorizeCommitteeHotCopyWithImpl(this._self, this._then);

  final AuthorizeCommitteeHot _self;
  final $Res Function(AuthorizeCommitteeHot) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coldCredential = null,
    Object? hotCredential = null,
  }) {
    return _then(AuthorizeCommitteeHot(
      coldCredential: null == coldCredential
          ? _self.coldCredential
          : coldCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      hotCredential: null == hotCredential
          ? _self.hotCredential
          : hotCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get coldCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.coldCredential, (value) {
      return _then(_self.copyWith(coldCredential: value));
    });
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get hotCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.hotCredential, (value) {
      return _then(_self.copyWith(hotCredential: value));
    });
  }
}

/// @nodoc

class ResignCommitteeCold extends ParsedCertificate {
  ResignCommitteeCold({required this.coldCredential, this.anchor}) : super._();

  final ParsedCredential coldCredential;
  final ParsedAnchor? anchor;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResignCommitteeColdCopyWith<ResignCommitteeCold> get copyWith =>
      _$ResignCommitteeColdCopyWithImpl<ResignCommitteeCold>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResignCommitteeCold &&
            (identical(other.coldCredential, coldCredential) ||
                other.coldCredential == coldCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coldCredential, anchor);

  @override
  String toString() {
    return 'ParsedCertificate.resignCommitteeCold(coldCredential: $coldCredential, anchor: $anchor)';
  }
}

/// @nodoc
abstract mixin class $ResignCommitteeColdCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $ResignCommitteeColdCopyWith(
          ResignCommitteeCold value, $Res Function(ResignCommitteeCold) _then) =
      _$ResignCommitteeColdCopyWithImpl;
  @useResult
  $Res call({ParsedCredential coldCredential, ParsedAnchor? anchor});

  $ParsedCredentialCopyWith<$Res> get coldCredential;
  $ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$ResignCommitteeColdCopyWithImpl<$Res>
    implements $ResignCommitteeColdCopyWith<$Res> {
  _$ResignCommitteeColdCopyWithImpl(this._self, this._then);

  final ResignCommitteeCold _self;
  final $Res Function(ResignCommitteeCold) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coldCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(ResignCommitteeCold(
      coldCredential: null == coldCredential
          ? _self.coldCredential
          : coldCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      anchor: freezed == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor?,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get coldCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.coldCredential, (value) {
      return _then(_self.copyWith(coldCredential: value));
    });
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedAnchorCopyWith<$Res>? get anchor {
    if (_self.anchor == null) {
      return null;
    }

    return $ParsedAnchorCopyWith<$Res>(_self.anchor!, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class DRepRegistration extends ParsedCertificate {
  DRepRegistration(
      {required this.dRepCredential, required this.deposit, this.anchor})
      : super._();

  final ParsedCredential dRepCredential;
  final BigInt deposit;
  final ParsedAnchor? anchor;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DRepRegistrationCopyWith<DRepRegistration> get copyWith =>
      _$DRepRegistrationCopyWithImpl<DRepRegistration>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DRepRegistration &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, deposit, anchor);

  @override
  String toString() {
    return 'ParsedCertificate.dRepRegistration(dRepCredential: $dRepCredential, deposit: $deposit, anchor: $anchor)';
  }
}

/// @nodoc
abstract mixin class $DRepRegistrationCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $DRepRegistrationCopyWith(
          DRepRegistration value, $Res Function(DRepRegistration) _then) =
      _$DRepRegistrationCopyWithImpl;
  @useResult
  $Res call(
      {ParsedCredential dRepCredential, BigInt deposit, ParsedAnchor? anchor});

  $ParsedCredentialCopyWith<$Res> get dRepCredential;
  $ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$DRepRegistrationCopyWithImpl<$Res>
    implements $DRepRegistrationCopyWith<$Res> {
  _$DRepRegistrationCopyWithImpl(this._self, this._then);

  final DRepRegistration _self;
  final $Res Function(DRepRegistration) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dRepCredential = null,
    Object? deposit = null,
    Object? anchor = freezed,
  }) {
    return _then(DRepRegistration(
      dRepCredential: null == dRepCredential
          ? _self.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      deposit: null == deposit
          ? _self.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
      anchor: freezed == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor?,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get dRepCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.dRepCredential, (value) {
      return _then(_self.copyWith(dRepCredential: value));
    });
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedAnchorCopyWith<$Res>? get anchor {
    if (_self.anchor == null) {
      return null;
    }

    return $ParsedAnchorCopyWith<$Res>(_self.anchor!, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class DRepDeregistration extends ParsedCertificate {
  DRepDeregistration({required this.dRepCredential, required this.deposit})
      : super._();

  final ParsedCredential dRepCredential;
  final BigInt deposit;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DRepDeregistrationCopyWith<DRepDeregistration> get copyWith =>
      _$DRepDeregistrationCopyWithImpl<DRepDeregistration>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DRepDeregistration &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, deposit);

  @override
  String toString() {
    return 'ParsedCertificate.dRepDeregistration(dRepCredential: $dRepCredential, deposit: $deposit)';
  }
}

/// @nodoc
abstract mixin class $DRepDeregistrationCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $DRepDeregistrationCopyWith(
          DRepDeregistration value, $Res Function(DRepDeregistration) _then) =
      _$DRepDeregistrationCopyWithImpl;
  @useResult
  $Res call({ParsedCredential dRepCredential, BigInt deposit});

  $ParsedCredentialCopyWith<$Res> get dRepCredential;
}

/// @nodoc
class _$DRepDeregistrationCopyWithImpl<$Res>
    implements $DRepDeregistrationCopyWith<$Res> {
  _$DRepDeregistrationCopyWithImpl(this._self, this._then);

  final DRepDeregistration _self;
  final $Res Function(DRepDeregistration) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dRepCredential = null,
    Object? deposit = null,
  }) {
    return _then(DRepDeregistration(
      dRepCredential: null == dRepCredential
          ? _self.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      deposit: null == deposit
          ? _self.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get dRepCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.dRepCredential, (value) {
      return _then(_self.copyWith(dRepCredential: value));
    });
  }
}

/// @nodoc

class DRepUpdate extends ParsedCertificate {
  DRepUpdate({required this.dRepCredential, this.anchor}) : super._();

  final ParsedCredential dRepCredential;
  final ParsedAnchor? anchor;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DRepUpdateCopyWith<DRepUpdate> get copyWith =>
      _$DRepUpdateCopyWithImpl<DRepUpdate>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DRepUpdate &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, anchor);

  @override
  String toString() {
    return 'ParsedCertificate.dRepUpdate(dRepCredential: $dRepCredential, anchor: $anchor)';
  }
}

/// @nodoc
abstract mixin class $DRepUpdateCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $DRepUpdateCopyWith(
          DRepUpdate value, $Res Function(DRepUpdate) _then) =
      _$DRepUpdateCopyWithImpl;
  @useResult
  $Res call({ParsedCredential dRepCredential, ParsedAnchor? anchor});

  $ParsedCredentialCopyWith<$Res> get dRepCredential;
  $ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$DRepUpdateCopyWithImpl<$Res> implements $DRepUpdateCopyWith<$Res> {
  _$DRepUpdateCopyWithImpl(this._self, this._then);

  final DRepUpdate _self;
  final $Res Function(DRepUpdate) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dRepCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(DRepUpdate(
      dRepCredential: null == dRepCredential
          ? _self.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
      anchor: freezed == anchor
          ? _self.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor?,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get dRepCredential {
    return $ParsedCredentialCopyWith<$Res>(_self.dRepCredential, (value) {
      return _then(_self.copyWith(dRepCredential: value));
    });
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedAnchorCopyWith<$Res>? get anchor {
    if (_self.anchor == null) {
      return null;
    }

    return $ParsedAnchorCopyWith<$Res>(_self.anchor!, (value) {
      return _then(_self.copyWith(anchor: value));
    });
  }
}

/// @nodoc

class StakePoolRegistration extends ParsedCertificate {
  StakePoolRegistration({required this.pool}) : super._();

  final ParsedPoolParams pool;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakePoolRegistrationCopyWith<StakePoolRegistration> get copyWith =>
      _$StakePoolRegistrationCopyWithImpl<StakePoolRegistration>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakePoolRegistration &&
            (identical(other.pool, pool) || other.pool == pool));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pool);

  @override
  String toString() {
    return 'ParsedCertificate.stakePoolRegistration(pool: $pool)';
  }
}

/// @nodoc
abstract mixin class $StakePoolRegistrationCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $StakePoolRegistrationCopyWith(StakePoolRegistration value,
          $Res Function(StakePoolRegistration) _then) =
      _$StakePoolRegistrationCopyWithImpl;
  @useResult
  $Res call({ParsedPoolParams pool});

  $ParsedPoolParamsCopyWith<$Res> get pool;
}

/// @nodoc
class _$StakePoolRegistrationCopyWithImpl<$Res>
    implements $StakePoolRegistrationCopyWith<$Res> {
  _$StakePoolRegistrationCopyWithImpl(this._self, this._then);

  final StakePoolRegistration _self;
  final $Res Function(StakePoolRegistration) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pool = null,
  }) {
    return _then(StakePoolRegistration(
      pool: null == pool
          ? _self.pool
          : pool // ignore: cast_nullable_to_non_nullable
              as ParsedPoolParams,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolParamsCopyWith<$Res> get pool {
    return $ParsedPoolParamsCopyWith<$Res>(_self.pool, (value) {
      return _then(_self.copyWith(pool: value));
    });
  }
}

/// @nodoc

class StakePoolRetirement extends ParsedCertificate {
  StakePoolRetirement({required this.path, required this.retirementEpoch})
      : super._();

  final LedgerSigningPath path;
  final BigInt retirementEpoch;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakePoolRetirementCopyWith<StakePoolRetirement> get copyWith =>
      _$StakePoolRetirementCopyWithImpl<StakePoolRetirement>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakePoolRetirement &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.retirementEpoch, retirementEpoch) ||
                other.retirementEpoch == retirementEpoch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, retirementEpoch);

  @override
  String toString() {
    return 'ParsedCertificate.stakePoolRetirement(path: $path, retirementEpoch: $retirementEpoch)';
  }
}

/// @nodoc
abstract mixin class $StakePoolRetirementCopyWith<$Res>
    implements $ParsedCertificateCopyWith<$Res> {
  factory $StakePoolRetirementCopyWith(
          StakePoolRetirement value, $Res Function(StakePoolRetirement) _then) =
      _$StakePoolRetirementCopyWithImpl;
  @useResult
  $Res call({LedgerSigningPath path, BigInt retirementEpoch});

  $LedgerSigningPathCopyWith<$Res> get path;
}

/// @nodoc
class _$StakePoolRetirementCopyWithImpl<$Res>
    implements $StakePoolRetirementCopyWith<$Res> {
  _$StakePoolRetirementCopyWithImpl(this._self, this._then);

  final StakePoolRetirement _self;
  final $Res Function(StakePoolRetirement) _then;

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? path = null,
    Object? retirementEpoch = null,
  }) {
    return _then(StakePoolRetirement(
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
      retirementEpoch: null == retirementEpoch
          ? _self.retirementEpoch
          : retirementEpoch // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }

  /// Create a copy of ParsedCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get path {
    return $LedgerSigningPathCopyWith<$Res>(_self.path, (value) {
      return _then(_self.copyWith(path: value));
    });
  }
}

// dart format on
