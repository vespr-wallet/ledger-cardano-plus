// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staking_data_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StakingDataSource {

 int get stakingDataSourceValue;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakingDataSource&&(identical(other.stakingDataSourceValue, stakingDataSourceValue) || other.stakingDataSourceValue == stakingDataSourceValue));
}


@override
int get hashCode => Object.hash(runtimeType,stakingDataSourceValue);

@override
String toString() {
  return 'StakingDataSource(stakingDataSourceValue: $stakingDataSourceValue)';
}


}

/// @nodoc
class $StakingDataSourceCopyWith<$Res>  {
$StakingDataSourceCopyWith(StakingDataSource _, $Res Function(StakingDataSource) __);
}


/// @nodoc


class StakingDataSourceNone extends StakingDataSource {
   StakingDataSourceNone(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakingDataSourceNone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StakingDataSource.none()';
}


}




/// @nodoc


class StakingDataSourceKey extends StakingDataSource {
   StakingDataSourceKey({required this.data}): super._();
  

 final  StakingDataSourceKeyData data;

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StakingDataSourceKeyCopyWith<StakingDataSourceKey> get copyWith => _$StakingDataSourceKeyCopyWithImpl<StakingDataSourceKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakingDataSourceKey&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'StakingDataSource.key(data: $data)';
}


}

/// @nodoc
abstract mixin class $StakingDataSourceKeyCopyWith<$Res> implements $StakingDataSourceCopyWith<$Res> {
  factory $StakingDataSourceKeyCopyWith(StakingDataSourceKey value, $Res Function(StakingDataSourceKey) _then) = _$StakingDataSourceKeyCopyWithImpl;
@useResult
$Res call({
 StakingDataSourceKeyData data
});


$StakingDataSourceKeyDataCopyWith<$Res> get data;

}
/// @nodoc
class _$StakingDataSourceKeyCopyWithImpl<$Res>
    implements $StakingDataSourceKeyCopyWith<$Res> {
  _$StakingDataSourceKeyCopyWithImpl(this._self, this._then);

  final StakingDataSourceKey _self;
  final $Res Function(StakingDataSourceKey) _then;

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(StakingDataSourceKey(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StakingDataSourceKeyData,
  ));
}

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceKeyDataCopyWith<$Res> get data {
  
  return $StakingDataSourceKeyDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class StakingDataSourceBlockchainPointer extends StakingDataSource {
   StakingDataSourceBlockchainPointer({required this.blockIndex, required this.txIndex, required this.certificateIndex}): super._();
  

 final  int blockIndex;
 final  int txIndex;
 final  int certificateIndex;

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StakingDataSourceBlockchainPointerCopyWith<StakingDataSourceBlockchainPointer> get copyWith => _$StakingDataSourceBlockchainPointerCopyWithImpl<StakingDataSourceBlockchainPointer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakingDataSourceBlockchainPointer&&(identical(other.blockIndex, blockIndex) || other.blockIndex == blockIndex)&&(identical(other.txIndex, txIndex) || other.txIndex == txIndex)&&(identical(other.certificateIndex, certificateIndex) || other.certificateIndex == certificateIndex));
}


@override
int get hashCode => Object.hash(runtimeType,blockIndex,txIndex,certificateIndex);

@override
String toString() {
  return 'StakingDataSource.blockchainPointer(blockIndex: $blockIndex, txIndex: $txIndex, certificateIndex: $certificateIndex)';
}


}

/// @nodoc
abstract mixin class $StakingDataSourceBlockchainPointerCopyWith<$Res> implements $StakingDataSourceCopyWith<$Res> {
  factory $StakingDataSourceBlockchainPointerCopyWith(StakingDataSourceBlockchainPointer value, $Res Function(StakingDataSourceBlockchainPointer) _then) = _$StakingDataSourceBlockchainPointerCopyWithImpl;
@useResult
$Res call({
 int blockIndex, int txIndex, int certificateIndex
});




}
/// @nodoc
class _$StakingDataSourceBlockchainPointerCopyWithImpl<$Res>
    implements $StakingDataSourceBlockchainPointerCopyWith<$Res> {
  _$StakingDataSourceBlockchainPointerCopyWithImpl(this._self, this._then);

  final StakingDataSourceBlockchainPointer _self;
  final $Res Function(StakingDataSourceBlockchainPointer) _then;

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? blockIndex = null,Object? txIndex = null,Object? certificateIndex = null,}) {
  return _then(StakingDataSourceBlockchainPointer(
blockIndex: null == blockIndex ? _self.blockIndex : blockIndex // ignore: cast_nullable_to_non_nullable
as int,txIndex: null == txIndex ? _self.txIndex : txIndex // ignore: cast_nullable_to_non_nullable
as int,certificateIndex: null == certificateIndex ? _self.certificateIndex : certificateIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class StakingDataSourceScriptHash extends StakingDataSource {
   StakingDataSourceScriptHash({required this.scriptHashHex}): super._();
  

 final  String scriptHashHex;

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StakingDataSourceScriptHashCopyWith<StakingDataSourceScriptHash> get copyWith => _$StakingDataSourceScriptHashCopyWithImpl<StakingDataSourceScriptHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakingDataSourceScriptHash&&(identical(other.scriptHashHex, scriptHashHex) || other.scriptHashHex == scriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,scriptHashHex);

@override
String toString() {
  return 'StakingDataSource.scriptHash(scriptHashHex: $scriptHashHex)';
}


}

/// @nodoc
abstract mixin class $StakingDataSourceScriptHashCopyWith<$Res> implements $StakingDataSourceCopyWith<$Res> {
  factory $StakingDataSourceScriptHashCopyWith(StakingDataSourceScriptHash value, $Res Function(StakingDataSourceScriptHash) _then) = _$StakingDataSourceScriptHashCopyWithImpl;
@useResult
$Res call({
 String scriptHashHex
});




}
/// @nodoc
class _$StakingDataSourceScriptHashCopyWithImpl<$Res>
    implements $StakingDataSourceScriptHashCopyWith<$Res> {
  _$StakingDataSourceScriptHashCopyWithImpl(this._self, this._then);

  final StakingDataSourceScriptHash _self;
  final $Res Function(StakingDataSourceScriptHash) _then;

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scriptHashHex = null,}) {
  return _then(StakingDataSourceScriptHash(
scriptHashHex: null == scriptHashHex ? _self.scriptHashHex : scriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$StakingDataSourceKeyData {

 int get stakingDataSourceValue;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakingDataSourceKeyData&&(identical(other.stakingDataSourceValue, stakingDataSourceValue) || other.stakingDataSourceValue == stakingDataSourceValue));
}


@override
int get hashCode => Object.hash(runtimeType,stakingDataSourceValue);

@override
String toString() {
  return 'StakingDataSourceKeyData(stakingDataSourceValue: $stakingDataSourceValue)';
}


}

/// @nodoc
class $StakingDataSourceKeyDataCopyWith<$Res>  {
$StakingDataSourceKeyDataCopyWith(StakingDataSourceKeyData _, $Res Function(StakingDataSourceKeyData) __);
}


/// @nodoc


class StakingDataSourceKeyPath extends StakingDataSourceKeyData {
   StakingDataSourceKeyPath({required this.path}): super._();
  

 final  LedgerSigningPath path;

/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StakingDataSourceKeyPathCopyWith<StakingDataSourceKeyPath> get copyWith => _$StakingDataSourceKeyPathCopyWithImpl<StakingDataSourceKeyPath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakingDataSourceKeyPath&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'StakingDataSourceKeyData.path(path: $path)';
}


}

/// @nodoc
abstract mixin class $StakingDataSourceKeyPathCopyWith<$Res> implements $StakingDataSourceKeyDataCopyWith<$Res> {
  factory $StakingDataSourceKeyPathCopyWith(StakingDataSourceKeyPath value, $Res Function(StakingDataSourceKeyPath) _then) = _$StakingDataSourceKeyPathCopyWithImpl;
@useResult
$Res call({
 LedgerSigningPath path
});


$LedgerSigningPathCopyWith<$Res> get path;

}
/// @nodoc
class _$StakingDataSourceKeyPathCopyWithImpl<$Res>
    implements $StakingDataSourceKeyPathCopyWith<$Res> {
  _$StakingDataSourceKeyPathCopyWithImpl(this._self, this._then);

  final StakingDataSourceKeyPath _self;
  final $Res Function(StakingDataSourceKeyPath) _then;

/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(StakingDataSourceKeyPath(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get path {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.path, (value) {
    return _then(_self.copyWith(path: value));
  });
}
}

/// @nodoc


class StakingDataSourceKeyHash extends StakingDataSourceKeyData {
   StakingDataSourceKeyHash({required this.keyHashHex}): super._();
  

 final  String keyHashHex;

/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StakingDataSourceKeyHashCopyWith<StakingDataSourceKeyHash> get copyWith => _$StakingDataSourceKeyHashCopyWithImpl<StakingDataSourceKeyHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StakingDataSourceKeyHash&&(identical(other.keyHashHex, keyHashHex) || other.keyHashHex == keyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,keyHashHex);

@override
String toString() {
  return 'StakingDataSourceKeyData.hash(keyHashHex: $keyHashHex)';
}


}

/// @nodoc
abstract mixin class $StakingDataSourceKeyHashCopyWith<$Res> implements $StakingDataSourceKeyDataCopyWith<$Res> {
  factory $StakingDataSourceKeyHashCopyWith(StakingDataSourceKeyHash value, $Res Function(StakingDataSourceKeyHash) _then) = _$StakingDataSourceKeyHashCopyWithImpl;
@useResult
$Res call({
 String keyHashHex
});




}
/// @nodoc
class _$StakingDataSourceKeyHashCopyWithImpl<$Res>
    implements $StakingDataSourceKeyHashCopyWith<$Res> {
  _$StakingDataSourceKeyHashCopyWithImpl(this._self, this._then);

  final StakingDataSourceKeyHash _self;
  final $Res Function(StakingDataSourceKeyHash) _then;

/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyHashHex = null,}) {
  return _then(StakingDataSourceKeyHash(
keyHashHex: null == keyHashHex ? _self.keyHashHex : keyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
