// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_simple_native_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedSimpleNativeScript {

 int get nativeScriptSerializationValue; int get pubkeyType;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedSimpleNativeScript&&(identical(other.nativeScriptSerializationValue, nativeScriptSerializationValue) || other.nativeScriptSerializationValue == nativeScriptSerializationValue)&&(identical(other.pubkeyType, pubkeyType) || other.pubkeyType == pubkeyType));
}


@override
int get hashCode => Object.hash(runtimeType,nativeScriptSerializationValue,pubkeyType);

@override
String toString() {
  return 'ParsedSimpleNativeScript(nativeScriptSerializationValue: $nativeScriptSerializationValue, pubkeyType: $pubkeyType)';
}


}

/// @nodoc
class $ParsedSimpleNativeScriptCopyWith<$Res>  {
$ParsedSimpleNativeScriptCopyWith(ParsedSimpleNativeScript _, $Res Function(ParsedSimpleNativeScript) __);
}


/// @nodoc


class ParsedSimpleNativeScript_PubKeyDeviceOwned extends ParsedSimpleNativeScript {
   ParsedSimpleNativeScript_PubKeyDeviceOwned({required this.path}): super._();
  

 final  LedgerSigningPath path;

/// Create a copy of ParsedSimpleNativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedSimpleNativeScript_PubKeyDeviceOwnedCopyWith<ParsedSimpleNativeScript_PubKeyDeviceOwned> get copyWith => _$ParsedSimpleNativeScript_PubKeyDeviceOwnedCopyWithImpl<ParsedSimpleNativeScript_PubKeyDeviceOwned>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedSimpleNativeScript_PubKeyDeviceOwned&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'ParsedSimpleNativeScript.pubKeyDeviceOwned(path: $path)';
}


}

/// @nodoc
abstract mixin class $ParsedSimpleNativeScript_PubKeyDeviceOwnedCopyWith<$Res> implements $ParsedSimpleNativeScriptCopyWith<$Res> {
  factory $ParsedSimpleNativeScript_PubKeyDeviceOwnedCopyWith(ParsedSimpleNativeScript_PubKeyDeviceOwned value, $Res Function(ParsedSimpleNativeScript_PubKeyDeviceOwned) _then) = _$ParsedSimpleNativeScript_PubKeyDeviceOwnedCopyWithImpl;
@useResult
$Res call({
 LedgerSigningPath path
});


$LedgerSigningPathCopyWith<$Res> get path;

}
/// @nodoc
class _$ParsedSimpleNativeScript_PubKeyDeviceOwnedCopyWithImpl<$Res>
    implements $ParsedSimpleNativeScript_PubKeyDeviceOwnedCopyWith<$Res> {
  _$ParsedSimpleNativeScript_PubKeyDeviceOwnedCopyWithImpl(this._self, this._then);

  final ParsedSimpleNativeScript_PubKeyDeviceOwned _self;
  final $Res Function(ParsedSimpleNativeScript_PubKeyDeviceOwned) _then;

/// Create a copy of ParsedSimpleNativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(ParsedSimpleNativeScript_PubKeyDeviceOwned(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedSimpleNativeScript
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


class ParsedSimpleNativeScript_PubKeyThirdParty extends ParsedSimpleNativeScript {
   ParsedSimpleNativeScript_PubKeyThirdParty({required this.keyHashHex}): super._();
  

 final  String keyHashHex;

/// Create a copy of ParsedSimpleNativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedSimpleNativeScript_PubKeyThirdPartyCopyWith<ParsedSimpleNativeScript_PubKeyThirdParty> get copyWith => _$ParsedSimpleNativeScript_PubKeyThirdPartyCopyWithImpl<ParsedSimpleNativeScript_PubKeyThirdParty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedSimpleNativeScript_PubKeyThirdParty&&(identical(other.keyHashHex, keyHashHex) || other.keyHashHex == keyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,keyHashHex);

@override
String toString() {
  return 'ParsedSimpleNativeScript.pubKeyThirdParty(keyHashHex: $keyHashHex)';
}


}

/// @nodoc
abstract mixin class $ParsedSimpleNativeScript_PubKeyThirdPartyCopyWith<$Res> implements $ParsedSimpleNativeScriptCopyWith<$Res> {
  factory $ParsedSimpleNativeScript_PubKeyThirdPartyCopyWith(ParsedSimpleNativeScript_PubKeyThirdParty value, $Res Function(ParsedSimpleNativeScript_PubKeyThirdParty) _then) = _$ParsedSimpleNativeScript_PubKeyThirdPartyCopyWithImpl;
@useResult
$Res call({
 String keyHashHex
});




}
/// @nodoc
class _$ParsedSimpleNativeScript_PubKeyThirdPartyCopyWithImpl<$Res>
    implements $ParsedSimpleNativeScript_PubKeyThirdPartyCopyWith<$Res> {
  _$ParsedSimpleNativeScript_PubKeyThirdPartyCopyWithImpl(this._self, this._then);

  final ParsedSimpleNativeScript_PubKeyThirdParty _self;
  final $Res Function(ParsedSimpleNativeScript_PubKeyThirdParty) _then;

/// Create a copy of ParsedSimpleNativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyHashHex = null,}) {
  return _then(ParsedSimpleNativeScript_PubKeyThirdParty(
keyHashHex: null == keyHashHex ? _self.keyHashHex : keyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ParsedSimpleNativeScript_InvalidBefore extends ParsedSimpleNativeScript {
   ParsedSimpleNativeScript_InvalidBefore({required this.slot}): super._();
  

 final  BigInt slot;

/// Create a copy of ParsedSimpleNativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedSimpleNativeScript_InvalidBeforeCopyWith<ParsedSimpleNativeScript_InvalidBefore> get copyWith => _$ParsedSimpleNativeScript_InvalidBeforeCopyWithImpl<ParsedSimpleNativeScript_InvalidBefore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedSimpleNativeScript_InvalidBefore&&(identical(other.slot, slot) || other.slot == slot));
}


@override
int get hashCode => Object.hash(runtimeType,slot);

@override
String toString() {
  return 'ParsedSimpleNativeScript.invalidBefore(slot: $slot)';
}


}

/// @nodoc
abstract mixin class $ParsedSimpleNativeScript_InvalidBeforeCopyWith<$Res> implements $ParsedSimpleNativeScriptCopyWith<$Res> {
  factory $ParsedSimpleNativeScript_InvalidBeforeCopyWith(ParsedSimpleNativeScript_InvalidBefore value, $Res Function(ParsedSimpleNativeScript_InvalidBefore) _then) = _$ParsedSimpleNativeScript_InvalidBeforeCopyWithImpl;
@useResult
$Res call({
 BigInt slot
});




}
/// @nodoc
class _$ParsedSimpleNativeScript_InvalidBeforeCopyWithImpl<$Res>
    implements $ParsedSimpleNativeScript_InvalidBeforeCopyWith<$Res> {
  _$ParsedSimpleNativeScript_InvalidBeforeCopyWithImpl(this._self, this._then);

  final ParsedSimpleNativeScript_InvalidBefore _self;
  final $Res Function(ParsedSimpleNativeScript_InvalidBefore) _then;

/// Create a copy of ParsedSimpleNativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slot = null,}) {
  return _then(ParsedSimpleNativeScript_InvalidBefore(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class ParsedSimpleNativeScript_InvalidHereafter extends ParsedSimpleNativeScript {
   ParsedSimpleNativeScript_InvalidHereafter({required this.slot}): super._();
  

 final  BigInt slot;

/// Create a copy of ParsedSimpleNativeScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedSimpleNativeScript_InvalidHereafterCopyWith<ParsedSimpleNativeScript_InvalidHereafter> get copyWith => _$ParsedSimpleNativeScript_InvalidHereafterCopyWithImpl<ParsedSimpleNativeScript_InvalidHereafter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedSimpleNativeScript_InvalidHereafter&&(identical(other.slot, slot) || other.slot == slot));
}


@override
int get hashCode => Object.hash(runtimeType,slot);

@override
String toString() {
  return 'ParsedSimpleNativeScript.invalidHereafter(slot: $slot)';
}


}

/// @nodoc
abstract mixin class $ParsedSimpleNativeScript_InvalidHereafterCopyWith<$Res> implements $ParsedSimpleNativeScriptCopyWith<$Res> {
  factory $ParsedSimpleNativeScript_InvalidHereafterCopyWith(ParsedSimpleNativeScript_InvalidHereafter value, $Res Function(ParsedSimpleNativeScript_InvalidHereafter) _then) = _$ParsedSimpleNativeScript_InvalidHereafterCopyWithImpl;
@useResult
$Res call({
 BigInt slot
});




}
/// @nodoc
class _$ParsedSimpleNativeScript_InvalidHereafterCopyWithImpl<$Res>
    implements $ParsedSimpleNativeScript_InvalidHereafterCopyWith<$Res> {
  _$ParsedSimpleNativeScript_InvalidHereafterCopyWithImpl(this._self, this._then);

  final ParsedSimpleNativeScript_InvalidHereafter _self;
  final $Res Function(ParsedSimpleNativeScript_InvalidHereafter) _then;

/// Create a copy of ParsedSimpleNativeScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slot = null,}) {
  return _then(ParsedSimpleNativeScript_InvalidHereafter(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

// dart format on
