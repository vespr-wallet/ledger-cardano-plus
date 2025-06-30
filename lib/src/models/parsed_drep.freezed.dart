// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_drep.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedDRep {

 int get serializationType;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedDRep&&(identical(other.serializationType, serializationType) || other.serializationType == serializationType));
}


@override
int get hashCode => Object.hash(runtimeType,serializationType);

@override
String toString() {
  return 'ParsedDRep(serializationType: $serializationType)';
}


}

/// @nodoc
class $ParsedDRepCopyWith<$Res>  {
$ParsedDRepCopyWith(ParsedDRep _, $Res Function(ParsedDRep) __);
}


/// @nodoc


class DRepKeyPath extends ParsedDRep {
   DRepKeyPath({required this.path}): super._();
  

 final  LedgerSigningPath path;

/// Create a copy of ParsedDRep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DRepKeyPathCopyWith<DRepKeyPath> get copyWith => _$DRepKeyPathCopyWithImpl<DRepKeyPath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DRepKeyPath&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'ParsedDRep.keyPath(path: $path)';
}


}

/// @nodoc
abstract mixin class $DRepKeyPathCopyWith<$Res> implements $ParsedDRepCopyWith<$Res> {
  factory $DRepKeyPathCopyWith(DRepKeyPath value, $Res Function(DRepKeyPath) _then) = _$DRepKeyPathCopyWithImpl;
@useResult
$Res call({
 LedgerSigningPath path
});


$LedgerSigningPathCopyWith<$Res> get path;

}
/// @nodoc
class _$DRepKeyPathCopyWithImpl<$Res>
    implements $DRepKeyPathCopyWith<$Res> {
  _$DRepKeyPathCopyWithImpl(this._self, this._then);

  final DRepKeyPath _self;
  final $Res Function(DRepKeyPath) _then;

/// Create a copy of ParsedDRep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(DRepKeyPath(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedDRep
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


class DRepKeyHash extends ParsedDRep {
   DRepKeyHash({required this.keyHashHex}): super._();
  

 final  String keyHashHex;

/// Create a copy of ParsedDRep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DRepKeyHashCopyWith<DRepKeyHash> get copyWith => _$DRepKeyHashCopyWithImpl<DRepKeyHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DRepKeyHash&&(identical(other.keyHashHex, keyHashHex) || other.keyHashHex == keyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,keyHashHex);

@override
String toString() {
  return 'ParsedDRep.keyHash(keyHashHex: $keyHashHex)';
}


}

/// @nodoc
abstract mixin class $DRepKeyHashCopyWith<$Res> implements $ParsedDRepCopyWith<$Res> {
  factory $DRepKeyHashCopyWith(DRepKeyHash value, $Res Function(DRepKeyHash) _then) = _$DRepKeyHashCopyWithImpl;
@useResult
$Res call({
 String keyHashHex
});




}
/// @nodoc
class _$DRepKeyHashCopyWithImpl<$Res>
    implements $DRepKeyHashCopyWith<$Res> {
  _$DRepKeyHashCopyWithImpl(this._self, this._then);

  final DRepKeyHash _self;
  final $Res Function(DRepKeyHash) _then;

/// Create a copy of ParsedDRep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyHashHex = null,}) {
  return _then(DRepKeyHash(
keyHashHex: null == keyHashHex ? _self.keyHashHex : keyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DRepScriptHash extends ParsedDRep {
   DRepScriptHash({required this.scriptHashHex}): super._();
  

 final  String scriptHashHex;

/// Create a copy of ParsedDRep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DRepScriptHashCopyWith<DRepScriptHash> get copyWith => _$DRepScriptHashCopyWithImpl<DRepScriptHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DRepScriptHash&&(identical(other.scriptHashHex, scriptHashHex) || other.scriptHashHex == scriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,scriptHashHex);

@override
String toString() {
  return 'ParsedDRep.scriptHash(scriptHashHex: $scriptHashHex)';
}


}

/// @nodoc
abstract mixin class $DRepScriptHashCopyWith<$Res> implements $ParsedDRepCopyWith<$Res> {
  factory $DRepScriptHashCopyWith(DRepScriptHash value, $Res Function(DRepScriptHash) _then) = _$DRepScriptHashCopyWithImpl;
@useResult
$Res call({
 String scriptHashHex
});




}
/// @nodoc
class _$DRepScriptHashCopyWithImpl<$Res>
    implements $DRepScriptHashCopyWith<$Res> {
  _$DRepScriptHashCopyWithImpl(this._self, this._then);

  final DRepScriptHash _self;
  final $Res Function(DRepScriptHash) _then;

/// Create a copy of ParsedDRep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scriptHashHex = null,}) {
  return _then(DRepScriptHash(
scriptHashHex: null == scriptHashHex ? _self.scriptHashHex : scriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DRepAbstain extends ParsedDRep {
   DRepAbstain(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DRepAbstain);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ParsedDRep.abstain()';
}


}




/// @nodoc


class DRepNoConfidence extends ParsedDRep {
   DRepNoConfidence(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DRepNoConfidence);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ParsedDRep.noConfidence()';
}


}




// dart format on
