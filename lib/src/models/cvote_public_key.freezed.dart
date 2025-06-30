// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cvote_public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CVotePublicKey {

 String get value;
/// Create a copy of CVotePublicKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CVotePublicKeyCopyWith<CVotePublicKey> get copyWith => _$CVotePublicKeyCopyWithImpl<CVotePublicKey>(this as CVotePublicKey, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CVotePublicKey&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CVotePublicKey(value: $value)';
}


}

/// @nodoc
abstract mixin class $CVotePublicKeyCopyWith<$Res>  {
  factory $CVotePublicKeyCopyWith(CVotePublicKey value, $Res Function(CVotePublicKey) _then) = _$CVotePublicKeyCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$CVotePublicKeyCopyWithImpl<$Res>
    implements $CVotePublicKeyCopyWith<$Res> {
  _$CVotePublicKeyCopyWithImpl(this._self, this._then);

  final CVotePublicKey _self;
  final $Res Function(CVotePublicKey) _then;

/// Create a copy of CVotePublicKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _CVotePublicKey extends CVotePublicKey {
   _CVotePublicKey({required this.value}): super._();
  

@override final  String value;

/// Create a copy of CVotePublicKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CVotePublicKeyCopyWith<_CVotePublicKey> get copyWith => __$CVotePublicKeyCopyWithImpl<_CVotePublicKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CVotePublicKey&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'CVotePublicKey(value: $value)';
}


}

/// @nodoc
abstract mixin class _$CVotePublicKeyCopyWith<$Res> implements $CVotePublicKeyCopyWith<$Res> {
  factory _$CVotePublicKeyCopyWith(_CVotePublicKey value, $Res Function(_CVotePublicKey) _then) = __$CVotePublicKeyCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$CVotePublicKeyCopyWithImpl<$Res>
    implements _$CVotePublicKeyCopyWith<$Res> {
  __$CVotePublicKeyCopyWithImpl(this._self, this._then);

  final _CVotePublicKey _self;
  final $Res Function(_CVotePublicKey) _then;

/// Create a copy of CVotePublicKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_CVotePublicKey(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
