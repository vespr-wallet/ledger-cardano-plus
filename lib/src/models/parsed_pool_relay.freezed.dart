// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_relay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedPoolRelay {










}

/// @nodoc
abstract class $ParsedPoolRelayCopyWith<$Res>  {
  factory $ParsedPoolRelayCopyWith(ParsedPoolRelay value, $Res Function(ParsedPoolRelay) then) = _$ParsedPoolRelayCopyWithImpl<$Res, ParsedPoolRelay>;



}

/// @nodoc
class _$ParsedPoolRelayCopyWithImpl<$Res,$Val extends ParsedPoolRelay> implements $ParsedPoolRelayCopyWith<$Res> {
  _$ParsedPoolRelayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$SingleHostIpAddrImplCopyWith<$Res>  {
  factory _$$SingleHostIpAddrImplCopyWith(_$SingleHostIpAddrImpl value, $Res Function(_$SingleHostIpAddrImpl) then) = __$$SingleHostIpAddrImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int? port, String? ipv4, String? ipv6
});



}

/// @nodoc
class __$$SingleHostIpAddrImplCopyWithImpl<$Res> extends _$ParsedPoolRelayCopyWithImpl<$Res, _$SingleHostIpAddrImpl> implements _$$SingleHostIpAddrImplCopyWith<$Res> {
  __$$SingleHostIpAddrImplCopyWithImpl(_$SingleHostIpAddrImpl _value, $Res Function(_$SingleHostIpAddrImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? port = freezed,Object? ipv4 = freezed,Object? ipv6 = freezed,}) {
  return _then(_$SingleHostIpAddrImpl(
port: freezed == port ? _value.port : port // ignore: cast_nullable_to_non_nullable
as int?,ipv4: freezed == ipv4 ? _value.ipv4 : ipv4 // ignore: cast_nullable_to_non_nullable
as String?,ipv6: freezed == ipv6 ? _value.ipv6 : ipv6 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$SingleHostIpAddrImpl extends SingleHostIpAddr  {
   _$SingleHostIpAddrImpl({this.port, this.ipv4, this.ipv6}): super._();

  

@override final  int? port;
@override final  String? ipv4;
@override final  String? ipv6;

@override
String toString() {
  return 'ParsedPoolRelay.singleHostIpAddr(port: $port, ipv4: $ipv4, ipv6: $ipv6)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SingleHostIpAddrImpl&&(identical(other.port, port) || other.port == port)&&(identical(other.ipv4, ipv4) || other.ipv4 == ipv4)&&(identical(other.ipv6, ipv6) || other.ipv6 == ipv6));
}


@override
int get hashCode => Object.hash(runtimeType,port,ipv4,ipv6);

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SingleHostIpAddrImplCopyWith<_$SingleHostIpAddrImpl> get copyWith => __$$SingleHostIpAddrImplCopyWithImpl<_$SingleHostIpAddrImpl>(this, _$identity);








}


abstract class SingleHostIpAddr extends ParsedPoolRelay {
   factory SingleHostIpAddr({final  int? port, final  String? ipv4, final  String? ipv6}) = _$SingleHostIpAddrImpl;
   SingleHostIpAddr._(): super._();

  

 int? get port; String? get ipv4; String? get ipv6;
/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$SingleHostIpAddrImplCopyWith<_$SingleHostIpAddrImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SingleHostNameImplCopyWith<$Res>  {
  factory _$$SingleHostNameImplCopyWith(_$SingleHostNameImpl value, $Res Function(_$SingleHostNameImpl) then) = __$$SingleHostNameImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int? port, String dnsName
});



}

/// @nodoc
class __$$SingleHostNameImplCopyWithImpl<$Res> extends _$ParsedPoolRelayCopyWithImpl<$Res, _$SingleHostNameImpl> implements _$$SingleHostNameImplCopyWith<$Res> {
  __$$SingleHostNameImplCopyWithImpl(_$SingleHostNameImpl _value, $Res Function(_$SingleHostNameImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? port = freezed,Object? dnsName = null,}) {
  return _then(_$SingleHostNameImpl(
port: freezed == port ? _value.port : port // ignore: cast_nullable_to_non_nullable
as int?,dnsName: null == dnsName ? _value.dnsName : dnsName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$SingleHostNameImpl extends SingleHostName  {
   _$SingleHostNameImpl({this.port, required this.dnsName}): super._();

  

@override final  int? port;
@override final  String dnsName;

@override
String toString() {
  return 'ParsedPoolRelay.singletHostname(port: $port, dnsName: $dnsName)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SingleHostNameImpl&&(identical(other.port, port) || other.port == port)&&(identical(other.dnsName, dnsName) || other.dnsName == dnsName));
}


@override
int get hashCode => Object.hash(runtimeType,port,dnsName);

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SingleHostNameImplCopyWith<_$SingleHostNameImpl> get copyWith => __$$SingleHostNameImplCopyWithImpl<_$SingleHostNameImpl>(this, _$identity);








}


abstract class SingleHostName extends ParsedPoolRelay {
   factory SingleHostName({final  int? port, required final  String dnsName}) = _$SingleHostNameImpl;
   SingleHostName._(): super._();

  

 int? get port; String get dnsName;
/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$SingleHostNameImplCopyWith<_$SingleHostNameImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$MultiHostImplCopyWith<$Res>  {
  factory _$$MultiHostImplCopyWith(_$MultiHostImpl value, $Res Function(_$MultiHostImpl) then) = __$$MultiHostImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String dnsName
});



}

/// @nodoc
class __$$MultiHostImplCopyWithImpl<$Res> extends _$ParsedPoolRelayCopyWithImpl<$Res, _$MultiHostImpl> implements _$$MultiHostImplCopyWith<$Res> {
  __$$MultiHostImplCopyWithImpl(_$MultiHostImpl _value, $Res Function(_$MultiHostImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dnsName = null,}) {
  return _then(_$MultiHostImpl(
dnsName: null == dnsName ? _value.dnsName : dnsName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$MultiHostImpl extends MultiHost  {
   _$MultiHostImpl({required this.dnsName}): super._();

  

@override final  String dnsName;

@override
String toString() {
  return 'ParsedPoolRelay.multiHost(dnsName: $dnsName)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$MultiHostImpl&&(identical(other.dnsName, dnsName) || other.dnsName == dnsName));
}


@override
int get hashCode => Object.hash(runtimeType,dnsName);

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$MultiHostImplCopyWith<_$MultiHostImpl> get copyWith => __$$MultiHostImplCopyWithImpl<_$MultiHostImpl>(this, _$identity);








}


abstract class MultiHost extends ParsedPoolRelay {
   factory MultiHost({required final  String dnsName}) = _$MultiHostImpl;
   MultiHost._(): super._();

  

 String get dnsName;
/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$MultiHostImplCopyWith<_$MultiHostImpl> get copyWith => throw _privateConstructorUsedError;

}
