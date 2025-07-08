// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_operational_certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedOperationalCertificate {

 String get kesPublicKeyHex; BigInt get kesPeriod; BigInt get issueCounter; LedgerSigningPath get coldKeyPath;
/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedOperationalCertificateCopyWith<ParsedOperationalCertificate> get copyWith => _$ParsedOperationalCertificateCopyWithImpl<ParsedOperationalCertificate>(this as ParsedOperationalCertificate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedOperationalCertificate&&(identical(other.kesPublicKeyHex, kesPublicKeyHex) || other.kesPublicKeyHex == kesPublicKeyHex)&&(identical(other.kesPeriod, kesPeriod) || other.kesPeriod == kesPeriod)&&(identical(other.issueCounter, issueCounter) || other.issueCounter == issueCounter)&&(identical(other.coldKeyPath, coldKeyPath) || other.coldKeyPath == coldKeyPath));
}


@override
int get hashCode => Object.hash(runtimeType,kesPublicKeyHex,kesPeriod,issueCounter,coldKeyPath);

@override
String toString() {
  return 'ParsedOperationalCertificate(kesPublicKeyHex: $kesPublicKeyHex, kesPeriod: $kesPeriod, issueCounter: $issueCounter, coldKeyPath: $coldKeyPath)';
}


}

/// @nodoc
abstract mixin class $ParsedOperationalCertificateCopyWith<$Res>  {
  factory $ParsedOperationalCertificateCopyWith(ParsedOperationalCertificate value, $Res Function(ParsedOperationalCertificate) _then) = _$ParsedOperationalCertificateCopyWithImpl;
@useResult
$Res call({
 String kesPublicKeyHex, BigInt kesPeriod, BigInt issueCounter, LedgerSigningPath coldKeyPath
});


$LedgerSigningPathCopyWith<$Res> get coldKeyPath;

}
/// @nodoc
class _$ParsedOperationalCertificateCopyWithImpl<$Res>
    implements $ParsedOperationalCertificateCopyWith<$Res> {
  _$ParsedOperationalCertificateCopyWithImpl(this._self, this._then);

  final ParsedOperationalCertificate _self;
  final $Res Function(ParsedOperationalCertificate) _then;

/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kesPublicKeyHex = null,Object? kesPeriod = null,Object? issueCounter = null,Object? coldKeyPath = null,}) {
  return _then(_self.copyWith(
kesPublicKeyHex: null == kesPublicKeyHex ? _self.kesPublicKeyHex : kesPublicKeyHex // ignore: cast_nullable_to_non_nullable
as String,kesPeriod: null == kesPeriod ? _self.kesPeriod : kesPeriod // ignore: cast_nullable_to_non_nullable
as BigInt,issueCounter: null == issueCounter ? _self.issueCounter : issueCounter // ignore: cast_nullable_to_non_nullable
as BigInt,coldKeyPath: null == coldKeyPath ? _self.coldKeyPath : coldKeyPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}
/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get coldKeyPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.coldKeyPath, (value) {
    return _then(_self.copyWith(coldKeyPath: value));
  });
}
}



/// @nodoc


class _ParsedOperationalCertificate extends ParsedOperationalCertificate {
   _ParsedOperationalCertificate({required this.kesPublicKeyHex, required this.kesPeriod, required this.issueCounter, required this.coldKeyPath}): super._();
  

@override final  String kesPublicKeyHex;
@override final  BigInt kesPeriod;
@override final  BigInt issueCounter;
@override final  LedgerSigningPath coldKeyPath;

/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedOperationalCertificateCopyWith<_ParsedOperationalCertificate> get copyWith => __$ParsedOperationalCertificateCopyWithImpl<_ParsedOperationalCertificate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedOperationalCertificate&&(identical(other.kesPublicKeyHex, kesPublicKeyHex) || other.kesPublicKeyHex == kesPublicKeyHex)&&(identical(other.kesPeriod, kesPeriod) || other.kesPeriod == kesPeriod)&&(identical(other.issueCounter, issueCounter) || other.issueCounter == issueCounter)&&(identical(other.coldKeyPath, coldKeyPath) || other.coldKeyPath == coldKeyPath));
}


@override
int get hashCode => Object.hash(runtimeType,kesPublicKeyHex,kesPeriod,issueCounter,coldKeyPath);

@override
String toString() {
  return 'ParsedOperationalCertificate(kesPublicKeyHex: $kesPublicKeyHex, kesPeriod: $kesPeriod, issueCounter: $issueCounter, coldKeyPath: $coldKeyPath)';
}


}

/// @nodoc
abstract mixin class _$ParsedOperationalCertificateCopyWith<$Res> implements $ParsedOperationalCertificateCopyWith<$Res> {
  factory _$ParsedOperationalCertificateCopyWith(_ParsedOperationalCertificate value, $Res Function(_ParsedOperationalCertificate) _then) = __$ParsedOperationalCertificateCopyWithImpl;
@override @useResult
$Res call({
 String kesPublicKeyHex, BigInt kesPeriod, BigInt issueCounter, LedgerSigningPath coldKeyPath
});


@override $LedgerSigningPathCopyWith<$Res> get coldKeyPath;

}
/// @nodoc
class __$ParsedOperationalCertificateCopyWithImpl<$Res>
    implements _$ParsedOperationalCertificateCopyWith<$Res> {
  __$ParsedOperationalCertificateCopyWithImpl(this._self, this._then);

  final _ParsedOperationalCertificate _self;
  final $Res Function(_ParsedOperationalCertificate) _then;

/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kesPublicKeyHex = null,Object? kesPeriod = null,Object? issueCounter = null,Object? coldKeyPath = null,}) {
  return _then(_ParsedOperationalCertificate(
kesPublicKeyHex: null == kesPublicKeyHex ? _self.kesPublicKeyHex : kesPublicKeyHex // ignore: cast_nullable_to_non_nullable
as String,kesPeriod: null == kesPeriod ? _self.kesPeriod : kesPeriod // ignore: cast_nullable_to_non_nullable
as BigInt,issueCounter: null == issueCounter ? _self.issueCounter : issueCounter // ignore: cast_nullable_to_non_nullable
as BigInt,coldKeyPath: null == coldKeyPath ? _self.coldKeyPath : coldKeyPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get coldKeyPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.coldKeyPath, (value) {
    return _then(_self.copyWith(coldKeyPath: value));
  });
}
}

// dart format on
