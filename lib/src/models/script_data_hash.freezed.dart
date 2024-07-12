// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'script_data_hash.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScriptDataHash {

 String get hexString => throw _privateConstructorUsedError;







/// Create a copy of ScriptDataHash
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ScriptDataHashCopyWith<ScriptDataHash> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ScriptDataHashCopyWith<$Res>  {
  factory $ScriptDataHashCopyWith(ScriptDataHash value, $Res Function(ScriptDataHash) then) = _$ScriptDataHashCopyWithImpl<$Res, ScriptDataHash>;
@useResult
$Res call({
 String hexString
});



}

/// @nodoc
class _$ScriptDataHashCopyWithImpl<$Res,$Val extends ScriptDataHash> implements $ScriptDataHashCopyWith<$Res> {
  _$ScriptDataHashCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ScriptDataHash
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hexString = null,}) {
  return _then(_value.copyWith(
hexString: null == hexString ? _value.hexString : hexString // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ScriptDataHashImplCopyWith<$Res> implements $ScriptDataHashCopyWith<$Res> {
  factory _$$ScriptDataHashImplCopyWith(_$ScriptDataHashImpl value, $Res Function(_$ScriptDataHashImpl) then) = __$$ScriptDataHashImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String hexString
});



}

/// @nodoc
class __$$ScriptDataHashImplCopyWithImpl<$Res> extends _$ScriptDataHashCopyWithImpl<$Res, _$ScriptDataHashImpl> implements _$$ScriptDataHashImplCopyWith<$Res> {
  __$$ScriptDataHashImplCopyWithImpl(_$ScriptDataHashImpl _value, $Res Function(_$ScriptDataHashImpl) _then)
      : super(_value, _then);


/// Create a copy of ScriptDataHash
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hexString = null,}) {
  return _then(_$ScriptDataHashImpl(
hexString: null == hexString ? _value.hexString : hexString // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ScriptDataHashImpl extends _ScriptDataHash  {
   _$ScriptDataHashImpl({required this.hexString}): super._();

  

@override final  String hexString;

@override
String toString() {
  return 'ScriptDataHash(hexString: $hexString)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ScriptDataHashImpl&&(identical(other.hexString, hexString) || other.hexString == hexString));
}


@override
int get hashCode => Object.hash(runtimeType,hexString);

/// Create a copy of ScriptDataHash
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ScriptDataHashImplCopyWith<_$ScriptDataHashImpl> get copyWith => __$$ScriptDataHashImplCopyWithImpl<_$ScriptDataHashImpl>(this, _$identity);








}


abstract class _ScriptDataHash extends ScriptDataHash {
   factory _ScriptDataHash({required final  String hexString}) = _$ScriptDataHashImpl;
   _ScriptDataHash._(): super._();

  

@override String get hexString;
/// Create a copy of ScriptDataHash
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ScriptDataHashImplCopyWith<_$ScriptDataHashImpl> get copyWith => throw _privateConstructorUsedError;

}
