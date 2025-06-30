// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedCredential {

 int get credentialValue;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedCredential&&(identical(other.credentialValue, credentialValue) || other.credentialValue == credentialValue));
}


@override
int get hashCode => Object.hash(runtimeType,credentialValue);

@override
String toString() {
  return 'ParsedCredential(credentialValue: $credentialValue)';
}


}

/// @nodoc
class $ParsedCredentialCopyWith<$Res>  {
$ParsedCredentialCopyWith(ParsedCredential _, $Res Function(ParsedCredential) __);
}


/// @nodoc


class CredentialKeyPath extends ParsedCredential {
   CredentialKeyPath({required this.path}): super._();
  

 final  LedgerSigningPath path;

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CredentialKeyPathCopyWith<CredentialKeyPath> get copyWith => _$CredentialKeyPathCopyWithImpl<CredentialKeyPath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CredentialKeyPath&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'ParsedCredential.keyPath(path: $path)';
}


}

/// @nodoc
abstract mixin class $CredentialKeyPathCopyWith<$Res> implements $ParsedCredentialCopyWith<$Res> {
  factory $CredentialKeyPathCopyWith(CredentialKeyPath value, $Res Function(CredentialKeyPath) _then) = _$CredentialKeyPathCopyWithImpl;
@useResult
$Res call({
 LedgerSigningPath path
});


$LedgerSigningPathCopyWith<$Res> get path;

}
/// @nodoc
class _$CredentialKeyPathCopyWithImpl<$Res>
    implements $CredentialKeyPathCopyWith<$Res> {
  _$CredentialKeyPathCopyWithImpl(this._self, this._then);

  final CredentialKeyPath _self;
  final $Res Function(CredentialKeyPath) _then;

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(CredentialKeyPath(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get path {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.path, (value) {
    return _then(_self.copyWith(path: value));
  });
}
}

/// @nodoc


class CredentialKeyHash extends ParsedCredential {
   CredentialKeyHash({required this.keyHashHex}): super._();
  

 final  String keyHashHex;

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CredentialKeyHashCopyWith<CredentialKeyHash> get copyWith => _$CredentialKeyHashCopyWithImpl<CredentialKeyHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CredentialKeyHash&&(identical(other.keyHashHex, keyHashHex) || other.keyHashHex == keyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,keyHashHex);

@override
String toString() {
  return 'ParsedCredential.keyHash(keyHashHex: $keyHashHex)';
}


}

/// @nodoc
abstract mixin class $CredentialKeyHashCopyWith<$Res> implements $ParsedCredentialCopyWith<$Res> {
  factory $CredentialKeyHashCopyWith(CredentialKeyHash value, $Res Function(CredentialKeyHash) _then) = _$CredentialKeyHashCopyWithImpl;
@useResult
$Res call({
 String keyHashHex
});




}
/// @nodoc
class _$CredentialKeyHashCopyWithImpl<$Res>
    implements $CredentialKeyHashCopyWith<$Res> {
  _$CredentialKeyHashCopyWithImpl(this._self, this._then);

  final CredentialKeyHash _self;
  final $Res Function(CredentialKeyHash) _then;

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyHashHex = null,}) {
  return _then(CredentialKeyHash(
keyHashHex: null == keyHashHex ? _self.keyHashHex : keyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CredentialScriptHash extends ParsedCredential {
   CredentialScriptHash({required this.scriptHashHex}): super._();
  

 final  String scriptHashHex;

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CredentialScriptHashCopyWith<CredentialScriptHash> get copyWith => _$CredentialScriptHashCopyWithImpl<CredentialScriptHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CredentialScriptHash&&(identical(other.scriptHashHex, scriptHashHex) || other.scriptHashHex == scriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,scriptHashHex);

@override
String toString() {
  return 'ParsedCredential.scriptHash(scriptHashHex: $scriptHashHex)';
}


}

/// @nodoc
abstract mixin class $CredentialScriptHashCopyWith<$Res> implements $ParsedCredentialCopyWith<$Res> {
  factory $CredentialScriptHashCopyWith(CredentialScriptHash value, $Res Function(CredentialScriptHash) _then) = _$CredentialScriptHashCopyWithImpl;
@useResult
$Res call({
 String scriptHashHex
});




}
/// @nodoc
class _$CredentialScriptHashCopyWithImpl<$Res>
    implements $CredentialScriptHashCopyWith<$Res> {
  _$CredentialScriptHashCopyWithImpl(this._self, this._then);

  final CredentialScriptHash _self;
  final $Res Function(CredentialScriptHash) _then;

/// Create a copy of ParsedCredential
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scriptHashHex = null,}) {
  return _then(CredentialScriptHash(
scriptHashHex: null == scriptHashHex ? _self.scriptHashHex : scriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
