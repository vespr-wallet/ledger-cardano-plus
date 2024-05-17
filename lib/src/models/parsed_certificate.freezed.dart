// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedCertificate {










}

/// @nodoc
abstract class $ParsedCertificateCopyWith<$Res>  {
  factory $ParsedCertificateCopyWith(ParsedCertificate value, $Res Function(ParsedCertificate) then) = _$ParsedCertificateCopyWithImpl<$Res, ParsedCertificate>;



}

/// @nodoc
class _$ParsedCertificateCopyWithImpl<$Res,$Val extends ParsedCertificate> implements $ParsedCertificateCopyWith<$Res> {
  _$ParsedCertificateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;



}


/// @nodoc
abstract class _$$StakeRegistrationImplCopyWith<$Res>  {
  factory _$$StakeRegistrationImplCopyWith(_$StakeRegistrationImpl value, $Res Function(_$StakeRegistrationImpl) then) = __$$StakeRegistrationImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential stakeCredential
});


$ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeRegistrationImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$StakeRegistrationImpl> implements _$$StakeRegistrationImplCopyWith<$Res> {
  __$$StakeRegistrationImplCopyWithImpl(_$StakeRegistrationImpl _value, $Res Function(_$StakeRegistrationImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? stakeCredential = null,}) {
  return _then(_$StakeRegistrationImpl(
stakeCredential: null == stakeCredential ? _value.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get stakeCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
    return _then(_value.copyWith(stakeCredential: value) );
  });
}
}

/// @nodoc


class _$StakeRegistrationImpl extends StakeRegistration  {
   _$StakeRegistrationImpl({required this.stakeCredential}): super._();

  

@override final  ParsedCredential stakeCredential;

@override
String toString() {
  return 'ParsedCertificate.stakeRegistration(stakeCredential: $stakeCredential)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakeRegistrationImpl&&(identical(other.stakeCredential, stakeCredential) || other.stakeCredential == stakeCredential));
}


@override
int get hashCode => Object.hash(runtimeType,stakeCredential);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$StakeRegistrationImplCopyWith<_$StakeRegistrationImpl> get copyWith => __$$StakeRegistrationImplCopyWithImpl<_$StakeRegistrationImpl>(this, _$identity);








}


abstract class StakeRegistration extends ParsedCertificate {
   factory StakeRegistration({required final  ParsedCredential stakeCredential}) = _$StakeRegistrationImpl;
   StakeRegistration._(): super._();

  

 ParsedCredential get stakeCredential;
@JsonKey(ignore: true)
_$$StakeRegistrationImplCopyWith<_$StakeRegistrationImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakeRegistrationConwayImplCopyWith<$Res>  {
  factory _$$StakeRegistrationConwayImplCopyWith(_$StakeRegistrationConwayImpl value, $Res Function(_$StakeRegistrationConwayImpl) then) = __$$StakeRegistrationConwayImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential stakeCredential, BigInt deposit
});


$ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeRegistrationConwayImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$StakeRegistrationConwayImpl> implements _$$StakeRegistrationConwayImplCopyWith<$Res> {
  __$$StakeRegistrationConwayImplCopyWithImpl(_$StakeRegistrationConwayImpl _value, $Res Function(_$StakeRegistrationConwayImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? stakeCredential = null,Object? deposit = null,}) {
  return _then(_$StakeRegistrationConwayImpl(
stakeCredential: null == stakeCredential ? _value.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,deposit: null == deposit ? _value.deposit : deposit // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get stakeCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
    return _then(_value.copyWith(stakeCredential: value) );
  });
}
}

/// @nodoc


class _$StakeRegistrationConwayImpl extends StakeRegistrationConway  {
   _$StakeRegistrationConwayImpl({required this.stakeCredential, required this.deposit}): super._();

  

@override final  ParsedCredential stakeCredential;
@override final  BigInt deposit;

@override
String toString() {
  return 'ParsedCertificate.stakeRegistrationConway(stakeCredential: $stakeCredential, deposit: $deposit)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakeRegistrationConwayImpl&&(identical(other.stakeCredential, stakeCredential) || other.stakeCredential == stakeCredential)&&(identical(other.deposit, deposit) || other.deposit == deposit));
}


@override
int get hashCode => Object.hash(runtimeType,stakeCredential,deposit);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$StakeRegistrationConwayImplCopyWith<_$StakeRegistrationConwayImpl> get copyWith => __$$StakeRegistrationConwayImplCopyWithImpl<_$StakeRegistrationConwayImpl>(this, _$identity);








}


abstract class StakeRegistrationConway extends ParsedCertificate {
   factory StakeRegistrationConway({required final  ParsedCredential stakeCredential, required final  BigInt deposit}) = _$StakeRegistrationConwayImpl;
   StakeRegistrationConway._(): super._();

  

 ParsedCredential get stakeCredential; BigInt get deposit;
@JsonKey(ignore: true)
_$$StakeRegistrationConwayImplCopyWith<_$StakeRegistrationConwayImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakeDeregistrationImplCopyWith<$Res>  {
  factory _$$StakeDeregistrationImplCopyWith(_$StakeDeregistrationImpl value, $Res Function(_$StakeDeregistrationImpl) then) = __$$StakeDeregistrationImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential stakeCredential
});


$ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeDeregistrationImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$StakeDeregistrationImpl> implements _$$StakeDeregistrationImplCopyWith<$Res> {
  __$$StakeDeregistrationImplCopyWithImpl(_$StakeDeregistrationImpl _value, $Res Function(_$StakeDeregistrationImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? stakeCredential = null,}) {
  return _then(_$StakeDeregistrationImpl(
stakeCredential: null == stakeCredential ? _value.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get stakeCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
    return _then(_value.copyWith(stakeCredential: value) );
  });
}
}

/// @nodoc


class _$StakeDeregistrationImpl extends StakeDeregistration  {
   _$StakeDeregistrationImpl({required this.stakeCredential}): super._();

  

@override final  ParsedCredential stakeCredential;

@override
String toString() {
  return 'ParsedCertificate.stakeDeregistration(stakeCredential: $stakeCredential)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakeDeregistrationImpl&&(identical(other.stakeCredential, stakeCredential) || other.stakeCredential == stakeCredential));
}


@override
int get hashCode => Object.hash(runtimeType,stakeCredential);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$StakeDeregistrationImplCopyWith<_$StakeDeregistrationImpl> get copyWith => __$$StakeDeregistrationImplCopyWithImpl<_$StakeDeregistrationImpl>(this, _$identity);








}


abstract class StakeDeregistration extends ParsedCertificate {
   factory StakeDeregistration({required final  ParsedCredential stakeCredential}) = _$StakeDeregistrationImpl;
   StakeDeregistration._(): super._();

  

 ParsedCredential get stakeCredential;
@JsonKey(ignore: true)
_$$StakeDeregistrationImplCopyWith<_$StakeDeregistrationImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakeDeregistrationConwayImplCopyWith<$Res>  {
  factory _$$StakeDeregistrationConwayImplCopyWith(_$StakeDeregistrationConwayImpl value, $Res Function(_$StakeDeregistrationConwayImpl) then) = __$$StakeDeregistrationConwayImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential stakeCredential, BigInt deposit
});


$ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeDeregistrationConwayImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$StakeDeregistrationConwayImpl> implements _$$StakeDeregistrationConwayImplCopyWith<$Res> {
  __$$StakeDeregistrationConwayImplCopyWithImpl(_$StakeDeregistrationConwayImpl _value, $Res Function(_$StakeDeregistrationConwayImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? stakeCredential = null,Object? deposit = null,}) {
  return _then(_$StakeDeregistrationConwayImpl(
stakeCredential: null == stakeCredential ? _value.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,deposit: null == deposit ? _value.deposit : deposit // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get stakeCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
    return _then(_value.copyWith(stakeCredential: value) );
  });
}
}

/// @nodoc


class _$StakeDeregistrationConwayImpl extends StakeDeregistrationConway  {
   _$StakeDeregistrationConwayImpl({required this.stakeCredential, required this.deposit}): super._();

  

@override final  ParsedCredential stakeCredential;
@override final  BigInt deposit;

@override
String toString() {
  return 'ParsedCertificate.stakeDeregistrationConway(stakeCredential: $stakeCredential, deposit: $deposit)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakeDeregistrationConwayImpl&&(identical(other.stakeCredential, stakeCredential) || other.stakeCredential == stakeCredential)&&(identical(other.deposit, deposit) || other.deposit == deposit));
}


@override
int get hashCode => Object.hash(runtimeType,stakeCredential,deposit);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$StakeDeregistrationConwayImplCopyWith<_$StakeDeregistrationConwayImpl> get copyWith => __$$StakeDeregistrationConwayImplCopyWithImpl<_$StakeDeregistrationConwayImpl>(this, _$identity);








}


abstract class StakeDeregistrationConway extends ParsedCertificate {
   factory StakeDeregistrationConway({required final  ParsedCredential stakeCredential, required final  BigInt deposit}) = _$StakeDeregistrationConwayImpl;
   StakeDeregistrationConway._(): super._();

  

 ParsedCredential get stakeCredential; BigInt get deposit;
@JsonKey(ignore: true)
_$$StakeDeregistrationConwayImplCopyWith<_$StakeDeregistrationConwayImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakeDelegationImplCopyWith<$Res>  {
  factory _$$StakeDelegationImplCopyWith(_$StakeDelegationImpl value, $Res Function(_$StakeDelegationImpl) then) = __$$StakeDelegationImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential stakeCredential, String poolKeyHashHex
});


$ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$StakeDelegationImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$StakeDelegationImpl> implements _$$StakeDelegationImplCopyWith<$Res> {
  __$$StakeDelegationImplCopyWithImpl(_$StakeDelegationImpl _value, $Res Function(_$StakeDelegationImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? stakeCredential = null,Object? poolKeyHashHex = null,}) {
  return _then(_$StakeDelegationImpl(
stakeCredential: null == stakeCredential ? _value.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,poolKeyHashHex: null == poolKeyHashHex ? _value.poolKeyHashHex : poolKeyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get stakeCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
    return _then(_value.copyWith(stakeCredential: value) );
  });
}
}

/// @nodoc


class _$StakeDelegationImpl extends StakeDelegation  {
   _$StakeDelegationImpl({required this.stakeCredential, required this.poolKeyHashHex}): super._();

  

@override final  ParsedCredential stakeCredential;
@override final  String poolKeyHashHex;

@override
String toString() {
  return 'ParsedCertificate.stakeDelegation(stakeCredential: $stakeCredential, poolKeyHashHex: $poolKeyHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakeDelegationImpl&&(identical(other.stakeCredential, stakeCredential) || other.stakeCredential == stakeCredential)&&(identical(other.poolKeyHashHex, poolKeyHashHex) || other.poolKeyHashHex == poolKeyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,stakeCredential,poolKeyHashHex);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$StakeDelegationImplCopyWith<_$StakeDelegationImpl> get copyWith => __$$StakeDelegationImplCopyWithImpl<_$StakeDelegationImpl>(this, _$identity);








}


abstract class StakeDelegation extends ParsedCertificate {
   factory StakeDelegation({required final  ParsedCredential stakeCredential, required final  String poolKeyHashHex}) = _$StakeDelegationImpl;
   StakeDelegation._(): super._();

  

 ParsedCredential get stakeCredential; String get poolKeyHashHex;
@JsonKey(ignore: true)
_$$StakeDelegationImplCopyWith<_$StakeDelegationImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$VoteDelegationImplCopyWith<$Res>  {
  factory _$$VoteDelegationImplCopyWith(_$VoteDelegationImpl value, $Res Function(_$VoteDelegationImpl) then) = __$$VoteDelegationImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential stakeCredential, ParsedDRep dRep
});


$ParsedCredentialCopyWith<$Res> get stakeCredential;$ParsedDRepCopyWith<$Res> get dRep;
}

/// @nodoc
class __$$VoteDelegationImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$VoteDelegationImpl> implements _$$VoteDelegationImplCopyWith<$Res> {
  __$$VoteDelegationImplCopyWithImpl(_$VoteDelegationImpl _value, $Res Function(_$VoteDelegationImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? stakeCredential = null,Object? dRep = null,}) {
  return _then(_$VoteDelegationImpl(
stakeCredential: null == stakeCredential ? _value.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,dRep: null == dRep ? _value.dRep : dRep // ignore: cast_nullable_to_non_nullable
as ParsedDRep,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get stakeCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
    return _then(_value.copyWith(stakeCredential: value) );
  });
}@override
@pragma('vm:prefer-inline')
$ParsedDRepCopyWith<$Res> get dRep {
  
  return $ParsedDRepCopyWith<$Res>(_value.dRep, (value) {
    return _then(_value.copyWith(dRep: value) );
  });
}
}

/// @nodoc


class _$VoteDelegationImpl extends VoteDelegation  {
   _$VoteDelegationImpl({required this.stakeCredential, required this.dRep}): super._();

  

@override final  ParsedCredential stakeCredential;
@override final  ParsedDRep dRep;

@override
String toString() {
  return 'ParsedCertificate.voteDelegation(stakeCredential: $stakeCredential, dRep: $dRep)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$VoteDelegationImpl&&(identical(other.stakeCredential, stakeCredential) || other.stakeCredential == stakeCredential)&&(identical(other.dRep, dRep) || other.dRep == dRep));
}


@override
int get hashCode => Object.hash(runtimeType,stakeCredential,dRep);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$VoteDelegationImplCopyWith<_$VoteDelegationImpl> get copyWith => __$$VoteDelegationImplCopyWithImpl<_$VoteDelegationImpl>(this, _$identity);








}


abstract class VoteDelegation extends ParsedCertificate {
   factory VoteDelegation({required final  ParsedCredential stakeCredential, required final  ParsedDRep dRep}) = _$VoteDelegationImpl;
   VoteDelegation._(): super._();

  

 ParsedCredential get stakeCredential; ParsedDRep get dRep;
@JsonKey(ignore: true)
_$$VoteDelegationImplCopyWith<_$VoteDelegationImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$AuthorizeCommitteeHotImplCopyWith<$Res>  {
  factory _$$AuthorizeCommitteeHotImplCopyWith(_$AuthorizeCommitteeHotImpl value, $Res Function(_$AuthorizeCommitteeHotImpl) then) = __$$AuthorizeCommitteeHotImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential coldCredential, ParsedCredential hotCredential
});


$ParsedCredentialCopyWith<$Res> get coldCredential;$ParsedCredentialCopyWith<$Res> get hotCredential;
}

/// @nodoc
class __$$AuthorizeCommitteeHotImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$AuthorizeCommitteeHotImpl> implements _$$AuthorizeCommitteeHotImplCopyWith<$Res> {
  __$$AuthorizeCommitteeHotImplCopyWithImpl(_$AuthorizeCommitteeHotImpl _value, $Res Function(_$AuthorizeCommitteeHotImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? coldCredential = null,Object? hotCredential = null,}) {
  return _then(_$AuthorizeCommitteeHotImpl(
coldCredential: null == coldCredential ? _value.coldCredential : coldCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,hotCredential: null == hotCredential ? _value.hotCredential : hotCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get coldCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.coldCredential, (value) {
    return _then(_value.copyWith(coldCredential: value) );
  });
}@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get hotCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.hotCredential, (value) {
    return _then(_value.copyWith(hotCredential: value) );
  });
}
}

/// @nodoc


class _$AuthorizeCommitteeHotImpl extends AuthorizeCommitteeHot  {
   _$AuthorizeCommitteeHotImpl({required this.coldCredential, required this.hotCredential}): super._();

  

@override final  ParsedCredential coldCredential;
@override final  ParsedCredential hotCredential;

@override
String toString() {
  return 'ParsedCertificate.authorizeCommitteeHot(coldCredential: $coldCredential, hotCredential: $hotCredential)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AuthorizeCommitteeHotImpl&&(identical(other.coldCredential, coldCredential) || other.coldCredential == coldCredential)&&(identical(other.hotCredential, hotCredential) || other.hotCredential == hotCredential));
}


@override
int get hashCode => Object.hash(runtimeType,coldCredential,hotCredential);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$AuthorizeCommitteeHotImplCopyWith<_$AuthorizeCommitteeHotImpl> get copyWith => __$$AuthorizeCommitteeHotImplCopyWithImpl<_$AuthorizeCommitteeHotImpl>(this, _$identity);








}


abstract class AuthorizeCommitteeHot extends ParsedCertificate {
   factory AuthorizeCommitteeHot({required final  ParsedCredential coldCredential, required final  ParsedCredential hotCredential}) = _$AuthorizeCommitteeHotImpl;
   AuthorizeCommitteeHot._(): super._();

  

 ParsedCredential get coldCredential; ParsedCredential get hotCredential;
@JsonKey(ignore: true)
_$$AuthorizeCommitteeHotImplCopyWith<_$AuthorizeCommitteeHotImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ResignCommitteeColdImplCopyWith<$Res>  {
  factory _$$ResignCommitteeColdImplCopyWith(_$ResignCommitteeColdImpl value, $Res Function(_$ResignCommitteeColdImpl) then) = __$$ResignCommitteeColdImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential coldCredential, ParsedAnchor? anchor
});


$ParsedCredentialCopyWith<$Res> get coldCredential;$ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$ResignCommitteeColdImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$ResignCommitteeColdImpl> implements _$$ResignCommitteeColdImplCopyWith<$Res> {
  __$$ResignCommitteeColdImplCopyWithImpl(_$ResignCommitteeColdImpl _value, $Res Function(_$ResignCommitteeColdImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? coldCredential = null,Object? anchor = freezed,}) {
  return _then(_$ResignCommitteeColdImpl(
coldCredential: null == coldCredential ? _value.coldCredential : coldCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,anchor: freezed == anchor ? _value.anchor : anchor // ignore: cast_nullable_to_non_nullable
as ParsedAnchor?,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get coldCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.coldCredential, (value) {
    return _then(_value.copyWith(coldCredential: value) );
  });
}@override
@pragma('vm:prefer-inline')
$ParsedAnchorCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
    return null;
  }

  return $ParsedAnchorCopyWith<$Res>(_value.anchor!, (value) {
    return _then(_value.copyWith(anchor: value) );
  });
}
}

/// @nodoc


class _$ResignCommitteeColdImpl extends ResignCommitteeCold  {
   _$ResignCommitteeColdImpl({required this.coldCredential, this.anchor}): super._();

  

@override final  ParsedCredential coldCredential;
@override final  ParsedAnchor? anchor;

@override
String toString() {
  return 'ParsedCertificate.resignCommitteeCold(coldCredential: $coldCredential, anchor: $anchor)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ResignCommitteeColdImpl&&(identical(other.coldCredential, coldCredential) || other.coldCredential == coldCredential)&&(identical(other.anchor, anchor) || other.anchor == anchor));
}


@override
int get hashCode => Object.hash(runtimeType,coldCredential,anchor);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$ResignCommitteeColdImplCopyWith<_$ResignCommitteeColdImpl> get copyWith => __$$ResignCommitteeColdImplCopyWithImpl<_$ResignCommitteeColdImpl>(this, _$identity);








}


abstract class ResignCommitteeCold extends ParsedCertificate {
   factory ResignCommitteeCold({required final  ParsedCredential coldCredential, final  ParsedAnchor? anchor}) = _$ResignCommitteeColdImpl;
   ResignCommitteeCold._(): super._();

  

 ParsedCredential get coldCredential; ParsedAnchor? get anchor;
@JsonKey(ignore: true)
_$$ResignCommitteeColdImplCopyWith<_$ResignCommitteeColdImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DRepRegistrationImplCopyWith<$Res>  {
  factory _$$DRepRegistrationImplCopyWith(_$DRepRegistrationImpl value, $Res Function(_$DRepRegistrationImpl) then) = __$$DRepRegistrationImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential dRepCredential, BigInt deposit, ParsedAnchor? anchor
});


$ParsedCredentialCopyWith<$Res> get dRepCredential;$ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$DRepRegistrationImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$DRepRegistrationImpl> implements _$$DRepRegistrationImplCopyWith<$Res> {
  __$$DRepRegistrationImplCopyWithImpl(_$DRepRegistrationImpl _value, $Res Function(_$DRepRegistrationImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? dRepCredential = null,Object? deposit = null,Object? anchor = freezed,}) {
  return _then(_$DRepRegistrationImpl(
dRepCredential: null == dRepCredential ? _value.dRepCredential : dRepCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,deposit: null == deposit ? _value.deposit : deposit // ignore: cast_nullable_to_non_nullable
as BigInt,anchor: freezed == anchor ? _value.anchor : anchor // ignore: cast_nullable_to_non_nullable
as ParsedAnchor?,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get dRepCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.dRepCredential, (value) {
    return _then(_value.copyWith(dRepCredential: value) );
  });
}@override
@pragma('vm:prefer-inline')
$ParsedAnchorCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
    return null;
  }

  return $ParsedAnchorCopyWith<$Res>(_value.anchor!, (value) {
    return _then(_value.copyWith(anchor: value) );
  });
}
}

/// @nodoc


class _$DRepRegistrationImpl extends DRepRegistration  {
   _$DRepRegistrationImpl({required this.dRepCredential, required this.deposit, this.anchor}): super._();

  

@override final  ParsedCredential dRepCredential;
@override final  BigInt deposit;
@override final  ParsedAnchor? anchor;

@override
String toString() {
  return 'ParsedCertificate.dRepRegistration(dRepCredential: $dRepCredential, deposit: $deposit, anchor: $anchor)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DRepRegistrationImpl&&(identical(other.dRepCredential, dRepCredential) || other.dRepCredential == dRepCredential)&&(identical(other.deposit, deposit) || other.deposit == deposit)&&(identical(other.anchor, anchor) || other.anchor == anchor));
}


@override
int get hashCode => Object.hash(runtimeType,dRepCredential,deposit,anchor);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$DRepRegistrationImplCopyWith<_$DRepRegistrationImpl> get copyWith => __$$DRepRegistrationImplCopyWithImpl<_$DRepRegistrationImpl>(this, _$identity);








}


abstract class DRepRegistration extends ParsedCertificate {
   factory DRepRegistration({required final  ParsedCredential dRepCredential, required final  BigInt deposit, final  ParsedAnchor? anchor}) = _$DRepRegistrationImpl;
   DRepRegistration._(): super._();

  

 ParsedCredential get dRepCredential; BigInt get deposit; ParsedAnchor? get anchor;
@JsonKey(ignore: true)
_$$DRepRegistrationImplCopyWith<_$DRepRegistrationImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DRepDeregistrationImplCopyWith<$Res>  {
  factory _$$DRepDeregistrationImplCopyWith(_$DRepDeregistrationImpl value, $Res Function(_$DRepDeregistrationImpl) then) = __$$DRepDeregistrationImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential dRepCredential, BigInt deposit
});


$ParsedCredentialCopyWith<$Res> get dRepCredential;
}

/// @nodoc
class __$$DRepDeregistrationImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$DRepDeregistrationImpl> implements _$$DRepDeregistrationImplCopyWith<$Res> {
  __$$DRepDeregistrationImplCopyWithImpl(_$DRepDeregistrationImpl _value, $Res Function(_$DRepDeregistrationImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? dRepCredential = null,Object? deposit = null,}) {
  return _then(_$DRepDeregistrationImpl(
dRepCredential: null == dRepCredential ? _value.dRepCredential : dRepCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,deposit: null == deposit ? _value.deposit : deposit // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get dRepCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.dRepCredential, (value) {
    return _then(_value.copyWith(dRepCredential: value) );
  });
}
}

/// @nodoc


class _$DRepDeregistrationImpl extends DRepDeregistration  {
   _$DRepDeregistrationImpl({required this.dRepCredential, required this.deposit}): super._();

  

@override final  ParsedCredential dRepCredential;
@override final  BigInt deposit;

@override
String toString() {
  return 'ParsedCertificate.dRepDeregistration(dRepCredential: $dRepCredential, deposit: $deposit)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DRepDeregistrationImpl&&(identical(other.dRepCredential, dRepCredential) || other.dRepCredential == dRepCredential)&&(identical(other.deposit, deposit) || other.deposit == deposit));
}


@override
int get hashCode => Object.hash(runtimeType,dRepCredential,deposit);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$DRepDeregistrationImplCopyWith<_$DRepDeregistrationImpl> get copyWith => __$$DRepDeregistrationImplCopyWithImpl<_$DRepDeregistrationImpl>(this, _$identity);








}


abstract class DRepDeregistration extends ParsedCertificate {
   factory DRepDeregistration({required final  ParsedCredential dRepCredential, required final  BigInt deposit}) = _$DRepDeregistrationImpl;
   DRepDeregistration._(): super._();

  

 ParsedCredential get dRepCredential; BigInt get deposit;
@JsonKey(ignore: true)
_$$DRepDeregistrationImplCopyWith<_$DRepDeregistrationImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DRepUpdateImplCopyWith<$Res>  {
  factory _$$DRepUpdateImplCopyWith(_$DRepUpdateImpl value, $Res Function(_$DRepUpdateImpl) then) = __$$DRepUpdateImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCredential dRepCredential, ParsedAnchor? anchor
});


$ParsedCredentialCopyWith<$Res> get dRepCredential;$ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$DRepUpdateImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$DRepUpdateImpl> implements _$$DRepUpdateImplCopyWith<$Res> {
  __$$DRepUpdateImplCopyWithImpl(_$DRepUpdateImpl _value, $Res Function(_$DRepUpdateImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? dRepCredential = null,Object? anchor = freezed,}) {
  return _then(_$DRepUpdateImpl(
dRepCredential: null == dRepCredential ? _value.dRepCredential : dRepCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,anchor: freezed == anchor ? _value.anchor : anchor // ignore: cast_nullable_to_non_nullable
as ParsedAnchor?,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get dRepCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.dRepCredential, (value) {
    return _then(_value.copyWith(dRepCredential: value) );
  });
}@override
@pragma('vm:prefer-inline')
$ParsedAnchorCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
    return null;
  }

  return $ParsedAnchorCopyWith<$Res>(_value.anchor!, (value) {
    return _then(_value.copyWith(anchor: value) );
  });
}
}

/// @nodoc


class _$DRepUpdateImpl extends DRepUpdate  {
   _$DRepUpdateImpl({required this.dRepCredential, this.anchor}): super._();

  

@override final  ParsedCredential dRepCredential;
@override final  ParsedAnchor? anchor;

@override
String toString() {
  return 'ParsedCertificate.dRepUpdate(dRepCredential: $dRepCredential, anchor: $anchor)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DRepUpdateImpl&&(identical(other.dRepCredential, dRepCredential) || other.dRepCredential == dRepCredential)&&(identical(other.anchor, anchor) || other.anchor == anchor));
}


@override
int get hashCode => Object.hash(runtimeType,dRepCredential,anchor);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$DRepUpdateImplCopyWith<_$DRepUpdateImpl> get copyWith => __$$DRepUpdateImplCopyWithImpl<_$DRepUpdateImpl>(this, _$identity);








}


abstract class DRepUpdate extends ParsedCertificate {
   factory DRepUpdate({required final  ParsedCredential dRepCredential, final  ParsedAnchor? anchor}) = _$DRepUpdateImpl;
   DRepUpdate._(): super._();

  

 ParsedCredential get dRepCredential; ParsedAnchor? get anchor;
@JsonKey(ignore: true)
_$$DRepUpdateImplCopyWith<_$DRepUpdateImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakePoolRegistrationImplCopyWith<$Res>  {
  factory _$$StakePoolRegistrationImplCopyWith(_$StakePoolRegistrationImpl value, $Res Function(_$StakePoolRegistrationImpl) then) = __$$StakePoolRegistrationImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedPoolParams pool
});


$ParsedPoolParamsCopyWith<$Res> get pool;
}

/// @nodoc
class __$$StakePoolRegistrationImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$StakePoolRegistrationImpl> implements _$$StakePoolRegistrationImplCopyWith<$Res> {
  __$$StakePoolRegistrationImplCopyWithImpl(_$StakePoolRegistrationImpl _value, $Res Function(_$StakePoolRegistrationImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? pool = null,}) {
  return _then(_$StakePoolRegistrationImpl(
pool: null == pool ? _value.pool : pool // ignore: cast_nullable_to_non_nullable
as ParsedPoolParams,
  ));
}

@override
@pragma('vm:prefer-inline')
$ParsedPoolParamsCopyWith<$Res> get pool {
  
  return $ParsedPoolParamsCopyWith<$Res>(_value.pool, (value) {
    return _then(_value.copyWith(pool: value) );
  });
}
}

/// @nodoc


class _$StakePoolRegistrationImpl extends StakePoolRegistration  {
   _$StakePoolRegistrationImpl({required this.pool}): super._();

  

@override final  ParsedPoolParams pool;

@override
String toString() {
  return 'ParsedCertificate.stakePoolRegistration(pool: $pool)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakePoolRegistrationImpl&&(identical(other.pool, pool) || other.pool == pool));
}


@override
int get hashCode => Object.hash(runtimeType,pool);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$StakePoolRegistrationImplCopyWith<_$StakePoolRegistrationImpl> get copyWith => __$$StakePoolRegistrationImplCopyWithImpl<_$StakePoolRegistrationImpl>(this, _$identity);








}


abstract class StakePoolRegistration extends ParsedCertificate {
   factory StakePoolRegistration({required final  ParsedPoolParams pool}) = _$StakePoolRegistrationImpl;
   StakePoolRegistration._(): super._();

  

 ParsedPoolParams get pool;
@JsonKey(ignore: true)
_$$StakePoolRegistrationImplCopyWith<_$StakePoolRegistrationImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakePoolRetirementImplCopyWith<$Res>  {
  factory _$$StakePoolRetirementImplCopyWith(_$StakePoolRetirementImpl value, $Res Function(_$StakePoolRetirementImpl) then) = __$$StakePoolRetirementImplCopyWithImpl<$Res>;
@useResult
$Res call({
 LedgerSigningPath path, BigInt retirementEpoch
});


$LedgerSigningPathCopyWith<$Res> get path;
}

/// @nodoc
class __$$StakePoolRetirementImplCopyWithImpl<$Res> extends _$ParsedCertificateCopyWithImpl<$Res, _$StakePoolRetirementImpl> implements _$$StakePoolRetirementImplCopyWith<$Res> {
  __$$StakePoolRetirementImplCopyWithImpl(_$StakePoolRetirementImpl _value, $Res Function(_$StakePoolRetirementImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? retirementEpoch = null,}) {
  return _then(_$StakePoolRetirementImpl(
path: null == path ? _value.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,retirementEpoch: null == retirementEpoch ? _value.retirementEpoch : retirementEpoch // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get path {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.path, (value) {
    return _then(_value.copyWith(path: value) );
  });
}
}

/// @nodoc


class _$StakePoolRetirementImpl extends StakePoolRetirement  {
   _$StakePoolRetirementImpl({required this.path, required this.retirementEpoch}): super._();

  

@override final  LedgerSigningPath path;
@override final  BigInt retirementEpoch;

@override
String toString() {
  return 'ParsedCertificate.stakePoolRetirement(path: $path, retirementEpoch: $retirementEpoch)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakePoolRetirementImpl&&(identical(other.path, path) || other.path == path)&&(identical(other.retirementEpoch, retirementEpoch) || other.retirementEpoch == retirementEpoch));
}


@override
int get hashCode => Object.hash(runtimeType,path,retirementEpoch);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$StakePoolRetirementImplCopyWith<_$StakePoolRetirementImpl> get copyWith => __$$StakePoolRetirementImplCopyWithImpl<_$StakePoolRetirementImpl>(this, _$identity);








}


abstract class StakePoolRetirement extends ParsedCertificate {
   factory StakePoolRetirement({required final  LedgerSigningPath path, required final  BigInt retirementEpoch}) = _$StakePoolRetirementImpl;
   StakePoolRetirement._(): super._();

  

 LedgerSigningPath get path; BigInt get retirementEpoch;
@JsonKey(ignore: true)
_$$StakePoolRetirementImplCopyWith<_$StakePoolRetirementImpl> get copyWith => throw _privateConstructorUsedError;

}
