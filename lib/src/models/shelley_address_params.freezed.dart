// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shelley_address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShelleyAddressParamsData {










}

/// @nodoc
abstract class $ShelleyAddressParamsDataCopyWith<$Res>  {
  factory $ShelleyAddressParamsDataCopyWith(ShelleyAddressParamsData value, $Res Function(ShelleyAddressParamsData) then) = _$ShelleyAddressParamsDataCopyWithImpl<$Res, ShelleyAddressParamsData>;



}

/// @nodoc
class _$ShelleyAddressParamsDataCopyWithImpl<$Res,$Val extends ShelleyAddressParamsData> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  _$ShelleyAddressParamsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$BasePaymentKeyStakeKeyImplCopyWith<$Res>  {
  factory _$$BasePaymentKeyStakeKeyImplCopyWith(_$BasePaymentKeyStakeKeyImpl value, $Res Function(_$BasePaymentKeyStakeKeyImpl) then) = __$$BasePaymentKeyStakeKeyImplCopyWithImpl<$Res>;
@useResult
$Res call({
 SpendingDataSourcePath spendingDataSource, StakingDataSource stakingDataSource
});


$StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class __$$BasePaymentKeyStakeKeyImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$BasePaymentKeyStakeKeyImpl> implements _$$BasePaymentKeyStakeKeyImplCopyWith<$Res> {
  __$$BasePaymentKeyStakeKeyImplCopyWithImpl(_$BasePaymentKeyStakeKeyImpl _value, $Res Function(_$BasePaymentKeyStakeKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingDataSource = freezed,Object? stakingDataSource = null,}) {
  return _then(_$BasePaymentKeyStakeKeyImpl(
spendingDataSource: freezed == spendingDataSource ? _value.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSourcePath,stakingDataSource: null == stakingDataSource ? _value.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceCopyWith<$Res> get stakingDataSource {
  
  return $StakingDataSourceCopyWith<$Res>(_value.stakingDataSource, (value) {
    return _then(_value.copyWith(stakingDataSource: value) );
  });
}
}

/// @nodoc


class _$BasePaymentKeyStakeKeyImpl extends BasePaymentKeyStakeKey  {
   _$BasePaymentKeyStakeKeyImpl({required this.spendingDataSource, required this.stakingDataSource}): super._();

  

@override final  SpendingDataSourcePath spendingDataSource;
@override final  StakingDataSource stakingDataSource;

@override
String toString() {
  return 'ShelleyAddressParamsData.basePaymentKeyStakeKey(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BasePaymentKeyStakeKeyImpl&&const DeepCollectionEquality().equals(other.spendingDataSource, spendingDataSource)&&(identical(other.stakingDataSource, stakingDataSource) || other.stakingDataSource == stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spendingDataSource),stakingDataSource);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BasePaymentKeyStakeKeyImplCopyWith<_$BasePaymentKeyStakeKeyImpl> get copyWith => __$$BasePaymentKeyStakeKeyImplCopyWithImpl<_$BasePaymentKeyStakeKeyImpl>(this, _$identity);








}


abstract class BasePaymentKeyStakeKey extends ShelleyAddressParamsData {
   factory BasePaymentKeyStakeKey({required final  SpendingDataSourcePath spendingDataSource, required final  StakingDataSource stakingDataSource}) = _$BasePaymentKeyStakeKeyImpl;
   BasePaymentKeyStakeKey._(): super._();

  

 SpendingDataSourcePath get spendingDataSource; StakingDataSource get stakingDataSource;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$BasePaymentKeyStakeKeyImplCopyWith<_$BasePaymentKeyStakeKeyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$BasePaymentScriptStakeKeyImplCopyWith<$Res>  {
  factory _$$BasePaymentScriptStakeKeyImplCopyWith(_$BasePaymentScriptStakeKeyImpl value, $Res Function(_$BasePaymentScriptStakeKeyImpl) then) = __$$BasePaymentScriptStakeKeyImplCopyWithImpl<$Res>;
@useResult
$Res call({
 SpendingDataSource spendingDataSource, StakingDataSource stakingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;$StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class __$$BasePaymentScriptStakeKeyImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$BasePaymentScriptStakeKeyImpl> implements _$$BasePaymentScriptStakeKeyImplCopyWith<$Res> {
  __$$BasePaymentScriptStakeKeyImplCopyWithImpl(_$BasePaymentScriptStakeKeyImpl _value, $Res Function(_$BasePaymentScriptStakeKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingDataSource = null,Object? stakingDataSource = null,}) {
  return _then(_$BasePaymentScriptStakeKeyImpl(
spendingDataSource: null == spendingDataSource ? _value.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,stakingDataSource: null == stakingDataSource ? _value.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendingDataSourceCopyWith<$Res> get spendingDataSource {
  
  return $SpendingDataSourceCopyWith<$Res>(_value.spendingDataSource, (value) {
    return _then(_value.copyWith(spendingDataSource: value) );
  });
}/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceCopyWith<$Res> get stakingDataSource {
  
  return $StakingDataSourceCopyWith<$Res>(_value.stakingDataSource, (value) {
    return _then(_value.copyWith(stakingDataSource: value) );
  });
}
}

/// @nodoc


class _$BasePaymentScriptStakeKeyImpl extends BasePaymentScriptStakeKey  {
   _$BasePaymentScriptStakeKeyImpl({required this.spendingDataSource, required this.stakingDataSource}): super._();

  

@override final  SpendingDataSource spendingDataSource;
@override final  StakingDataSource stakingDataSource;

@override
String toString() {
  return 'ShelleyAddressParamsData.basePaymentScriptStakeKey(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BasePaymentScriptStakeKeyImpl&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource)&&(identical(other.stakingDataSource, stakingDataSource) || other.stakingDataSource == stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource,stakingDataSource);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BasePaymentScriptStakeKeyImplCopyWith<_$BasePaymentScriptStakeKeyImpl> get copyWith => __$$BasePaymentScriptStakeKeyImplCopyWithImpl<_$BasePaymentScriptStakeKeyImpl>(this, _$identity);








}


abstract class BasePaymentScriptStakeKey extends ShelleyAddressParamsData {
   factory BasePaymentScriptStakeKey({required final  SpendingDataSource spendingDataSource, required final  StakingDataSource stakingDataSource}) = _$BasePaymentScriptStakeKeyImpl;
   BasePaymentScriptStakeKey._(): super._();

  

 SpendingDataSource get spendingDataSource; StakingDataSource get stakingDataSource;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$BasePaymentScriptStakeKeyImplCopyWith<_$BasePaymentScriptStakeKeyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$BasePaymentKeyStakeScriptImplCopyWith<$Res>  {
  factory _$$BasePaymentKeyStakeScriptImplCopyWith(_$BasePaymentKeyStakeScriptImpl value, $Res Function(_$BasePaymentKeyStakeScriptImpl) then) = __$$BasePaymentKeyStakeScriptImplCopyWithImpl<$Res>;
@useResult
$Res call({
 SpendingDataSourcePath spendingDataSource, StakingDataSource stakingDataSource
});


$StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class __$$BasePaymentKeyStakeScriptImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$BasePaymentKeyStakeScriptImpl> implements _$$BasePaymentKeyStakeScriptImplCopyWith<$Res> {
  __$$BasePaymentKeyStakeScriptImplCopyWithImpl(_$BasePaymentKeyStakeScriptImpl _value, $Res Function(_$BasePaymentKeyStakeScriptImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingDataSource = freezed,Object? stakingDataSource = null,}) {
  return _then(_$BasePaymentKeyStakeScriptImpl(
spendingDataSource: freezed == spendingDataSource ? _value.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSourcePath,stakingDataSource: null == stakingDataSource ? _value.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceCopyWith<$Res> get stakingDataSource {
  
  return $StakingDataSourceCopyWith<$Res>(_value.stakingDataSource, (value) {
    return _then(_value.copyWith(stakingDataSource: value) );
  });
}
}

/// @nodoc


class _$BasePaymentKeyStakeScriptImpl extends BasePaymentKeyStakeScript  {
   _$BasePaymentKeyStakeScriptImpl({required this.spendingDataSource, required this.stakingDataSource}): super._();

  

@override final  SpendingDataSourcePath spendingDataSource;
@override final  StakingDataSource stakingDataSource;

@override
String toString() {
  return 'ShelleyAddressParamsData.basePaymentKeyStakeScript(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BasePaymentKeyStakeScriptImpl&&const DeepCollectionEquality().equals(other.spendingDataSource, spendingDataSource)&&(identical(other.stakingDataSource, stakingDataSource) || other.stakingDataSource == stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spendingDataSource),stakingDataSource);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BasePaymentKeyStakeScriptImplCopyWith<_$BasePaymentKeyStakeScriptImpl> get copyWith => __$$BasePaymentKeyStakeScriptImplCopyWithImpl<_$BasePaymentKeyStakeScriptImpl>(this, _$identity);








}


abstract class BasePaymentKeyStakeScript extends ShelleyAddressParamsData {
   factory BasePaymentKeyStakeScript({required final  SpendingDataSourcePath spendingDataSource, required final  StakingDataSource stakingDataSource}) = _$BasePaymentKeyStakeScriptImpl;
   BasePaymentKeyStakeScript._(): super._();

  

 SpendingDataSourcePath get spendingDataSource; StakingDataSource get stakingDataSource;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$BasePaymentKeyStakeScriptImplCopyWith<_$BasePaymentKeyStakeScriptImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$BasePaymentScriptStakeScriptImplCopyWith<$Res>  {
  factory _$$BasePaymentScriptStakeScriptImplCopyWith(_$BasePaymentScriptStakeScriptImpl value, $Res Function(_$BasePaymentScriptStakeScriptImpl) then) = __$$BasePaymentScriptStakeScriptImplCopyWithImpl<$Res>;
@useResult
$Res call({
 SpendingDataSource spendingDataSource, StakingDataSource stakingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;$StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class __$$BasePaymentScriptStakeScriptImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$BasePaymentScriptStakeScriptImpl> implements _$$BasePaymentScriptStakeScriptImplCopyWith<$Res> {
  __$$BasePaymentScriptStakeScriptImplCopyWithImpl(_$BasePaymentScriptStakeScriptImpl _value, $Res Function(_$BasePaymentScriptStakeScriptImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingDataSource = null,Object? stakingDataSource = null,}) {
  return _then(_$BasePaymentScriptStakeScriptImpl(
spendingDataSource: null == spendingDataSource ? _value.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,stakingDataSource: null == stakingDataSource ? _value.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendingDataSourceCopyWith<$Res> get spendingDataSource {
  
  return $SpendingDataSourceCopyWith<$Res>(_value.spendingDataSource, (value) {
    return _then(_value.copyWith(spendingDataSource: value) );
  });
}/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceCopyWith<$Res> get stakingDataSource {
  
  return $StakingDataSourceCopyWith<$Res>(_value.stakingDataSource, (value) {
    return _then(_value.copyWith(stakingDataSource: value) );
  });
}
}

/// @nodoc


class _$BasePaymentScriptStakeScriptImpl extends BasePaymentScriptStakeScript  {
   _$BasePaymentScriptStakeScriptImpl({required this.spendingDataSource, required this.stakingDataSource}): super._();

  

@override final  SpendingDataSource spendingDataSource;
@override final  StakingDataSource stakingDataSource;

@override
String toString() {
  return 'ShelleyAddressParamsData.basePaymentScriptStakeScript(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BasePaymentScriptStakeScriptImpl&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource)&&(identical(other.stakingDataSource, stakingDataSource) || other.stakingDataSource == stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource,stakingDataSource);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BasePaymentScriptStakeScriptImplCopyWith<_$BasePaymentScriptStakeScriptImpl> get copyWith => __$$BasePaymentScriptStakeScriptImplCopyWithImpl<_$BasePaymentScriptStakeScriptImpl>(this, _$identity);








}


abstract class BasePaymentScriptStakeScript extends ShelleyAddressParamsData {
   factory BasePaymentScriptStakeScript({required final  SpendingDataSource spendingDataSource, required final  StakingDataSource stakingDataSource}) = _$BasePaymentScriptStakeScriptImpl;
   BasePaymentScriptStakeScript._(): super._();

  

 SpendingDataSource get spendingDataSource; StakingDataSource get stakingDataSource;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$BasePaymentScriptStakeScriptImplCopyWith<_$BasePaymentScriptStakeScriptImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$EnterpriseKeyImplCopyWith<$Res>  {
  factory _$$EnterpriseKeyImplCopyWith(_$EnterpriseKeyImpl value, $Res Function(_$EnterpriseKeyImpl) then) = __$$EnterpriseKeyImplCopyWithImpl<$Res>;
@useResult
$Res call({
 SpendingDataSource spendingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;
}

/// @nodoc
class __$$EnterpriseKeyImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$EnterpriseKeyImpl> implements _$$EnterpriseKeyImplCopyWith<$Res> {
  __$$EnterpriseKeyImplCopyWithImpl(_$EnterpriseKeyImpl _value, $Res Function(_$EnterpriseKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingDataSource = null,}) {
  return _then(_$EnterpriseKeyImpl(
spendingDataSource: null == spendingDataSource ? _value.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
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


class _$EnterpriseKeyImpl extends EnterpriseKey  {
   _$EnterpriseKeyImpl({required this.spendingDataSource}): super._();

  

@override final  SpendingDataSource spendingDataSource;

@override
String toString() {
  return 'ShelleyAddressParamsData.enterpriseKey(spendingDataSource: $spendingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$EnterpriseKeyImpl&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$EnterpriseKeyImplCopyWith<_$EnterpriseKeyImpl> get copyWith => __$$EnterpriseKeyImplCopyWithImpl<_$EnterpriseKeyImpl>(this, _$identity);








}


abstract class EnterpriseKey extends ShelleyAddressParamsData {
   factory EnterpriseKey({required final  SpendingDataSource spendingDataSource}) = _$EnterpriseKeyImpl;
   EnterpriseKey._(): super._();

  

 SpendingDataSource get spendingDataSource;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$EnterpriseKeyImplCopyWith<_$EnterpriseKeyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$EnterpriseScriptImplCopyWith<$Res>  {
  factory _$$EnterpriseScriptImplCopyWith(_$EnterpriseScriptImpl value, $Res Function(_$EnterpriseScriptImpl) then) = __$$EnterpriseScriptImplCopyWithImpl<$Res>;
@useResult
$Res call({
 SpendingDataSource spendingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;
}

/// @nodoc
class __$$EnterpriseScriptImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$EnterpriseScriptImpl> implements _$$EnterpriseScriptImplCopyWith<$Res> {
  __$$EnterpriseScriptImplCopyWithImpl(_$EnterpriseScriptImpl _value, $Res Function(_$EnterpriseScriptImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingDataSource = null,}) {
  return _then(_$EnterpriseScriptImpl(
spendingDataSource: null == spendingDataSource ? _value.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
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


class _$EnterpriseScriptImpl extends EnterpriseScript  {
   _$EnterpriseScriptImpl({required this.spendingDataSource}): super._();

  

@override final  SpendingDataSource spendingDataSource;

@override
String toString() {
  return 'ShelleyAddressParamsData.enterpriseScript(spendingDataSource: $spendingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$EnterpriseScriptImpl&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$EnterpriseScriptImplCopyWith<_$EnterpriseScriptImpl> get copyWith => __$$EnterpriseScriptImplCopyWithImpl<_$EnterpriseScriptImpl>(this, _$identity);








}


abstract class EnterpriseScript extends ShelleyAddressParamsData {
   factory EnterpriseScript({required final  SpendingDataSource spendingDataSource}) = _$EnterpriseScriptImpl;
   EnterpriseScript._(): super._();

  

 SpendingDataSource get spendingDataSource;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$EnterpriseScriptImplCopyWith<_$EnterpriseScriptImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PointerKeyImplCopyWith<$Res>  {
  factory _$$PointerKeyImplCopyWith(_$PointerKeyImpl value, $Res Function(_$PointerKeyImpl) then) = __$$PointerKeyImplCopyWithImpl<$Res>;
@useResult
$Res call({
 SpendingDataSource spendingDataSource, StakingDataSource stakingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;$StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class __$$PointerKeyImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$PointerKeyImpl> implements _$$PointerKeyImplCopyWith<$Res> {
  __$$PointerKeyImplCopyWithImpl(_$PointerKeyImpl _value, $Res Function(_$PointerKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingDataSource = null,Object? stakingDataSource = null,}) {
  return _then(_$PointerKeyImpl(
spendingDataSource: null == spendingDataSource ? _value.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,stakingDataSource: null == stakingDataSource ? _value.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendingDataSourceCopyWith<$Res> get spendingDataSource {
  
  return $SpendingDataSourceCopyWith<$Res>(_value.spendingDataSource, (value) {
    return _then(_value.copyWith(spendingDataSource: value) );
  });
}/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceCopyWith<$Res> get stakingDataSource {
  
  return $StakingDataSourceCopyWith<$Res>(_value.stakingDataSource, (value) {
    return _then(_value.copyWith(stakingDataSource: value) );
  });
}
}

/// @nodoc


class _$PointerKeyImpl extends PointerKey  {
   _$PointerKeyImpl({required this.spendingDataSource, required this.stakingDataSource}): super._();

  

@override final  SpendingDataSource spendingDataSource;
@override final  StakingDataSource stakingDataSource;

@override
String toString() {
  return 'ShelleyAddressParamsData.pointerKey(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PointerKeyImpl&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource)&&(identical(other.stakingDataSource, stakingDataSource) || other.stakingDataSource == stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource,stakingDataSource);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PointerKeyImplCopyWith<_$PointerKeyImpl> get copyWith => __$$PointerKeyImplCopyWithImpl<_$PointerKeyImpl>(this, _$identity);








}


abstract class PointerKey extends ShelleyAddressParamsData {
   factory PointerKey({required final  SpendingDataSource spendingDataSource, required final  StakingDataSource stakingDataSource}) = _$PointerKeyImpl;
   PointerKey._(): super._();

  

 SpendingDataSource get spendingDataSource; StakingDataSource get stakingDataSource;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PointerKeyImplCopyWith<_$PointerKeyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$PointerScriptImplCopyWith<$Res>  {
  factory _$$PointerScriptImplCopyWith(_$PointerScriptImpl value, $Res Function(_$PointerScriptImpl) then) = __$$PointerScriptImplCopyWithImpl<$Res>;
@useResult
$Res call({
 SpendingDataSource spendingDataSource, StakingDataSource stakingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;$StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class __$$PointerScriptImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$PointerScriptImpl> implements _$$PointerScriptImplCopyWith<$Res> {
  __$$PointerScriptImplCopyWithImpl(_$PointerScriptImpl _value, $Res Function(_$PointerScriptImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingDataSource = null,Object? stakingDataSource = null,}) {
  return _then(_$PointerScriptImpl(
spendingDataSource: null == spendingDataSource ? _value.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,stakingDataSource: null == stakingDataSource ? _value.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendingDataSourceCopyWith<$Res> get spendingDataSource {
  
  return $SpendingDataSourceCopyWith<$Res>(_value.spendingDataSource, (value) {
    return _then(_value.copyWith(spendingDataSource: value) );
  });
}/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceCopyWith<$Res> get stakingDataSource {
  
  return $StakingDataSourceCopyWith<$Res>(_value.stakingDataSource, (value) {
    return _then(_value.copyWith(stakingDataSource: value) );
  });
}
}

/// @nodoc


class _$PointerScriptImpl extends PointerScript  {
   _$PointerScriptImpl({required this.spendingDataSource, required this.stakingDataSource}): super._();

  

@override final  SpendingDataSource spendingDataSource;
@override final  StakingDataSource stakingDataSource;

@override
String toString() {
  return 'ShelleyAddressParamsData.pointerScript(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PointerScriptImpl&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource)&&(identical(other.stakingDataSource, stakingDataSource) || other.stakingDataSource == stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource,stakingDataSource);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$PointerScriptImplCopyWith<_$PointerScriptImpl> get copyWith => __$$PointerScriptImplCopyWithImpl<_$PointerScriptImpl>(this, _$identity);








}


abstract class PointerScript extends ShelleyAddressParamsData {
   factory PointerScript({required final  SpendingDataSource spendingDataSource, required final  StakingDataSource stakingDataSource}) = _$PointerScriptImpl;
   PointerScript._(): super._();

  

 SpendingDataSource get spendingDataSource; StakingDataSource get stakingDataSource;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$PointerScriptImplCopyWith<_$PointerScriptImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$RewardKeyImplCopyWith<$Res>  {
  factory _$$RewardKeyImplCopyWith(_$RewardKeyImpl value, $Res Function(_$RewardKeyImpl) then) = __$$RewardKeyImplCopyWithImpl<$Res>;
@useResult
$Res call({
 StakingDataSource stakingDataSource
});


$StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class __$$RewardKeyImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$RewardKeyImpl> implements _$$RewardKeyImplCopyWith<$Res> {
  __$$RewardKeyImplCopyWithImpl(_$RewardKeyImpl _value, $Res Function(_$RewardKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stakingDataSource = null,}) {
  return _then(_$RewardKeyImpl(
stakingDataSource: null == stakingDataSource ? _value.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceCopyWith<$Res> get stakingDataSource {
  
  return $StakingDataSourceCopyWith<$Res>(_value.stakingDataSource, (value) {
    return _then(_value.copyWith(stakingDataSource: value) );
  });
}
}

/// @nodoc


class _$RewardKeyImpl extends RewardKey  {
   _$RewardKeyImpl({required this.stakingDataSource}): super._();

  

@override final  StakingDataSource stakingDataSource;

@override
String toString() {
  return 'ShelleyAddressParamsData.rewardKey(stakingDataSource: $stakingDataSource)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RewardKeyImpl&&(identical(other.stakingDataSource, stakingDataSource) || other.stakingDataSource == stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,stakingDataSource);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RewardKeyImplCopyWith<_$RewardKeyImpl> get copyWith => __$$RewardKeyImplCopyWithImpl<_$RewardKeyImpl>(this, _$identity);








}


abstract class RewardKey extends ShelleyAddressParamsData {
   factory RewardKey({required final  StakingDataSource stakingDataSource}) = _$RewardKeyImpl;
   RewardKey._(): super._();

  

 StakingDataSource get stakingDataSource;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$RewardKeyImplCopyWith<_$RewardKeyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$RewardScriptImplCopyWith<$Res>  {
  factory _$$RewardScriptImplCopyWith(_$RewardScriptImpl value, $Res Function(_$RewardScriptImpl) then) = __$$RewardScriptImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String stakingScriptHashHex
});



}

/// @nodoc
class __$$RewardScriptImplCopyWithImpl<$Res> extends _$ShelleyAddressParamsDataCopyWithImpl<$Res, _$RewardScriptImpl> implements _$$RewardScriptImplCopyWith<$Res> {
  __$$RewardScriptImplCopyWithImpl(_$RewardScriptImpl _value, $Res Function(_$RewardScriptImpl) _then)
      : super(_value, _then);


/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stakingScriptHashHex = null,}) {
  return _then(_$RewardScriptImpl(
stakingScriptHashHex: null == stakingScriptHashHex ? _value.stakingScriptHashHex : stakingScriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$RewardScriptImpl extends RewardScript  {
   _$RewardScriptImpl({required this.stakingScriptHashHex}): super._();

  

@override final  String stakingScriptHashHex;

@override
String toString() {
  return 'ShelleyAddressParamsData.rewardScript(stakingScriptHashHex: $stakingScriptHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RewardScriptImpl&&(identical(other.stakingScriptHashHex, stakingScriptHashHex) || other.stakingScriptHashHex == stakingScriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,stakingScriptHashHex);

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RewardScriptImplCopyWith<_$RewardScriptImpl> get copyWith => __$$RewardScriptImplCopyWithImpl<_$RewardScriptImpl>(this, _$identity);








}


abstract class RewardScript extends ShelleyAddressParamsData {
   factory RewardScript({required final  String stakingScriptHashHex}) = _$RewardScriptImpl;
   RewardScript._(): super._();

  

 String get stakingScriptHashHex;
/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$RewardScriptImplCopyWith<_$RewardScriptImpl> get copyWith => throw _privateConstructorUsedError;

}
