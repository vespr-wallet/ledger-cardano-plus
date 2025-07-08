// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shelley_address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShelleyAddressParamsData {

 AddressType get addressType;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShelleyAddressParamsData&&(identical(other.addressType, addressType) || other.addressType == addressType));
}


@override
int get hashCode => Object.hash(runtimeType,addressType);

@override
String toString() {
  return 'ShelleyAddressParamsData(addressType: $addressType)';
}


}

/// @nodoc
class $ShelleyAddressParamsDataCopyWith<$Res>  {
$ShelleyAddressParamsDataCopyWith(ShelleyAddressParamsData _, $Res Function(ShelleyAddressParamsData) __);
}



/// @nodoc


class BasePaymentKeyStakeKey extends ShelleyAddressParamsData {
   BasePaymentKeyStakeKey({required this.spendingDataSource, required this.stakingDataSource}): super._();
  

 final  SpendingDataSourcePath spendingDataSource;
 final  StakingDataSourceKey stakingDataSource;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePaymentKeyStakeKeyCopyWith<BasePaymentKeyStakeKey> get copyWith => _$BasePaymentKeyStakeKeyCopyWithImpl<BasePaymentKeyStakeKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePaymentKeyStakeKey&&const DeepCollectionEquality().equals(other.spendingDataSource, spendingDataSource)&&const DeepCollectionEquality().equals(other.stakingDataSource, stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spendingDataSource),const DeepCollectionEquality().hash(stakingDataSource));

@override
String toString() {
  return 'ShelleyAddressParamsData.basePaymentKeyStakeKey(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


}

/// @nodoc
abstract mixin class $BasePaymentKeyStakeKeyCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $BasePaymentKeyStakeKeyCopyWith(BasePaymentKeyStakeKey value, $Res Function(BasePaymentKeyStakeKey) _then) = _$BasePaymentKeyStakeKeyCopyWithImpl;
@useResult
$Res call({
 SpendingDataSourcePath spendingDataSource, StakingDataSourceKey stakingDataSource
});




}
/// @nodoc
class _$BasePaymentKeyStakeKeyCopyWithImpl<$Res>
    implements $BasePaymentKeyStakeKeyCopyWith<$Res> {
  _$BasePaymentKeyStakeKeyCopyWithImpl(this._self, this._then);

  final BasePaymentKeyStakeKey _self;
  final $Res Function(BasePaymentKeyStakeKey) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingDataSource = freezed,Object? stakingDataSource = freezed,}) {
  return _then(BasePaymentKeyStakeKey(
spendingDataSource: freezed == spendingDataSource ? _self.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSourcePath,stakingDataSource: freezed == stakingDataSource ? _self.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSourceKey,
  ));
}


}

/// @nodoc


class BasePaymentScriptStakeKey extends ShelleyAddressParamsData {
   BasePaymentScriptStakeKey({required this.spendingDataSource, required this.stakingDataSource}): super._();
  

 final  SpendingDataSourceScriptHash spendingDataSource;
 final  StakingDataSourceKey stakingDataSource;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePaymentScriptStakeKeyCopyWith<BasePaymentScriptStakeKey> get copyWith => _$BasePaymentScriptStakeKeyCopyWithImpl<BasePaymentScriptStakeKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePaymentScriptStakeKey&&const DeepCollectionEquality().equals(other.spendingDataSource, spendingDataSource)&&const DeepCollectionEquality().equals(other.stakingDataSource, stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spendingDataSource),const DeepCollectionEquality().hash(stakingDataSource));

@override
String toString() {
  return 'ShelleyAddressParamsData.basePaymentScriptStakeKey(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


}

/// @nodoc
abstract mixin class $BasePaymentScriptStakeKeyCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $BasePaymentScriptStakeKeyCopyWith(BasePaymentScriptStakeKey value, $Res Function(BasePaymentScriptStakeKey) _then) = _$BasePaymentScriptStakeKeyCopyWithImpl;
@useResult
$Res call({
 SpendingDataSourceScriptHash spendingDataSource, StakingDataSourceKey stakingDataSource
});




}
/// @nodoc
class _$BasePaymentScriptStakeKeyCopyWithImpl<$Res>
    implements $BasePaymentScriptStakeKeyCopyWith<$Res> {
  _$BasePaymentScriptStakeKeyCopyWithImpl(this._self, this._then);

  final BasePaymentScriptStakeKey _self;
  final $Res Function(BasePaymentScriptStakeKey) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingDataSource = freezed,Object? stakingDataSource = freezed,}) {
  return _then(BasePaymentScriptStakeKey(
spendingDataSource: freezed == spendingDataSource ? _self.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSourceScriptHash,stakingDataSource: freezed == stakingDataSource ? _self.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSourceKey,
  ));
}


}

/// @nodoc


class BasePaymentKeyStakeScript extends ShelleyAddressParamsData {
   BasePaymentKeyStakeScript({required this.spendingDataSource, required this.stakingDataSource}): super._();
  

 final  SpendingDataSourcePath spendingDataSource;
 final  StakingDataSourceScriptHash stakingDataSource;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePaymentKeyStakeScriptCopyWith<BasePaymentKeyStakeScript> get copyWith => _$BasePaymentKeyStakeScriptCopyWithImpl<BasePaymentKeyStakeScript>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePaymentKeyStakeScript&&const DeepCollectionEquality().equals(other.spendingDataSource, spendingDataSource)&&const DeepCollectionEquality().equals(other.stakingDataSource, stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spendingDataSource),const DeepCollectionEquality().hash(stakingDataSource));

@override
String toString() {
  return 'ShelleyAddressParamsData.basePaymentKeyStakeScript(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


}

/// @nodoc
abstract mixin class $BasePaymentKeyStakeScriptCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $BasePaymentKeyStakeScriptCopyWith(BasePaymentKeyStakeScript value, $Res Function(BasePaymentKeyStakeScript) _then) = _$BasePaymentKeyStakeScriptCopyWithImpl;
@useResult
$Res call({
 SpendingDataSourcePath spendingDataSource, StakingDataSourceScriptHash stakingDataSource
});




}
/// @nodoc
class _$BasePaymentKeyStakeScriptCopyWithImpl<$Res>
    implements $BasePaymentKeyStakeScriptCopyWith<$Res> {
  _$BasePaymentKeyStakeScriptCopyWithImpl(this._self, this._then);

  final BasePaymentKeyStakeScript _self;
  final $Res Function(BasePaymentKeyStakeScript) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingDataSource = freezed,Object? stakingDataSource = freezed,}) {
  return _then(BasePaymentKeyStakeScript(
spendingDataSource: freezed == spendingDataSource ? _self.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSourcePath,stakingDataSource: freezed == stakingDataSource ? _self.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSourceScriptHash,
  ));
}


}

/// @nodoc


class BasePaymentScriptStakeScript extends ShelleyAddressParamsData {
   BasePaymentScriptStakeScript({required this.spendingDataSource, required this.stakingDataSource}): super._();
  

 final  SpendingDataSourceScriptHash spendingDataSource;
 final  StakingDataSourceScriptHash stakingDataSource;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePaymentScriptStakeScriptCopyWith<BasePaymentScriptStakeScript> get copyWith => _$BasePaymentScriptStakeScriptCopyWithImpl<BasePaymentScriptStakeScript>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePaymentScriptStakeScript&&const DeepCollectionEquality().equals(other.spendingDataSource, spendingDataSource)&&const DeepCollectionEquality().equals(other.stakingDataSource, stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spendingDataSource),const DeepCollectionEquality().hash(stakingDataSource));

@override
String toString() {
  return 'ShelleyAddressParamsData.basePaymentScriptStakeScript(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


}

/// @nodoc
abstract mixin class $BasePaymentScriptStakeScriptCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $BasePaymentScriptStakeScriptCopyWith(BasePaymentScriptStakeScript value, $Res Function(BasePaymentScriptStakeScript) _then) = _$BasePaymentScriptStakeScriptCopyWithImpl;
@useResult
$Res call({
 SpendingDataSourceScriptHash spendingDataSource, StakingDataSourceScriptHash stakingDataSource
});




}
/// @nodoc
class _$BasePaymentScriptStakeScriptCopyWithImpl<$Res>
    implements $BasePaymentScriptStakeScriptCopyWith<$Res> {
  _$BasePaymentScriptStakeScriptCopyWithImpl(this._self, this._then);

  final BasePaymentScriptStakeScript _self;
  final $Res Function(BasePaymentScriptStakeScript) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingDataSource = freezed,Object? stakingDataSource = freezed,}) {
  return _then(BasePaymentScriptStakeScript(
spendingDataSource: freezed == spendingDataSource ? _self.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSourceScriptHash,stakingDataSource: freezed == stakingDataSource ? _self.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSourceScriptHash,
  ));
}


}

/// @nodoc


class EnterpriseKey extends ShelleyAddressParamsData {
   EnterpriseKey({required this.spendingDataSource}): super._();
  

 final  SpendingDataSourcePath spendingDataSource;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnterpriseKeyCopyWith<EnterpriseKey> get copyWith => _$EnterpriseKeyCopyWithImpl<EnterpriseKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnterpriseKey&&const DeepCollectionEquality().equals(other.spendingDataSource, spendingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spendingDataSource));

@override
String toString() {
  return 'ShelleyAddressParamsData.enterpriseKey(spendingDataSource: $spendingDataSource)';
}


}

/// @nodoc
abstract mixin class $EnterpriseKeyCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $EnterpriseKeyCopyWith(EnterpriseKey value, $Res Function(EnterpriseKey) _then) = _$EnterpriseKeyCopyWithImpl;
@useResult
$Res call({
 SpendingDataSourcePath spendingDataSource
});




}
/// @nodoc
class _$EnterpriseKeyCopyWithImpl<$Res>
    implements $EnterpriseKeyCopyWith<$Res> {
  _$EnterpriseKeyCopyWithImpl(this._self, this._then);

  final EnterpriseKey _self;
  final $Res Function(EnterpriseKey) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingDataSource = freezed,}) {
  return _then(EnterpriseKey(
spendingDataSource: freezed == spendingDataSource ? _self.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSourcePath,
  ));
}


}

/// @nodoc


class EnterpriseScript extends ShelleyAddressParamsData {
   EnterpriseScript({required this.spendingDataSource}): super._();
  

 final  SpendingDataSourceScriptHash spendingDataSource;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnterpriseScriptCopyWith<EnterpriseScript> get copyWith => _$EnterpriseScriptCopyWithImpl<EnterpriseScript>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnterpriseScript&&const DeepCollectionEquality().equals(other.spendingDataSource, spendingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spendingDataSource));

@override
String toString() {
  return 'ShelleyAddressParamsData.enterpriseScript(spendingDataSource: $spendingDataSource)';
}


}

/// @nodoc
abstract mixin class $EnterpriseScriptCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $EnterpriseScriptCopyWith(EnterpriseScript value, $Res Function(EnterpriseScript) _then) = _$EnterpriseScriptCopyWithImpl;
@useResult
$Res call({
 SpendingDataSourceScriptHash spendingDataSource
});




}
/// @nodoc
class _$EnterpriseScriptCopyWithImpl<$Res>
    implements $EnterpriseScriptCopyWith<$Res> {
  _$EnterpriseScriptCopyWithImpl(this._self, this._then);

  final EnterpriseScript _self;
  final $Res Function(EnterpriseScript) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingDataSource = freezed,}) {
  return _then(EnterpriseScript(
spendingDataSource: freezed == spendingDataSource ? _self.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSourceScriptHash,
  ));
}


}

/// @nodoc


class PointerKey extends ShelleyAddressParamsData {
   PointerKey({required this.spendingDataSource, required this.stakingDataSource}): super._();
  

 final  SpendingDataSource spendingDataSource;
 final  StakingDataSource stakingDataSource;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointerKeyCopyWith<PointerKey> get copyWith => _$PointerKeyCopyWithImpl<PointerKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointerKey&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource)&&(identical(other.stakingDataSource, stakingDataSource) || other.stakingDataSource == stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource,stakingDataSource);

@override
String toString() {
  return 'ShelleyAddressParamsData.pointerKey(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


}

/// @nodoc
abstract mixin class $PointerKeyCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $PointerKeyCopyWith(PointerKey value, $Res Function(PointerKey) _then) = _$PointerKeyCopyWithImpl;
@useResult
$Res call({
 SpendingDataSource spendingDataSource, StakingDataSource stakingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;$StakingDataSourceCopyWith<$Res> get stakingDataSource;

}
/// @nodoc
class _$PointerKeyCopyWithImpl<$Res>
    implements $PointerKeyCopyWith<$Res> {
  _$PointerKeyCopyWithImpl(this._self, this._then);

  final PointerKey _self;
  final $Res Function(PointerKey) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingDataSource = null,Object? stakingDataSource = null,}) {
  return _then(PointerKey(
spendingDataSource: null == spendingDataSource ? _self.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,stakingDataSource: null == stakingDataSource ? _self.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendingDataSourceCopyWith<$Res> get spendingDataSource {
  
  return $SpendingDataSourceCopyWith<$Res>(_self.spendingDataSource, (value) {
    return _then(_self.copyWith(spendingDataSource: value));
  });
}/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceCopyWith<$Res> get stakingDataSource {
  
  return $StakingDataSourceCopyWith<$Res>(_self.stakingDataSource, (value) {
    return _then(_self.copyWith(stakingDataSource: value));
  });
}
}

/// @nodoc


class PointerScript extends ShelleyAddressParamsData {
   PointerScript({required this.spendingDataSource, required this.stakingDataSource}): super._();
  

 final  SpendingDataSource spendingDataSource;
 final  StakingDataSource stakingDataSource;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointerScriptCopyWith<PointerScript> get copyWith => _$PointerScriptCopyWithImpl<PointerScript>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointerScript&&(identical(other.spendingDataSource, spendingDataSource) || other.spendingDataSource == spendingDataSource)&&(identical(other.stakingDataSource, stakingDataSource) || other.stakingDataSource == stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,spendingDataSource,stakingDataSource);

@override
String toString() {
  return 'ShelleyAddressParamsData.pointerScript(spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
}


}

/// @nodoc
abstract mixin class $PointerScriptCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $PointerScriptCopyWith(PointerScript value, $Res Function(PointerScript) _then) = _$PointerScriptCopyWithImpl;
@useResult
$Res call({
 SpendingDataSource spendingDataSource, StakingDataSource stakingDataSource
});


$SpendingDataSourceCopyWith<$Res> get spendingDataSource;$StakingDataSourceCopyWith<$Res> get stakingDataSource;

}
/// @nodoc
class _$PointerScriptCopyWithImpl<$Res>
    implements $PointerScriptCopyWith<$Res> {
  _$PointerScriptCopyWithImpl(this._self, this._then);

  final PointerScript _self;
  final $Res Function(PointerScript) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingDataSource = null,Object? stakingDataSource = null,}) {
  return _then(PointerScript(
spendingDataSource: null == spendingDataSource ? _self.spendingDataSource : spendingDataSource // ignore: cast_nullable_to_non_nullable
as SpendingDataSource,stakingDataSource: null == stakingDataSource ? _self.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSource,
  ));
}

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendingDataSourceCopyWith<$Res> get spendingDataSource {
  
  return $SpendingDataSourceCopyWith<$Res>(_self.spendingDataSource, (value) {
    return _then(_self.copyWith(spendingDataSource: value));
  });
}/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceCopyWith<$Res> get stakingDataSource {
  
  return $StakingDataSourceCopyWith<$Res>(_self.stakingDataSource, (value) {
    return _then(_self.copyWith(stakingDataSource: value));
  });
}
}

/// @nodoc


class RewardKey extends ShelleyAddressParamsData {
   RewardKey({required this.stakingDataSource}): super._();
  

 final  StakingDataSourceKey stakingDataSource;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardKeyCopyWith<RewardKey> get copyWith => _$RewardKeyCopyWithImpl<RewardKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardKey&&const DeepCollectionEquality().equals(other.stakingDataSource, stakingDataSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stakingDataSource));

@override
String toString() {
  return 'ShelleyAddressParamsData.rewardKey(stakingDataSource: $stakingDataSource)';
}


}

/// @nodoc
abstract mixin class $RewardKeyCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $RewardKeyCopyWith(RewardKey value, $Res Function(RewardKey) _then) = _$RewardKeyCopyWithImpl;
@useResult
$Res call({
 StakingDataSourceKey stakingDataSource
});




}
/// @nodoc
class _$RewardKeyCopyWithImpl<$Res>
    implements $RewardKeyCopyWith<$Res> {
  _$RewardKeyCopyWithImpl(this._self, this._then);

  final RewardKey _self;
  final $Res Function(RewardKey) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stakingDataSource = freezed,}) {
  return _then(RewardKey(
stakingDataSource: freezed == stakingDataSource ? _self.stakingDataSource : stakingDataSource // ignore: cast_nullable_to_non_nullable
as StakingDataSourceKey,
  ));
}


}

/// @nodoc


class RewardScript extends ShelleyAddressParamsData {
   RewardScript({required this.stakingScriptHashHex}): super._();
  

 final  String stakingScriptHashHex;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardScriptCopyWith<RewardScript> get copyWith => _$RewardScriptCopyWithImpl<RewardScript>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardScript&&(identical(other.stakingScriptHashHex, stakingScriptHashHex) || other.stakingScriptHashHex == stakingScriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,stakingScriptHashHex);

@override
String toString() {
  return 'ShelleyAddressParamsData.rewardScript(stakingScriptHashHex: $stakingScriptHashHex)';
}


}

/// @nodoc
abstract mixin class $RewardScriptCopyWith<$Res> implements $ShelleyAddressParamsDataCopyWith<$Res> {
  factory $RewardScriptCopyWith(RewardScript value, $Res Function(RewardScript) _then) = _$RewardScriptCopyWithImpl;
@useResult
$Res call({
 String stakingScriptHashHex
});




}
/// @nodoc
class _$RewardScriptCopyWithImpl<$Res>
    implements $RewardScriptCopyWith<$Res> {
  _$RewardScriptCopyWithImpl(this._self, this._then);

  final RewardScript _self;
  final $Res Function(RewardScript) _then;

/// Create a copy of ShelleyAddressParamsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stakingScriptHashHex = null,}) {
  return _then(RewardScript(
stakingScriptHashHex: null == stakingScriptHashHex ? _self.stakingScriptHashHex : stakingScriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
