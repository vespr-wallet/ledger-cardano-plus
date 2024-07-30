// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LedgerDevice {

 String get id => throw _privateConstructorUsedError; String get name => throw _privateConstructorUsedError; LedgerConnectionType get connectionType => throw _privateConstructorUsedError; int get rssi => throw _privateConstructorUsedError;







/// Create a copy of LedgerDevice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$LedgerDeviceCopyWith<LedgerDevice> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $LedgerDeviceCopyWith<$Res>  {
  factory $LedgerDeviceCopyWith(LedgerDevice value, $Res Function(LedgerDevice) then) = _$LedgerDeviceCopyWithImpl<$Res, LedgerDevice>;
@useResult
$Res call({
 String id, String name, LedgerConnectionType connectionType, int rssi
});



}

/// @nodoc
class _$LedgerDeviceCopyWithImpl<$Res,$Val extends LedgerDevice> implements $LedgerDeviceCopyWith<$Res> {
  _$LedgerDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of LedgerDevice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? connectionType = null,Object? rssi = null,}) {
  return _then(_value.copyWith(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,connectionType: null == connectionType ? _value.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as LedgerConnectionType,rssi: null == rssi ? _value.rssi : rssi // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$LedgerDeviceImplCopyWith<$Res> implements $LedgerDeviceCopyWith<$Res> {
  factory _$$LedgerDeviceImplCopyWith(_$LedgerDeviceImpl value, $Res Function(_$LedgerDeviceImpl) then) = __$$LedgerDeviceImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String id, String name, LedgerConnectionType connectionType, int rssi
});



}

/// @nodoc
class __$$LedgerDeviceImplCopyWithImpl<$Res> extends _$LedgerDeviceCopyWithImpl<$Res, _$LedgerDeviceImpl> implements _$$LedgerDeviceImplCopyWith<$Res> {
  __$$LedgerDeviceImplCopyWithImpl(_$LedgerDeviceImpl _value, $Res Function(_$LedgerDeviceImpl) _then)
      : super(_value, _then);


/// Create a copy of LedgerDevice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? connectionType = null,Object? rssi = null,}) {
  return _then(_$LedgerDeviceImpl(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,connectionType: null == connectionType ? _value.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as LedgerConnectionType,rssi: null == rssi ? _value.rssi : rssi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$LedgerDeviceImpl extends _LedgerDevice  {
  const _$LedgerDeviceImpl({required this.id, required this.name, required this.connectionType, required this.rssi}): super._();

  

@override final  String id;
@override final  String name;
@override final  LedgerConnectionType connectionType;
@override final  int rssi;

@override
String toString() {
  return 'LedgerDevice(id: $id, name: $name, connectionType: $connectionType, rssi: $rssi)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LedgerDeviceImpl&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType)&&(identical(other.rssi, rssi) || other.rssi == rssi));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,connectionType,rssi);

/// Create a copy of LedgerDevice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$LedgerDeviceImplCopyWith<_$LedgerDeviceImpl> get copyWith => __$$LedgerDeviceImplCopyWithImpl<_$LedgerDeviceImpl>(this, _$identity);








}


abstract class _LedgerDevice extends LedgerDevice {
  const factory _LedgerDevice({required final  String id, required final  String name, required final  LedgerConnectionType connectionType, required final  int rssi}) = _$LedgerDeviceImpl;
  const _LedgerDevice._(): super._();

  

@override String get id;@override String get name;@override LedgerConnectionType get connectionType;@override int get rssi;
/// Create a copy of LedgerDevice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$LedgerDeviceImplCopyWith<_$LedgerDeviceImpl> get copyWith => throw _privateConstructorUsedError;

}
