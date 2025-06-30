// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_owned_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeviceOwnedAddress {

 AddressType get addressType; Object get type; Object get params;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceOwnedAddress&&(identical(other.addressType, addressType) || other.addressType == addressType)&&const DeepCollectionEquality().equals(other.type, type)&&const DeepCollectionEquality().equals(other.params, params));
}


@override
int get hashCode => Object.hash(runtimeType,addressType,const DeepCollectionEquality().hash(type),const DeepCollectionEquality().hash(params));

@override
String toString() {
  return 'DeviceOwnedAddress(addressType: $addressType, type: $type, params: $params)';
}


}

/// @nodoc
class $DeviceOwnedAddressCopyWith<$Res>  {
$DeviceOwnedAddressCopyWith(DeviceOwnedAddress _, $Res Function(DeviceOwnedAddress) __);
}


/// @nodoc


class DeviceOwnedAddressByron extends DeviceOwnedAddress {
   DeviceOwnedAddressByron({required this.type, required this.params}): super._();
  

@override final  AddressByron type;
@override final  AddressParamsByron params;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceOwnedAddressByronCopyWith<DeviceOwnedAddressByron> get copyWith => _$DeviceOwnedAddressByronCopyWithImpl<DeviceOwnedAddressByron>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceOwnedAddressByron&&(identical(other.type, type) || other.type == type)&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,type,params);

@override
String toString() {
  return 'DeviceOwnedAddress.byron(type: $type, params: $params)';
}


}

/// @nodoc
abstract mixin class $DeviceOwnedAddressByronCopyWith<$Res> implements $DeviceOwnedAddressCopyWith<$Res> {
  factory $DeviceOwnedAddressByronCopyWith(DeviceOwnedAddressByron value, $Res Function(DeviceOwnedAddressByron) _then) = _$DeviceOwnedAddressByronCopyWithImpl;
@useResult
$Res call({
 AddressByron type, AddressParamsByron params
});


$AddressParamsByronCopyWith<$Res> get params;

}
/// @nodoc
class _$DeviceOwnedAddressByronCopyWithImpl<$Res>
    implements $DeviceOwnedAddressByronCopyWith<$Res> {
  _$DeviceOwnedAddressByronCopyWithImpl(this._self, this._then);

  final DeviceOwnedAddressByron _self;
  final $Res Function(DeviceOwnedAddressByron) _then;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? params = null,}) {
  return _then(DeviceOwnedAddressByron(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AddressByron,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddressParamsByron,
  ));
}

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressParamsByronCopyWith<$Res> get params {
  
  return $AddressParamsByronCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class DeviceOwnedAddressBase extends DeviceOwnedAddress {
   DeviceOwnedAddressBase({required this.type, required this.params}): super._();
  

@override final  AddressBase type;
@override final  AddressParamsBase params;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceOwnedAddressBaseCopyWith<DeviceOwnedAddressBase> get copyWith => _$DeviceOwnedAddressBaseCopyWithImpl<DeviceOwnedAddressBase>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceOwnedAddressBase&&(identical(other.type, type) || other.type == type)&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,type,params);

@override
String toString() {
  return 'DeviceOwnedAddress.base(type: $type, params: $params)';
}


}

/// @nodoc
abstract mixin class $DeviceOwnedAddressBaseCopyWith<$Res> implements $DeviceOwnedAddressCopyWith<$Res> {
  factory $DeviceOwnedAddressBaseCopyWith(DeviceOwnedAddressBase value, $Res Function(DeviceOwnedAddressBase) _then) = _$DeviceOwnedAddressBaseCopyWithImpl;
@useResult
$Res call({
 AddressBase type, AddressParamsBase params
});


$AddressParamsBaseCopyWith<$Res> get params;

}
/// @nodoc
class _$DeviceOwnedAddressBaseCopyWithImpl<$Res>
    implements $DeviceOwnedAddressBaseCopyWith<$Res> {
  _$DeviceOwnedAddressBaseCopyWithImpl(this._self, this._then);

  final DeviceOwnedAddressBase _self;
  final $Res Function(DeviceOwnedAddressBase) _then;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? params = null,}) {
  return _then(DeviceOwnedAddressBase(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AddressBase,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddressParamsBase,
  ));
}

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressParamsBaseCopyWith<$Res> get params {
  
  return $AddressParamsBaseCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class DeviceOwnedAddressEnterprise extends DeviceOwnedAddress {
   DeviceOwnedAddressEnterprise({required this.type, required this.params}): super._();
  

@override final  AddressEnterprise type;
@override final  AddressParamsEnterprise params;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceOwnedAddressEnterpriseCopyWith<DeviceOwnedAddressEnterprise> get copyWith => _$DeviceOwnedAddressEnterpriseCopyWithImpl<DeviceOwnedAddressEnterprise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceOwnedAddressEnterprise&&(identical(other.type, type) || other.type == type)&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,type,params);

@override
String toString() {
  return 'DeviceOwnedAddress.enterprise(type: $type, params: $params)';
}


}

/// @nodoc
abstract mixin class $DeviceOwnedAddressEnterpriseCopyWith<$Res> implements $DeviceOwnedAddressCopyWith<$Res> {
  factory $DeviceOwnedAddressEnterpriseCopyWith(DeviceOwnedAddressEnterprise value, $Res Function(DeviceOwnedAddressEnterprise) _then) = _$DeviceOwnedAddressEnterpriseCopyWithImpl;
@useResult
$Res call({
 AddressEnterprise type, AddressParamsEnterprise params
});


$AddressParamsEnterpriseCopyWith<$Res> get params;

}
/// @nodoc
class _$DeviceOwnedAddressEnterpriseCopyWithImpl<$Res>
    implements $DeviceOwnedAddressEnterpriseCopyWith<$Res> {
  _$DeviceOwnedAddressEnterpriseCopyWithImpl(this._self, this._then);

  final DeviceOwnedAddressEnterprise _self;
  final $Res Function(DeviceOwnedAddressEnterprise) _then;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? params = null,}) {
  return _then(DeviceOwnedAddressEnterprise(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AddressEnterprise,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddressParamsEnterprise,
  ));
}

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressParamsEnterpriseCopyWith<$Res> get params {
  
  return $AddressParamsEnterpriseCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class DeviceOwnedAddressPointer extends DeviceOwnedAddress {
   DeviceOwnedAddressPointer({required this.type, required this.params}): super._();
  

@override final  AddressPointer type;
@override final  AddressParamsPointer params;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceOwnedAddressPointerCopyWith<DeviceOwnedAddressPointer> get copyWith => _$DeviceOwnedAddressPointerCopyWithImpl<DeviceOwnedAddressPointer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceOwnedAddressPointer&&(identical(other.type, type) || other.type == type)&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,type,params);

@override
String toString() {
  return 'DeviceOwnedAddress.pointer(type: $type, params: $params)';
}


}

/// @nodoc
abstract mixin class $DeviceOwnedAddressPointerCopyWith<$Res> implements $DeviceOwnedAddressCopyWith<$Res> {
  factory $DeviceOwnedAddressPointerCopyWith(DeviceOwnedAddressPointer value, $Res Function(DeviceOwnedAddressPointer) _then) = _$DeviceOwnedAddressPointerCopyWithImpl;
@useResult
$Res call({
 AddressPointer type, AddressParamsPointer params
});


$AddressParamsPointerCopyWith<$Res> get params;

}
/// @nodoc
class _$DeviceOwnedAddressPointerCopyWithImpl<$Res>
    implements $DeviceOwnedAddressPointerCopyWith<$Res> {
  _$DeviceOwnedAddressPointerCopyWithImpl(this._self, this._then);

  final DeviceOwnedAddressPointer _self;
  final $Res Function(DeviceOwnedAddressPointer) _then;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? params = null,}) {
  return _then(DeviceOwnedAddressPointer(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AddressPointer,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddressParamsPointer,
  ));
}

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressParamsPointerCopyWith<$Res> get params {
  
  return $AddressParamsPointerCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class DeviceOwnedAddressReward extends DeviceOwnedAddress {
   DeviceOwnedAddressReward({required this.type, required this.params}): super._();
  

@override final  AddressReward type;
@override final  AddressParamsReward params;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceOwnedAddressRewardCopyWith<DeviceOwnedAddressReward> get copyWith => _$DeviceOwnedAddressRewardCopyWithImpl<DeviceOwnedAddressReward>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceOwnedAddressReward&&(identical(other.type, type) || other.type == type)&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,type,params);

@override
String toString() {
  return 'DeviceOwnedAddress.reward(type: $type, params: $params)';
}


}

/// @nodoc
abstract mixin class $DeviceOwnedAddressRewardCopyWith<$Res> implements $DeviceOwnedAddressCopyWith<$Res> {
  factory $DeviceOwnedAddressRewardCopyWith(DeviceOwnedAddressReward value, $Res Function(DeviceOwnedAddressReward) _then) = _$DeviceOwnedAddressRewardCopyWithImpl;
@useResult
$Res call({
 AddressReward type, AddressParamsReward params
});


$AddressParamsRewardCopyWith<$Res> get params;

}
/// @nodoc
class _$DeviceOwnedAddressRewardCopyWithImpl<$Res>
    implements $DeviceOwnedAddressRewardCopyWith<$Res> {
  _$DeviceOwnedAddressRewardCopyWithImpl(this._self, this._then);

  final DeviceOwnedAddressReward _self;
  final $Res Function(DeviceOwnedAddressReward) _then;

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,Object? params = null,}) {
  return _then(DeviceOwnedAddressReward(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AddressReward,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddressParamsReward,
  ));
}

/// Create a copy of DeviceOwnedAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressParamsRewardCopyWith<$Res> get params {
  
  return $AddressParamsRewardCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
