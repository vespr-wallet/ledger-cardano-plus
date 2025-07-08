// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_output_destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedOutputDestination {

// uint8
 int get typeEncoding;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedOutputDestination&&(identical(other.typeEncoding, typeEncoding) || other.typeEncoding == typeEncoding));
}


@override
int get hashCode => Object.hash(runtimeType,typeEncoding);

@override
String toString() {
  return 'ParsedOutputDestination(typeEncoding: $typeEncoding)';
}


}

/// @nodoc
class $ParsedOutputDestinationCopyWith<$Res>  {
$ParsedOutputDestinationCopyWith(ParsedOutputDestination _, $Res Function(ParsedOutputDestination) __);
}



/// @nodoc


class ThirdParty extends ParsedOutputDestination {
   ThirdParty({required this.addressHex}): super._();
  

 final  String addressHex;

/// Create a copy of ParsedOutputDestination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThirdPartyCopyWith<ThirdParty> get copyWith => _$ThirdPartyCopyWithImpl<ThirdParty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThirdParty&&(identical(other.addressHex, addressHex) || other.addressHex == addressHex));
}


@override
int get hashCode => Object.hash(runtimeType,addressHex);

@override
String toString() {
  return 'ParsedOutputDestination.thirdParty(addressHex: $addressHex)';
}


}

/// @nodoc
abstract mixin class $ThirdPartyCopyWith<$Res> implements $ParsedOutputDestinationCopyWith<$Res> {
  factory $ThirdPartyCopyWith(ThirdParty value, $Res Function(ThirdParty) _then) = _$ThirdPartyCopyWithImpl;
@useResult
$Res call({
 String addressHex
});




}
/// @nodoc
class _$ThirdPartyCopyWithImpl<$Res>
    implements $ThirdPartyCopyWith<$Res> {
  _$ThirdPartyCopyWithImpl(this._self, this._then);

  final ThirdParty _self;
  final $Res Function(ThirdParty) _then;

/// Create a copy of ParsedOutputDestination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? addressHex = null,}) {
  return _then(ThirdParty(
addressHex: null == addressHex ? _self.addressHex : addressHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeviceOwned extends ParsedOutputDestination {
   DeviceOwned({required this.addressParams}): super._();
  

 final  ParsedAddressParams addressParams;

/// Create a copy of ParsedOutputDestination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceOwnedCopyWith<DeviceOwned> get copyWith => _$DeviceOwnedCopyWithImpl<DeviceOwned>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceOwned&&(identical(other.addressParams, addressParams) || other.addressParams == addressParams));
}


@override
int get hashCode => Object.hash(runtimeType,addressParams);

@override
String toString() {
  return 'ParsedOutputDestination.deviceOwned(addressParams: $addressParams)';
}


}

/// @nodoc
abstract mixin class $DeviceOwnedCopyWith<$Res> implements $ParsedOutputDestinationCopyWith<$Res> {
  factory $DeviceOwnedCopyWith(DeviceOwned value, $Res Function(DeviceOwned) _then) = _$DeviceOwnedCopyWithImpl;
@useResult
$Res call({
 ParsedAddressParams addressParams
});


$ParsedAddressParamsCopyWith<$Res> get addressParams;

}
/// @nodoc
class _$DeviceOwnedCopyWithImpl<$Res>
    implements $DeviceOwnedCopyWith<$Res> {
  _$DeviceOwnedCopyWithImpl(this._self, this._then);

  final DeviceOwned _self;
  final $Res Function(DeviceOwned) _then;

/// Create a copy of ParsedOutputDestination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? addressParams = null,}) {
  return _then(DeviceOwned(
addressParams: null == addressParams ? _self.addressParams : addressParams // ignore: cast_nullable_to_non_nullable
as ParsedAddressParams,
  ));
}

/// Create a copy of ParsedOutputDestination
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedAddressParamsCopyWith<$Res> get addressParams {
  
  return $ParsedAddressParamsCopyWith<$Res>(_self.addressParams, (value) {
    return _then(_self.copyWith(addressParams: value));
  });
}
}

// dart format on
