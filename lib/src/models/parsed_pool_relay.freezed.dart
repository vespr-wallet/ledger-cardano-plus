// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_relay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedPoolRelay {

 RelayType get relayType;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedPoolRelay&&(identical(other.relayType, relayType) || other.relayType == relayType));
}


@override
int get hashCode => Object.hash(runtimeType,relayType);

@override
String toString() {
  return 'ParsedPoolRelay(relayType: $relayType)';
}


}

/// @nodoc
class $ParsedPoolRelayCopyWith<$Res>  {
$ParsedPoolRelayCopyWith(ParsedPoolRelay _, $Res Function(ParsedPoolRelay) __);
}


/// @nodoc


class SingleHostIpAddr extends ParsedPoolRelay {
   SingleHostIpAddr({this.port, this.ipv4, this.ipv6}): super._();
  

 final  int? port;
 final  String? ipv4;
 final  String? ipv6;

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleHostIpAddrCopyWith<SingleHostIpAddr> get copyWith => _$SingleHostIpAddrCopyWithImpl<SingleHostIpAddr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleHostIpAddr&&(identical(other.port, port) || other.port == port)&&(identical(other.ipv4, ipv4) || other.ipv4 == ipv4)&&(identical(other.ipv6, ipv6) || other.ipv6 == ipv6));
}


@override
int get hashCode => Object.hash(runtimeType,port,ipv4,ipv6);

@override
String toString() {
  return 'ParsedPoolRelay.singleHostIpAddr(port: $port, ipv4: $ipv4, ipv6: $ipv6)';
}


}

/// @nodoc
abstract mixin class $SingleHostIpAddrCopyWith<$Res> implements $ParsedPoolRelayCopyWith<$Res> {
  factory $SingleHostIpAddrCopyWith(SingleHostIpAddr value, $Res Function(SingleHostIpAddr) _then) = _$SingleHostIpAddrCopyWithImpl;
@useResult
$Res call({
 int? port, String? ipv4, String? ipv6
});




}
/// @nodoc
class _$SingleHostIpAddrCopyWithImpl<$Res>
    implements $SingleHostIpAddrCopyWith<$Res> {
  _$SingleHostIpAddrCopyWithImpl(this._self, this._then);

  final SingleHostIpAddr _self;
  final $Res Function(SingleHostIpAddr) _then;

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? port = freezed,Object? ipv4 = freezed,Object? ipv6 = freezed,}) {
  return _then(SingleHostIpAddr(
port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,ipv4: freezed == ipv4 ? _self.ipv4 : ipv4 // ignore: cast_nullable_to_non_nullable
as String?,ipv6: freezed == ipv6 ? _self.ipv6 : ipv6 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class SingleHostName extends ParsedPoolRelay {
   SingleHostName({this.port, required this.dnsName}): super._();
  

 final  int? port;
 final  String dnsName;

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleHostNameCopyWith<SingleHostName> get copyWith => _$SingleHostNameCopyWithImpl<SingleHostName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleHostName&&(identical(other.port, port) || other.port == port)&&(identical(other.dnsName, dnsName) || other.dnsName == dnsName));
}


@override
int get hashCode => Object.hash(runtimeType,port,dnsName);

@override
String toString() {
  return 'ParsedPoolRelay.singletHostname(port: $port, dnsName: $dnsName)';
}


}

/// @nodoc
abstract mixin class $SingleHostNameCopyWith<$Res> implements $ParsedPoolRelayCopyWith<$Res> {
  factory $SingleHostNameCopyWith(SingleHostName value, $Res Function(SingleHostName) _then) = _$SingleHostNameCopyWithImpl;
@useResult
$Res call({
 int? port, String dnsName
});




}
/// @nodoc
class _$SingleHostNameCopyWithImpl<$Res>
    implements $SingleHostNameCopyWith<$Res> {
  _$SingleHostNameCopyWithImpl(this._self, this._then);

  final SingleHostName _self;
  final $Res Function(SingleHostName) _then;

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? port = freezed,Object? dnsName = null,}) {
  return _then(SingleHostName(
port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,dnsName: null == dnsName ? _self.dnsName : dnsName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MultiHost extends ParsedPoolRelay {
   MultiHost({required this.dnsName}): super._();
  

 final  String dnsName;

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultiHostCopyWith<MultiHost> get copyWith => _$MultiHostCopyWithImpl<MultiHost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultiHost&&(identical(other.dnsName, dnsName) || other.dnsName == dnsName));
}


@override
int get hashCode => Object.hash(runtimeType,dnsName);

@override
String toString() {
  return 'ParsedPoolRelay.multiHost(dnsName: $dnsName)';
}


}

/// @nodoc
abstract mixin class $MultiHostCopyWith<$Res> implements $ParsedPoolRelayCopyWith<$Res> {
  factory $MultiHostCopyWith(MultiHost value, $Res Function(MultiHost) _then) = _$MultiHostCopyWithImpl;
@useResult
$Res call({
 String dnsName
});




}
/// @nodoc
class _$MultiHostCopyWithImpl<$Res>
    implements $MultiHostCopyWith<$Res> {
  _$MultiHostCopyWithImpl(this._self, this._then);

  final MultiHost _self;
  final $Res Function(MultiHost) _then;

/// Create a copy of ParsedPoolRelay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dnsName = null,}) {
  return _then(MultiHost(
dnsName: null == dnsName ? _self.dnsName : dnsName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
