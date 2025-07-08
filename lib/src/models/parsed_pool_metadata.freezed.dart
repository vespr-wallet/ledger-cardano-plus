// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedPoolMetadata {

 String get url; String get hashHex;
/// Create a copy of ParsedPoolMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedPoolMetadataCopyWith<ParsedPoolMetadata> get copyWith => _$ParsedPoolMetadataCopyWithImpl<ParsedPoolMetadata>(this as ParsedPoolMetadata, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedPoolMetadata&&(identical(other.url, url) || other.url == url)&&(identical(other.hashHex, hashHex) || other.hashHex == hashHex));
}


@override
int get hashCode => Object.hash(runtimeType,url,hashHex);

@override
String toString() {
  return 'ParsedPoolMetadata(url: $url, hashHex: $hashHex)';
}


}

/// @nodoc
abstract mixin class $ParsedPoolMetadataCopyWith<$Res>  {
  factory $ParsedPoolMetadataCopyWith(ParsedPoolMetadata value, $Res Function(ParsedPoolMetadata) _then) = _$ParsedPoolMetadataCopyWithImpl;
@useResult
$Res call({
 String url, String hashHex
});




}
/// @nodoc
class _$ParsedPoolMetadataCopyWithImpl<$Res>
    implements $ParsedPoolMetadataCopyWith<$Res> {
  _$ParsedPoolMetadataCopyWithImpl(this._self, this._then);

  final ParsedPoolMetadata _self;
  final $Res Function(ParsedPoolMetadata) _then;

/// Create a copy of ParsedPoolMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? hashHex = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,hashHex: null == hashHex ? _self.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc


class _ParsedPoolMetadata extends ParsedPoolMetadata {
   _ParsedPoolMetadata({required this.url, required this.hashHex}): super._();
  

@override final  String url;
@override final  String hashHex;

/// Create a copy of ParsedPoolMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedPoolMetadataCopyWith<_ParsedPoolMetadata> get copyWith => __$ParsedPoolMetadataCopyWithImpl<_ParsedPoolMetadata>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedPoolMetadata&&(identical(other.url, url) || other.url == url)&&(identical(other.hashHex, hashHex) || other.hashHex == hashHex));
}


@override
int get hashCode => Object.hash(runtimeType,url,hashHex);

@override
String toString() {
  return 'ParsedPoolMetadata(url: $url, hashHex: $hashHex)';
}


}

/// @nodoc
abstract mixin class _$ParsedPoolMetadataCopyWith<$Res> implements $ParsedPoolMetadataCopyWith<$Res> {
  factory _$ParsedPoolMetadataCopyWith(_ParsedPoolMetadata value, $Res Function(_ParsedPoolMetadata) _then) = __$ParsedPoolMetadataCopyWithImpl;
@override @useResult
$Res call({
 String url, String hashHex
});




}
/// @nodoc
class __$ParsedPoolMetadataCopyWithImpl<$Res>
    implements _$ParsedPoolMetadataCopyWith<$Res> {
  __$ParsedPoolMetadataCopyWithImpl(this._self, this._then);

  final _ParsedPoolMetadata _self;
  final $Res Function(_ParsedPoolMetadata) _then;

/// Create a copy of ParsedPoolMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? hashHex = null,}) {
  return _then(_ParsedPoolMetadata(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,hashHex: null == hashHex ? _self.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
