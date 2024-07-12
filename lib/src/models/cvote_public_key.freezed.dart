// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cvote_public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CVotePublicKey {

 String get value => throw _privateConstructorUsedError;







/// Create a copy of CVotePublicKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$CVotePublicKeyCopyWith<CVotePublicKey> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CVotePublicKeyCopyWith<$Res>  {
  factory $CVotePublicKeyCopyWith(CVotePublicKey value, $Res Function(CVotePublicKey) then) = _$CVotePublicKeyCopyWithImpl<$Res, CVotePublicKey>;
@useResult
$Res call({
 String value
});



}

/// @nodoc
class _$CVotePublicKeyCopyWithImpl<$Res,$Val extends CVotePublicKey> implements $CVotePublicKeyCopyWith<$Res> {
  _$CVotePublicKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of CVotePublicKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_value.copyWith(
value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CVotePublicKeyImplCopyWith<$Res> implements $CVotePublicKeyCopyWith<$Res> {
  factory _$$CVotePublicKeyImplCopyWith(_$CVotePublicKeyImpl value, $Res Function(_$CVotePublicKeyImpl) then) = __$$CVotePublicKeyImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String value
});



}

/// @nodoc
class __$$CVotePublicKeyImplCopyWithImpl<$Res> extends _$CVotePublicKeyCopyWithImpl<$Res, _$CVotePublicKeyImpl> implements _$$CVotePublicKeyImplCopyWith<$Res> {
  __$$CVotePublicKeyImplCopyWithImpl(_$CVotePublicKeyImpl _value, $Res Function(_$CVotePublicKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of CVotePublicKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_$CVotePublicKeyImpl(
value: null == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$CVotePublicKeyImpl extends _CVotePublicKey  {
   _$CVotePublicKeyImpl({required this.value}): super._();

  

@override final  String value;

@override
String toString() {
  return 'CVotePublicKey(value: $value)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CVotePublicKeyImpl&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

/// Create a copy of CVotePublicKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CVotePublicKeyImplCopyWith<_$CVotePublicKeyImpl> get copyWith => __$$CVotePublicKeyImplCopyWithImpl<_$CVotePublicKeyImpl>(this, _$identity);








}


abstract class _CVotePublicKey extends CVotePublicKey {
   factory _CVotePublicKey({required final  String value}) = _$CVotePublicKeyImpl;
   _CVotePublicKey._(): super._();

  

@override String get value;
/// Create a copy of CVotePublicKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$CVotePublicKeyImplCopyWith<_$CVotePublicKeyImpl> get copyWith => throw _privateConstructorUsedError;

}
