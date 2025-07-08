// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedAddressParams {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedAddressParams);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ParsedAddressParams()';
}


}

/// @nodoc
class $ParsedAddressParamsCopyWith<$Res>  {
$ParsedAddressParamsCopyWith(ParsedAddressParams _, $Res Function(ParsedAddressParams) __);
}



/// @nodoc


class ByronAddressParams extends ParsedAddressParams {
   ByronAddressParams({required this.spendingDataSource}): super._();
  

 final  SpendingDataSource spendingDataSource;

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ByronAddressParamsCopyWith<ByronAddressParams> get copyWith => _$ByronAddressParamsCopyWithImpl<ByronAddressParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ByronAddressParams&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource);

@override
String toString() {
  return 'ParsedAddressParams.byron(spendingDataSource: $spendingDataSource)';
}


}

/// @nodoc
abstract mixin class $ByronAddressParamsCopyWith<$Res> implements $ParsedAddressParamsCopyWith<$Res> {
  factory $ByronAddressParamsCopyWith(ByronAddressParams value, $Res Function(ByronAddressParams) _then) = _$ByronAddressParamsCopyWithImpl;
@useResult
$Res call({
 SpendingDataSource spendingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;

}
/// @nodoc
class _$ByronAddressParamsCopyWithImpl<$Res>
    implements $ByronAddressParamsCopyWith<$Res> {
  _$ByronAddressParamsCopyWithImpl(this._self, this._then);

  final ByronAddressParams _self;
  final $Res Function(ByronAddressParams) _then;

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingDataSource = null,}) {
  return _then(ByronAddressParams(
spendingDataSource: null == spendingDataSource ? _self.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,
  ));
}

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendingDataSourceCopyWith<$Res> get spendingDataSource {
  
  return $SpendingDataSourceCopyWith<$Res>(_self.spendingDataSource, (value) {
    return _then(_self.copyWith(spendingDataSource: value));
  });
}
}

/// @nodoc


class ShelleyAddressParams extends ParsedAddressParams {
   ShelleyAddressParams({required this.shelleyAddressParams}): super._();
  

 final  ShelleyAddressParamsData shelleyAddressParams;

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShelleyAddressParamsCopyWith<ShelleyAddressParams> get copyWith => _$ShelleyAddressParamsCopyWithImpl<ShelleyAddressParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShelleyAddressParams&&(identical(other.shelleyAddressParams, shelleyAddressParams) || other.shelleyAddressParams == shelleyAddressParams));
}


@override
int get hashCode => Object.hash(runtimeType,shelleyAddressParams);

@override
String toString() {
  return 'ParsedAddressParams.shelley(shelleyAddressParams: $shelleyAddressParams)';
}


}

/// @nodoc
abstract mixin class $ShelleyAddressParamsCopyWith<$Res> implements $ParsedAddressParamsCopyWith<$Res> {
  factory $ShelleyAddressParamsCopyWith(ShelleyAddressParams value, $Res Function(ShelleyAddressParams) _then) = _$ShelleyAddressParamsCopyWithImpl;
@useResult
$Res call({
 ShelleyAddressParamsData shelleyAddressParams
});


$ShelleyAddressParamsDataCopyWith<$Res> get shelleyAddressParams;

}
/// @nodoc
class _$ShelleyAddressParamsCopyWithImpl<$Res>
    implements $ShelleyAddressParamsCopyWith<$Res> {
  _$ShelleyAddressParamsCopyWithImpl(this._self, this._then);

  final ShelleyAddressParams _self;
  final $Res Function(ShelleyAddressParams) _then;

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? shelleyAddressParams = null,}) {
  return _then(ShelleyAddressParams(
shelleyAddressParams: null == shelleyAddressParams ? _self.shelleyAddressParams : shelleyAddressParams // ignore: cast_nullable_to_non_nullable
as ShelleyAddressParamsData,
  ));
}

/// Create a copy of ParsedAddressParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShelleyAddressParamsDataCopyWith<$Res> get shelleyAddressParams {
  
  return $ShelleyAddressParamsDataCopyWith<$Res>(_self.shelleyAddressParams, (value) {
    return _then(_self.copyWith(shelleyAddressParams: value));
  });
}
}

// dart format on
