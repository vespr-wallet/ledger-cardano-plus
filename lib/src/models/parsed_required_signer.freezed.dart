// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_required_signer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedRequiredSigner {

 int get requiredSignerValue;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedRequiredSigner&&(identical(other.requiredSignerValue, requiredSignerValue) || other.requiredSignerValue == requiredSignerValue));
}


@override
int get hashCode => Object.hash(runtimeType,requiredSignerValue);

@override
String toString() {
  return 'ParsedRequiredSigner(requiredSignerValue: $requiredSignerValue)';
}


}

/// @nodoc
class $ParsedRequiredSignerCopyWith<$Res>  {
$ParsedRequiredSignerCopyWith(ParsedRequiredSigner _, $Res Function(ParsedRequiredSigner) __);
}


/// @nodoc


class RequiredSignerHash extends ParsedRequiredSigner {
   RequiredSignerHash({required this.hashHex}): super._();
  

 final  String hashHex;

/// Create a copy of ParsedRequiredSigner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequiredSignerHashCopyWith<RequiredSignerHash> get copyWith => _$RequiredSignerHashCopyWithImpl<RequiredSignerHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequiredSignerHash&&(identical(other.hashHex, hashHex) || other.hashHex == hashHex));
}


@override
int get hashCode => Object.hash(runtimeType,hashHex);

@override
String toString() {
  return 'ParsedRequiredSigner.hash(hashHex: $hashHex)';
}


}

/// @nodoc
abstract mixin class $RequiredSignerHashCopyWith<$Res> implements $ParsedRequiredSignerCopyWith<$Res> {
  factory $RequiredSignerHashCopyWith(RequiredSignerHash value, $Res Function(RequiredSignerHash) _then) = _$RequiredSignerHashCopyWithImpl;
@useResult
$Res call({
 String hashHex
});




}
/// @nodoc
class _$RequiredSignerHashCopyWithImpl<$Res>
    implements $RequiredSignerHashCopyWith<$Res> {
  _$RequiredSignerHashCopyWithImpl(this._self, this._then);

  final RequiredSignerHash _self;
  final $Res Function(RequiredSignerHash) _then;

/// Create a copy of ParsedRequiredSigner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hashHex = null,}) {
  return _then(RequiredSignerHash(
hashHex: null == hashHex ? _self.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RequiredSignerPath extends ParsedRequiredSigner {
   RequiredSignerPath({required this.path}): super._();
  

 final  LedgerSigningPath path;

/// Create a copy of ParsedRequiredSigner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequiredSignerPathCopyWith<RequiredSignerPath> get copyWith => _$RequiredSignerPathCopyWithImpl<RequiredSignerPath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequiredSignerPath&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'ParsedRequiredSigner.path(path: $path)';
}


}

/// @nodoc
abstract mixin class $RequiredSignerPathCopyWith<$Res> implements $ParsedRequiredSignerCopyWith<$Res> {
  factory $RequiredSignerPathCopyWith(RequiredSignerPath value, $Res Function(RequiredSignerPath) _then) = _$RequiredSignerPathCopyWithImpl;
@useResult
$Res call({
 LedgerSigningPath path
});


$LedgerSigningPathCopyWith<$Res> get path;

}
/// @nodoc
class _$RequiredSignerPathCopyWithImpl<$Res>
    implements $RequiredSignerPathCopyWith<$Res> {
  _$RequiredSignerPathCopyWithImpl(this._self, this._then);

  final RequiredSignerPath _self;
  final $Res Function(RequiredSignerPath) _then;

/// Create a copy of ParsedRequiredSigner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(RequiredSignerPath(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedRequiredSigner
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
