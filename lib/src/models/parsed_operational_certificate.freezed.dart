// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_operational_certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedOperationalCertificate {

 String get kesPublicKeyHex => throw _privateConstructorUsedError; BigInt get kesPeriod => throw _privateConstructorUsedError; BigInt get issueCounter => throw _privateConstructorUsedError; LedgerSigningPath get coldKeyPath => throw _privateConstructorUsedError;







/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedOperationalCertificateCopyWith<ParsedOperationalCertificate> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedOperationalCertificateCopyWith<$Res>  {
  factory $ParsedOperationalCertificateCopyWith(ParsedOperationalCertificate value, $Res Function(ParsedOperationalCertificate) then) = _$ParsedOperationalCertificateCopyWithImpl<$Res, ParsedOperationalCertificate>;
@useResult
$Res call({
 String kesPublicKeyHex, BigInt kesPeriod, BigInt issueCounter, LedgerSigningPath coldKeyPath
});


$LedgerSigningPathCopyWith<$Res> get coldKeyPath;
}

/// @nodoc
class _$ParsedOperationalCertificateCopyWithImpl<$Res,$Val extends ParsedOperationalCertificate> implements $ParsedOperationalCertificateCopyWith<$Res> {
  _$ParsedOperationalCertificateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kesPublicKeyHex = null,Object? kesPeriod = null,Object? issueCounter = null,Object? coldKeyPath = null,}) {
  return _then(_value.copyWith(
kesPublicKeyHex: null == kesPublicKeyHex ? _value.kesPublicKeyHex : kesPublicKeyHex // ignore: cast_nullable_to_non_nullable
as String,kesPeriod: null == kesPeriod ? _value.kesPeriod : kesPeriod // ignore: cast_nullable_to_non_nullable
as BigInt,issueCounter: null == issueCounter ? _value.issueCounter : issueCounter // ignore: cast_nullable_to_non_nullable
as BigInt,coldKeyPath: null == coldKeyPath ? _value.coldKeyPath : coldKeyPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  )as $Val);
}
/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get coldKeyPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.coldKeyPath, (value) {
    return _then(_value.copyWith(coldKeyPath: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ParsedOperationalCertificateImplCopyWith<$Res> implements $ParsedOperationalCertificateCopyWith<$Res> {
  factory _$$ParsedOperationalCertificateImplCopyWith(_$ParsedOperationalCertificateImpl value, $Res Function(_$ParsedOperationalCertificateImpl) then) = __$$ParsedOperationalCertificateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String kesPublicKeyHex, BigInt kesPeriod, BigInt issueCounter, LedgerSigningPath coldKeyPath
});


@override $LedgerSigningPathCopyWith<$Res> get coldKeyPath;
}

/// @nodoc
class __$$ParsedOperationalCertificateImplCopyWithImpl<$Res> extends _$ParsedOperationalCertificateCopyWithImpl<$Res, _$ParsedOperationalCertificateImpl> implements _$$ParsedOperationalCertificateImplCopyWith<$Res> {
  __$$ParsedOperationalCertificateImplCopyWithImpl(_$ParsedOperationalCertificateImpl _value, $Res Function(_$ParsedOperationalCertificateImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kesPublicKeyHex = null,Object? kesPeriod = null,Object? issueCounter = null,Object? coldKeyPath = null,}) {
  return _then(_$ParsedOperationalCertificateImpl(
kesPublicKeyHex: null == kesPublicKeyHex ? _value.kesPublicKeyHex : kesPublicKeyHex // ignore: cast_nullable_to_non_nullable
as String,kesPeriod: null == kesPeriod ? _value.kesPeriod : kesPeriod // ignore: cast_nullable_to_non_nullable
as BigInt,issueCounter: null == issueCounter ? _value.issueCounter : issueCounter // ignore: cast_nullable_to_non_nullable
as BigInt,coldKeyPath: null == coldKeyPath ? _value.coldKeyPath : coldKeyPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}


}

/// @nodoc


class _$ParsedOperationalCertificateImpl extends _ParsedOperationalCertificate  {
   _$ParsedOperationalCertificateImpl({required this.kesPublicKeyHex, required this.kesPeriod, required this.issueCounter, required this.coldKeyPath}): super._();

  

@override final  String kesPublicKeyHex;
@override final  BigInt kesPeriod;
@override final  BigInt issueCounter;
@override final  LedgerSigningPath coldKeyPath;

@override
String toString() {
  return 'ParsedOperationalCertificate(kesPublicKeyHex: $kesPublicKeyHex, kesPeriod: $kesPeriod, issueCounter: $issueCounter, coldKeyPath: $coldKeyPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedOperationalCertificateImpl&&(identical(other.kesPublicKeyHex, kesPublicKeyHex) || other.kesPublicKeyHex == kesPublicKeyHex)&&(identical(other.kesPeriod, kesPeriod) || other.kesPeriod == kesPeriod)&&(identical(other.issueCounter, issueCounter) || other.issueCounter == issueCounter)&&(identical(other.coldKeyPath, coldKeyPath) || other.coldKeyPath == coldKeyPath));
}


@override
int get hashCode => Object.hash(runtimeType,kesPublicKeyHex,kesPeriod,issueCounter,coldKeyPath);

/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedOperationalCertificateImplCopyWith<_$ParsedOperationalCertificateImpl> get copyWith => __$$ParsedOperationalCertificateImplCopyWithImpl<_$ParsedOperationalCertificateImpl>(this, _$identity);








}


abstract class _ParsedOperationalCertificate extends ParsedOperationalCertificate {
   factory _ParsedOperationalCertificate({required final  String kesPublicKeyHex, required final  BigInt kesPeriod, required final  BigInt issueCounter, required final  LedgerSigningPath coldKeyPath}) = _$ParsedOperationalCertificateImpl;
   _ParsedOperationalCertificate._(): super._();

  

@override String get kesPublicKeyHex;@override BigInt get kesPeriod;@override BigInt get issueCounter;@override LedgerSigningPath get coldKeyPath;
/// Create a copy of ParsedOperationalCertificate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedOperationalCertificateImplCopyWith<_$ParsedOperationalCertificateImpl> get copyWith => throw _privateConstructorUsedError;

}
