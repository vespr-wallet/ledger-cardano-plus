// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedAddressParams {










}

/// @nodoc
abstract class $ParsedAddressParamsCopyWith<$Res>  {
  factory $ParsedAddressParamsCopyWith(ParsedAddressParams value, $Res Function(ParsedAddressParams) then) = _$ParsedAddressParamsCopyWithImpl<$Res, ParsedAddressParams>;



}

/// @nodoc
class _$ParsedAddressParamsCopyWithImpl<$Res,$Val extends ParsedAddressParams> implements $ParsedAddressParamsCopyWith<$Res> {
  _$ParsedAddressParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$ByronAddressParamsImplCopyWith<$Res>  {
  factory _$$ByronAddressParamsImplCopyWith(_$ByronAddressParamsImpl value, $Res Function(_$ByronAddressParamsImpl) then) = __$$ByronAddressParamsImplCopyWithImpl<$Res>;
@useResult
$Res call({
 SpendingDataSource spendingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;
}

/// @nodoc
class __$$ByronAddressParamsImplCopyWithImpl<$Res> extends _$ParsedAddressParamsCopyWithImpl<$Res, _$ByronAddressParamsImpl> implements _$$ByronAddressParamsImplCopyWith<$Res> {
  __$$ByronAddressParamsImplCopyWithImpl(_$ByronAddressParamsImpl _value, $Res Function(_$ByronAddressParamsImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingDataSource = null,}) {
  return _then(_$ByronAddressParamsImpl(
spendingDataSource: null == spendingDataSource ? _value.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,
  ));
}

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendingDataSourceCopyWith<$Res> get spendingDataSource {
  
  return $SpendingDataSourceCopyWith<$Res>(_value.spendingDataSource, (value) {
    return _then(_value.copyWith(spendingDataSource: value) );
  });
}
}

/// @nodoc


class _$ByronAddressParamsImpl extends ByronAddressParams  {
   _$ByronAddressParamsImpl({required this.spendingDataSource}): super._();

  

@override final  SpendingDataSource spendingDataSource;

@override
String toString() {
  return 'ParsedAddressParams.byron(spendingDataSource: $spendingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ByronAddressParamsImpl&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource);

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ByronAddressParamsImplCopyWith<_$ByronAddressParamsImpl> get copyWith => __$$ByronAddressParamsImplCopyWithImpl<_$ByronAddressParamsImpl>(this, _$identity);








}


abstract class ByronAddressParams extends ParsedAddressParams {
   factory ByronAddressParams({required final  SpendingDataSource spendingDataSource}) = _$ByronAddressParamsImpl;
   ByronAddressParams._(): super._();

  

 SpendingDataSource get spendingDataSource;
/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ByronAddressParamsImplCopyWith<_$ByronAddressParamsImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$ShelleyAddressParamsImplCopyWith<$Res>  {
  factory _$$ShelleyAddressParamsImplCopyWith(_$ShelleyAddressParamsImpl value, $Res Function(_$ShelleyAddressParamsImpl) then) = __$$ShelleyAddressParamsImplCopyWithImpl<$Res>;
@useResult
$Res call({
 ShelleyAddressParamsData shelleyAddressParams
});


$ShelleyAddressParamsDataCopyWith<$Res> get shelleyAddressParams;
}

/// @nodoc
class __$$ShelleyAddressParamsImplCopyWithImpl<$Res> extends _$ParsedAddressParamsCopyWithImpl<$Res, _$ShelleyAddressParamsImpl> implements _$$ShelleyAddressParamsImplCopyWith<$Res> {
  __$$ShelleyAddressParamsImplCopyWithImpl(_$ShelleyAddressParamsImpl _value, $Res Function(_$ShelleyAddressParamsImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shelleyAddressParams = null,}) {
  return _then(_$ShelleyAddressParamsImpl(
shelleyAddressParams: null == shelleyAddressParams ? _value.shelleyAddressParams : shelleyAddressParams // ignore: cast_nullable_to_non_nullable
as ShelleyAddressParamsData,
  ));
}

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShelleyAddressParamsDataCopyWith<$Res> get shelleyAddressParams {
  
  return $ShelleyAddressParamsDataCopyWith<$Res>(_value.shelleyAddressParams, (value) {
    return _then(_value.copyWith(shelleyAddressParams: value) );
  });
}
}

/// @nodoc


class _$ShelleyAddressParamsImpl extends ShelleyAddressParams  {
   _$ShelleyAddressParamsImpl({required this.shelleyAddressParams}): super._();

  

@override final  ShelleyAddressParamsData shelleyAddressParams;

@override
String toString() {
  return 'ParsedAddressParams.shelley(shelleyAddressParams: $shelleyAddressParams)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ShelleyAddressParamsImpl&&(identical(other.shelleyAddressParams, shelleyAddressParams) || other.shelleyAddressParams == shelleyAddressParams));
}


@override
int get hashCode => Object.hash(runtimeType,shelleyAddressParams);

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ShelleyAddressParamsImplCopyWith<_$ShelleyAddressParamsImpl> get copyWith => __$$ShelleyAddressParamsImplCopyWithImpl<_$ShelleyAddressParamsImpl>(this, _$identity);








}


abstract class ShelleyAddressParams extends ParsedAddressParams {
   factory ShelleyAddressParams({required final  ShelleyAddressParamsData shelleyAddressParams}) = _$ShelleyAddressParamsImpl;
   ShelleyAddressParams._(): super._();

  

 ShelleyAddressParamsData get shelleyAddressParams;
/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ShelleyAddressParamsImplCopyWith<_$ShelleyAddressParamsImpl> get copyWith => throw _privateConstructorUsedError;

}
