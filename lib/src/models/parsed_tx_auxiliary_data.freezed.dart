// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_tx_auxiliary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedTxAuxiliaryData {










}

/// @nodoc
abstract class $ParsedTxAuxiliaryDataCopyWith<$Res>  {
  factory $ParsedTxAuxiliaryDataCopyWith(ParsedTxAuxiliaryData value, $Res Function(ParsedTxAuxiliaryData) then) = _$ParsedTxAuxiliaryDataCopyWithImpl<$Res, ParsedTxAuxiliaryData>;



}

/// @nodoc
class _$ParsedTxAuxiliaryDataCopyWithImpl<$Res,$Val extends ParsedTxAuxiliaryData> implements $ParsedTxAuxiliaryDataCopyWith<$Res> {
  _$ParsedTxAuxiliaryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$ArbitraryHashImplCopyWith<$Res>  {
  factory _$$ArbitraryHashImplCopyWith(_$ArbitraryHashImpl value, $Res Function(_$ArbitraryHashImpl) then) = __$$ArbitraryHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String hashHex
});



}

/// @nodoc
class __$$ArbitraryHashImplCopyWithImpl<$Res> extends _$ParsedTxAuxiliaryDataCopyWithImpl<$Res, _$ArbitraryHashImpl> implements _$$ArbitraryHashImplCopyWith<$Res> {
  __$$ArbitraryHashImplCopyWithImpl(_$ArbitraryHashImpl _value, $Res Function(_$ArbitraryHashImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hashHex = null,}) {
  return _then(_$ArbitraryHashImpl(
hashHex: null == hashHex ? _value.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$ArbitraryHashImpl extends ArbitraryHash  {
   _$ArbitraryHashImpl({required this.hashHex}): super._();

  

@override final  String hashHex;

@override
String toString() {
  return 'ParsedTxAuxiliaryData.arbitraryHash(hashHex: $hashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ArbitraryHashImpl&&(identical(other.hashHex, hashHex) || other.hashHex == hashHex));
}


@override
int get hashCode => Object.hash(runtimeType,hashHex);

/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ArbitraryHashImplCopyWith<_$ArbitraryHashImpl> get copyWith => __$$ArbitraryHashImplCopyWithImpl<_$ArbitraryHashImpl>(this, _$identity);








}


abstract class ArbitraryHash extends ParsedTxAuxiliaryData {
   factory ArbitraryHash({required final  String hashHex}) = _$ArbitraryHashImpl;
   ArbitraryHash._(): super._();

  

 String get hashHex;
/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ArbitraryHashImplCopyWith<_$ArbitraryHashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CIP36RegistrationImplCopyWith<$Res>  {
  factory _$$CIP36RegistrationImplCopyWith(_$CIP36RegistrationImpl value, $Res Function(_$CIP36RegistrationImpl) then) = __$$CIP36RegistrationImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ParsedCVoteRegistrationParams params
});


$ParsedCVoteRegistrationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CIP36RegistrationImplCopyWithImpl<$Res> extends _$ParsedTxAuxiliaryDataCopyWithImpl<$Res, _$CIP36RegistrationImpl> implements _$$CIP36RegistrationImplCopyWith<$Res> {
  __$$CIP36RegistrationImplCopyWithImpl(_$CIP36RegistrationImpl _value, $Res Function(_$CIP36RegistrationImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? params = null,}) {
  return _then(_$CIP36RegistrationImpl(
params: null == params ? _value.params : params // ignore: cast_nullable_to_non_nullable
as ParsedCVoteRegistrationParams,
  ));
}

/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedCVoteRegistrationParamsCopyWith<$Res> get params {
  
  return $ParsedCVoteRegistrationParamsCopyWith<$Res>(_value.params, (value) {
    return _then(_value.copyWith(params: value) );
  });
}
}

/// @nodoc


class _$CIP36RegistrationImpl extends CIP36Registration  {
   _$CIP36RegistrationImpl({required this.params}): super._();

  

@override final  ParsedCVoteRegistrationParams params;

@override
String toString() {
  return 'ParsedTxAuxiliaryData.cip36Registration(params: $params)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CIP36RegistrationImpl&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CIP36RegistrationImplCopyWith<_$CIP36RegistrationImpl> get copyWith => __$$CIP36RegistrationImplCopyWithImpl<_$CIP36RegistrationImpl>(this, _$identity);








}


abstract class CIP36Registration extends ParsedTxAuxiliaryData {
   factory CIP36Registration({required final  ParsedCVoteRegistrationParams params}) = _$CIP36RegistrationImpl;
   CIP36Registration._(): super._();

  

 ParsedCVoteRegistrationParams get params;
/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CIP36RegistrationImplCopyWith<_$CIP36RegistrationImpl> get copyWith => throw _privateConstructorUsedError;

}
