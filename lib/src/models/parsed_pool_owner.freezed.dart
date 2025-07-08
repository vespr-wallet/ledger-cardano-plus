// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedPoolOwner {

 int get poolOwnerValue;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedPoolOwner&&(identical(other.poolOwnerValue, poolOwnerValue) || other.poolOwnerValue == poolOwnerValue));
}


@override
int get hashCode => Object.hash(runtimeType,poolOwnerValue);

@override
String toString() {
  return 'ParsedPoolOwner(poolOwnerValue: $poolOwnerValue)';
}


}

/// @nodoc
class $ParsedPoolOwnerCopyWith<$Res>  {
$ParsedPoolOwnerCopyWith(ParsedPoolOwner _, $Res Function(ParsedPoolOwner) __);
}



/// @nodoc


class DeviceOwnedPoolOwner extends ParsedPoolOwner {
   DeviceOwnedPoolOwner({required this.path}): super._();
  

 final  LedgerSigningPath path;

/// Create a copy of ParsedPoolOwner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceOwnedPoolOwnerCopyWith<DeviceOwnedPoolOwner> get copyWith => _$DeviceOwnedPoolOwnerCopyWithImpl<DeviceOwnedPoolOwner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceOwnedPoolOwner&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'ParsedPoolOwner.deviceOwned(path: $path)';
}


}

/// @nodoc
abstract mixin class $DeviceOwnedPoolOwnerCopyWith<$Res> implements $ParsedPoolOwnerCopyWith<$Res> {
  factory $DeviceOwnedPoolOwnerCopyWith(DeviceOwnedPoolOwner value, $Res Function(DeviceOwnedPoolOwner) _then) = _$DeviceOwnedPoolOwnerCopyWithImpl;
@useResult
$Res call({
 LedgerSigningPath path
});


$LedgerSigningPathCopyWith<$Res> get path;

}
/// @nodoc
class _$DeviceOwnedPoolOwnerCopyWithImpl<$Res>
    implements $DeviceOwnedPoolOwnerCopyWith<$Res> {
  _$DeviceOwnedPoolOwnerCopyWithImpl(this._self, this._then);

  final DeviceOwnedPoolOwner _self;
  final $Res Function(DeviceOwnedPoolOwner) _then;

/// Create a copy of ParsedPoolOwner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(DeviceOwnedPoolOwner(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedPoolOwner
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


class ThirdPartyPoolOwner extends ParsedPoolOwner {
   ThirdPartyPoolOwner({required this.hashHex}): super._();
  

 final  String hashHex;

/// Create a copy of ParsedPoolOwner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThirdPartyPoolOwnerCopyWith<ThirdPartyPoolOwner> get copyWith => _$ThirdPartyPoolOwnerCopyWithImpl<ThirdPartyPoolOwner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThirdPartyPoolOwner&&(identical(other.hashHex, hashHex) || other.hashHex == hashHex));
}


@override
int get hashCode => Object.hash(runtimeType,hashHex);

@override
String toString() {
  return 'ParsedPoolOwner.thirdParty(hashHex: $hashHex)';
}


}

/// @nodoc
abstract mixin class $ThirdPartyPoolOwnerCopyWith<$Res> implements $ParsedPoolOwnerCopyWith<$Res> {
  factory $ThirdPartyPoolOwnerCopyWith(ThirdPartyPoolOwner value, $Res Function(ThirdPartyPoolOwner) _then) = _$ThirdPartyPoolOwnerCopyWithImpl;
@useResult
$Res call({
 String hashHex
});




}
/// @nodoc
class _$ThirdPartyPoolOwnerCopyWithImpl<$Res>
    implements $ThirdPartyPoolOwnerCopyWith<$Res> {
  _$ThirdPartyPoolOwnerCopyWithImpl(this._self, this._then);

  final ThirdPartyPoolOwner _self;
  final $Res Function(ThirdPartyPoolOwner) _then;

/// Create a copy of ParsedPoolOwner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hashHex = null,}) {
  return _then(ThirdPartyPoolOwner(
hashHex: null == hashHex ? _self.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
