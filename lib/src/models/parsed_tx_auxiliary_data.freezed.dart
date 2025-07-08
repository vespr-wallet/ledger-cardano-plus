// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_tx_auxiliary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedTxAuxiliaryData {

 int get txAuxiliaryDataValue;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedTxAuxiliaryData&&(identical(other.txAuxiliaryDataValue, txAuxiliaryDataValue) || other.txAuxiliaryDataValue == txAuxiliaryDataValue));
}


@override
int get hashCode => Object.hash(runtimeType,txAuxiliaryDataValue);

@override
String toString() {
  return 'ParsedTxAuxiliaryData(txAuxiliaryDataValue: $txAuxiliaryDataValue)';
}


}

/// @nodoc
class $ParsedTxAuxiliaryDataCopyWith<$Res>  {
$ParsedTxAuxiliaryDataCopyWith(ParsedTxAuxiliaryData _, $Res Function(ParsedTxAuxiliaryData) __);
}



/// @nodoc


class ArbitraryHash extends ParsedTxAuxiliaryData {
   ArbitraryHash({required this.hashHex}): super._();
  

 final  String hashHex;

/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArbitraryHashCopyWith<ArbitraryHash> get copyWith => _$ArbitraryHashCopyWithImpl<ArbitraryHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArbitraryHash&&(identical(other.hashHex, hashHex) || other.hashHex == hashHex));
}


@override
int get hashCode => Object.hash(runtimeType,hashHex);

@override
String toString() {
  return 'ParsedTxAuxiliaryData.arbitraryHash(hashHex: $hashHex)';
}


}

/// @nodoc
abstract mixin class $ArbitraryHashCopyWith<$Res> implements $ParsedTxAuxiliaryDataCopyWith<$Res> {
  factory $ArbitraryHashCopyWith(ArbitraryHash value, $Res Function(ArbitraryHash) _then) = _$ArbitraryHashCopyWithImpl;
@useResult
$Res call({
 String hashHex
});




}
/// @nodoc
class _$ArbitraryHashCopyWithImpl<$Res>
    implements $ArbitraryHashCopyWith<$Res> {
  _$ArbitraryHashCopyWithImpl(this._self, this._then);

  final ArbitraryHash _self;
  final $Res Function(ArbitraryHash) _then;

/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hashHex = null,}) {
  return _then(ArbitraryHash(
hashHex: null == hashHex ? _self.hashHex : hashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CIP36Registration extends ParsedTxAuxiliaryData {
   CIP36Registration({required this.params}): super._();
  

 final  ParsedCVoteRegistrationParams params;

/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CIP36RegistrationCopyWith<CIP36Registration> get copyWith => _$CIP36RegistrationCopyWithImpl<CIP36Registration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CIP36Registration&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'ParsedTxAuxiliaryData.cip36Registration(params: $params)';
}


}

/// @nodoc
abstract mixin class $CIP36RegistrationCopyWith<$Res> implements $ParsedTxAuxiliaryDataCopyWith<$Res> {
  factory $CIP36RegistrationCopyWith(CIP36Registration value, $Res Function(CIP36Registration) _then) = _$CIP36RegistrationCopyWithImpl;
@useResult
$Res call({
 ParsedCVoteRegistrationParams params
});


$ParsedCVoteRegistrationParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$CIP36RegistrationCopyWithImpl<$Res>
    implements $CIP36RegistrationCopyWith<$Res> {
  _$CIP36RegistrationCopyWithImpl(this._self, this._then);

  final CIP36Registration _self;
  final $Res Function(CIP36Registration) _then;

/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(CIP36Registration(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ParsedCVoteRegistrationParams,
  ));
}

/// Create a copy of ParsedTxAuxiliaryData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedCVoteRegistrationParamsCopyWith<$Res> get params {
  
  return $ParsedCVoteRegistrationParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
