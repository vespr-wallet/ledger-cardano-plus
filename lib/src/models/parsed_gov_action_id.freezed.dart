// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_gov_action_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedGovActionId {

 String get txHashHex => throw _privateConstructorUsedError; int get govActionIndex => throw _privateConstructorUsedError;







/// Create a copy of ParsedGovActionId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedGovActionIdCopyWith<ParsedGovActionId> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedGovActionIdCopyWith<$Res>  {
  factory $ParsedGovActionIdCopyWith(ParsedGovActionId value, $Res Function(ParsedGovActionId) then) = _$ParsedGovActionIdCopyWithImpl<$Res, ParsedGovActionId>;
@useResult
$Res call({
 String txHashHex, int govActionIndex
});



}

/// @nodoc
class _$ParsedGovActionIdCopyWithImpl<$Res,$Val extends ParsedGovActionId> implements $ParsedGovActionIdCopyWith<$Res> {
  _$ParsedGovActionIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedGovActionId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txHashHex = null,Object? govActionIndex = null,}) {
  return _then(_value.copyWith(
txHashHex: null == txHashHex ? _value.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,govActionIndex: null == govActionIndex ? _value.govActionIndex : govActionIndex // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ParsedGovActionIdImplCopyWith<$Res> implements $ParsedGovActionIdCopyWith<$Res> {
  factory _$$ParsedGovActionIdImplCopyWith(_$ParsedGovActionIdImpl value, $Res Function(_$ParsedGovActionIdImpl) then) = __$$ParsedGovActionIdImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String txHashHex, int govActionIndex
});



}

/// @nodoc
class __$$ParsedGovActionIdImplCopyWithImpl<$Res> extends _$ParsedGovActionIdCopyWithImpl<$Res, _$ParsedGovActionIdImpl> implements _$$ParsedGovActionIdImplCopyWith<$Res> {
  __$$ParsedGovActionIdImplCopyWithImpl(_$ParsedGovActionIdImpl _value, $Res Function(_$ParsedGovActionIdImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedGovActionId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txHashHex = null,Object? govActionIndex = null,}) {
  return _then(_$ParsedGovActionIdImpl(
txHashHex: null == txHashHex ? _value.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,govActionIndex: null == govActionIndex ? _value.govActionIndex : govActionIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$ParsedGovActionIdImpl extends _ParsedGovActionId  {
   _$ParsedGovActionIdImpl({required this.txHashHex, required this.govActionIndex}): super._();

  

@override final  String txHashHex;
@override final  int govActionIndex;

@override
String toString() {
  return 'ParsedGovActionId(txHashHex: $txHashHex, govActionIndex: $govActionIndex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedGovActionIdImpl&&(identical(other.txHashHex, txHashHex) || other.txHashHex == txHashHex)&&(identical(other.govActionIndex, govActionIndex) || other.govActionIndex == govActionIndex));
}


@override
int get hashCode => Object.hash(runtimeType,txHashHex,govActionIndex);

/// Create a copy of ParsedGovActionId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedGovActionIdImplCopyWith<_$ParsedGovActionIdImpl> get copyWith => __$$ParsedGovActionIdImplCopyWithImpl<_$ParsedGovActionIdImpl>(this, _$identity);








}


abstract class _ParsedGovActionId extends ParsedGovActionId {
   factory _ParsedGovActionId({required final  String txHashHex, required final  int govActionIndex}) = _$ParsedGovActionIdImpl;
   _ParsedGovActionId._(): super._();

  

@override String get txHashHex;@override int get govActionIndex;
/// Create a copy of ParsedGovActionId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedGovActionIdImplCopyWith<_$ParsedGovActionIdImpl> get copyWith => throw _privateConstructorUsedError;

}
