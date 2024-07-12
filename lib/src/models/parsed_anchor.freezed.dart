// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_anchor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedAnchor {

 String get url => throw _privateConstructorUsedError; String get hashHex => throw _privateConstructorUsedError;







/// Create a copy of ParsedAnchor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedAnchorCopyWith<ParsedAnchor> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedAnchorCopyWith<$Res>  {
  factory $ParsedAnchorCopyWith(ParsedAnchor value, $Res Function(ParsedAnchor) then) = _$ParsedAnchorCopyWithImpl<$Res, ParsedAnchor>;
@useResult
$Res call({
 String url, String hashHex
});



}

/// @nodoc
class _$ParsedAnchorCopyWithImpl<$Res,$Val extends ParsedAnchor> implements $ParsedAnchorCopyWith<$Res> {
  _$ParsedAnchorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedAnchor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? hashHex = null,}) {
  return _then(_value.copyWith(
url: null == url ? _value.url : url // ignore: cast_nullable_to_non_nullable
as String,hashHex: null == hashHex ? _value.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ParsedAnchorImplCopyWith<$Res> implements $ParsedAnchorCopyWith<$Res> {
  factory _$$ParsedAnchorImplCopyWith(_$ParsedAnchorImpl value, $Res Function(_$ParsedAnchorImpl) then) = __$$ParsedAnchorImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String url, String hashHex
});



}

/// @nodoc
class __$$ParsedAnchorImplCopyWithImpl<$Res> extends _$ParsedAnchorCopyWithImpl<$Res, _$ParsedAnchorImpl> implements _$$ParsedAnchorImplCopyWith<$Res> {
  __$$ParsedAnchorImplCopyWithImpl(_$ParsedAnchorImpl _value, $Res Function(_$ParsedAnchorImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedAnchor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? hashHex = null,}) {
  return _then(_$ParsedAnchorImpl(
url: null == url ? _value.url : url // ignore: cast_nullable_to_non_nullable
as String,hashHex: null == hashHex ? _value.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ParsedAnchorImpl extends _ParsedAnchor  {
   _$ParsedAnchorImpl({required this.url, required this.hashHex}): super._();

  

@override final  String url;
@override final  String hashHex;

@override
String toString() {
  return 'ParsedAnchor(url: $url, hashHex: $hashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedAnchorImpl&&(identical(other.url, url) || other.url == url)&&(identical(other.hashHex, hashHex) || other.hashHex == hashHex));
}


@override
int get hashCode => Object.hash(runtimeType,url,hashHex);

/// Create a copy of ParsedAnchor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedAnchorImplCopyWith<_$ParsedAnchorImpl> get copyWith => __$$ParsedAnchorImplCopyWithImpl<_$ParsedAnchorImpl>(this, _$identity);








}


abstract class _ParsedAnchor extends ParsedAnchor {
   factory _ParsedAnchor({required final  String url, required final  String hashHex}) = _$ParsedAnchorImpl;
   _ParsedAnchor._(): super._();

  

@override String get url;@override String get hashHex;
/// Create a copy of ParsedAnchor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedAnchorImplCopyWith<_$ParsedAnchorImpl> get copyWith => throw _privateConstructorUsedError;

}
