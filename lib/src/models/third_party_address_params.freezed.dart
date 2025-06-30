// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'third_party_address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThirdPartyAddressParams {

 String get addressHex;
/// Create a copy of ThirdPartyAddressParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThirdPartyAddressParamsCopyWith<ThirdPartyAddressParams> get copyWith => _$ThirdPartyAddressParamsCopyWithImpl<ThirdPartyAddressParams>(this as ThirdPartyAddressParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThirdPartyAddressParams&&(identical(other.addressHex, addressHex) || other.addressHex == addressHex));
}


@override
int get hashCode => Object.hash(runtimeType,addressHex);

@override
String toString() {
  return 'ThirdPartyAddressParams(addressHex: $addressHex)';
}


}

/// @nodoc
abstract mixin class $ThirdPartyAddressParamsCopyWith<$Res>  {
  factory $ThirdPartyAddressParamsCopyWith(ThirdPartyAddressParams value, $Res Function(ThirdPartyAddressParams) _then) = _$ThirdPartyAddressParamsCopyWithImpl;
@useResult
$Res call({
 String addressHex
});




}
/// @nodoc
class _$ThirdPartyAddressParamsCopyWithImpl<$Res>
    implements $ThirdPartyAddressParamsCopyWith<$Res> {
  _$ThirdPartyAddressParamsCopyWithImpl(this._self, this._then);

  final ThirdPartyAddressParams _self;
  final $Res Function(ThirdPartyAddressParams) _then;

/// Create a copy of ThirdPartyAddressParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressHex = null,}) {
  return _then(_self.copyWith(
addressHex: null == addressHex ? _self.addressHex : addressHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _ThirdPartyAddressParams extends ThirdPartyAddressParams {
   _ThirdPartyAddressParams({required this.addressHex}): super._();
  

@override final  String addressHex;

/// Create a copy of ThirdPartyAddressParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThirdPartyAddressParamsCopyWith<_ThirdPartyAddressParams> get copyWith => __$ThirdPartyAddressParamsCopyWithImpl<_ThirdPartyAddressParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThirdPartyAddressParams&&(identical(other.addressHex, addressHex) || other.addressHex == addressHex));
}


@override
int get hashCode => Object.hash(runtimeType,addressHex);

@override
String toString() {
  return 'ThirdPartyAddressParams(addressHex: $addressHex)';
}


}

/// @nodoc
abstract mixin class _$ThirdPartyAddressParamsCopyWith<$Res> implements $ThirdPartyAddressParamsCopyWith<$Res> {
  factory _$ThirdPartyAddressParamsCopyWith(_ThirdPartyAddressParams value, $Res Function(_ThirdPartyAddressParams) _then) = __$ThirdPartyAddressParamsCopyWithImpl;
@override @useResult
$Res call({
 String addressHex
});




}
/// @nodoc
class __$ThirdPartyAddressParamsCopyWithImpl<$Res>
    implements _$ThirdPartyAddressParamsCopyWith<$Res> {
  __$ThirdPartyAddressParamsCopyWithImpl(this._self, this._then);

  final _ThirdPartyAddressParams _self;
  final $Res Function(_ThirdPartyAddressParams) _then;

/// Create a copy of ThirdPartyAddressParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressHex = null,}) {
  return _then(_ThirdPartyAddressParams(
addressHex: null == addressHex ? _self.addressHex : addressHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
