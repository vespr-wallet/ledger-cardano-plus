// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staking_data_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StakingDataSource {










}

/// @nodoc
abstract class $StakingDataSourceCopyWith<$Res>  {
  factory $StakingDataSourceCopyWith(StakingDataSource value, $Res Function(StakingDataSource) then) = _$StakingDataSourceCopyWithImpl<$Res, StakingDataSource>;



}

/// @nodoc
class _$StakingDataSourceCopyWithImpl<$Res,$Val extends StakingDataSource> implements $StakingDataSourceCopyWith<$Res> {
  _$StakingDataSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StakingDataSourceNoneImplCopyWith<$Res>  {
  factory _$$StakingDataSourceNoneImplCopyWith(_$StakingDataSourceNoneImpl value, $Res Function(_$StakingDataSourceNoneImpl) then) = __$$StakingDataSourceNoneImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$StakingDataSourceNoneImplCopyWithImpl<$Res> extends _$StakingDataSourceCopyWithImpl<$Res, _$StakingDataSourceNoneImpl> implements _$$StakingDataSourceNoneImplCopyWith<$Res> {
  __$$StakingDataSourceNoneImplCopyWithImpl(_$StakingDataSourceNoneImpl _value, $Res Function(_$StakingDataSourceNoneImpl) _then)
      : super(_value, _then);


/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.



}

/// @nodoc


class _$StakingDataSourceNoneImpl extends StakingDataSourceNone  {
   _$StakingDataSourceNoneImpl(): super._();

  



@override
String toString() {
  return 'StakingDataSource.none()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakingDataSourceNoneImpl);
}


@override
int get hashCode => runtimeType.hashCode;









}


abstract class StakingDataSourceNone extends StakingDataSource {
   factory StakingDataSourceNone() = _$StakingDataSourceNoneImpl;
   StakingDataSourceNone._(): super._();

  



}

/// @nodoc
abstract class _$$StakingDataSourceKeyImplCopyWith<$Res>  {
  factory _$$StakingDataSourceKeyImplCopyWith(_$StakingDataSourceKeyImpl value, $Res Function(_$StakingDataSourceKeyImpl) then) = __$$StakingDataSourceKeyImplCopyWithImpl<$Res>;
@useResult
$Res call({
 StakingDataSourceKeyData data
});


$StakingDataSourceKeyDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$StakingDataSourceKeyImplCopyWithImpl<$Res> extends _$StakingDataSourceCopyWithImpl<$Res, _$StakingDataSourceKeyImpl> implements _$$StakingDataSourceKeyImplCopyWith<$Res> {
  __$$StakingDataSourceKeyImplCopyWithImpl(_$StakingDataSourceKeyImpl _value, $Res Function(_$StakingDataSourceKeyImpl) _then)
      : super(_value, _then);


/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_$StakingDataSourceKeyImpl(
data: null == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as StakingDataSourceKeyData,
  ));
}

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StakingDataSourceKeyDataCopyWith<$Res> get data {
  
  return $StakingDataSourceKeyDataCopyWith<$Res>(_value.data, (value) {
    return _then(_value.copyWith(data: value) );
  });
}
}

/// @nodoc


class _$StakingDataSourceKeyImpl extends StakingDataSourceKey  {
   _$StakingDataSourceKeyImpl({required this.data}): super._();

  

@override final  StakingDataSourceKeyData data;

@override
String toString() {
  return 'StakingDataSource.key(data: $data)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakingDataSourceKeyImpl&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StakingDataSourceKeyImplCopyWith<_$StakingDataSourceKeyImpl> get copyWith => __$$StakingDataSourceKeyImplCopyWithImpl<_$StakingDataSourceKeyImpl>(this, _$identity);








}


abstract class StakingDataSourceKey extends StakingDataSource {
   factory StakingDataSourceKey({required final  StakingDataSourceKeyData data}) = _$StakingDataSourceKeyImpl;
   StakingDataSourceKey._(): super._();

  

 StakingDataSourceKeyData get data;
/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StakingDataSourceKeyImplCopyWith<_$StakingDataSourceKeyImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakingDataSourceBlockchainPointerImplCopyWith<$Res>  {
  factory _$$StakingDataSourceBlockchainPointerImplCopyWith(_$StakingDataSourceBlockchainPointerImpl value, $Res Function(_$StakingDataSourceBlockchainPointerImpl) then) = __$$StakingDataSourceBlockchainPointerImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int blockIndex, int txIndex, int certificateIndex
});



}

/// @nodoc
class __$$StakingDataSourceBlockchainPointerImplCopyWithImpl<$Res> extends _$StakingDataSourceCopyWithImpl<$Res, _$StakingDataSourceBlockchainPointerImpl> implements _$$StakingDataSourceBlockchainPointerImplCopyWith<$Res> {
  __$$StakingDataSourceBlockchainPointerImplCopyWithImpl(_$StakingDataSourceBlockchainPointerImpl _value, $Res Function(_$StakingDataSourceBlockchainPointerImpl) _then)
      : super(_value, _then);


/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blockIndex = null,Object? txIndex = null,Object? certificateIndex = null,}) {
  return _then(_$StakingDataSourceBlockchainPointerImpl(
blockIndex: null == blockIndex ? _value.blockIndex : blockIndex // ignore: cast_nullable_to_non_nullable
as int,txIndex: null == txIndex ? _value.txIndex : txIndex // ignore: cast_nullable_to_non_nullable
as int,certificateIndex: null == certificateIndex ? _value.certificateIndex : certificateIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$StakingDataSourceBlockchainPointerImpl extends StakingDataSourceBlockchainPointer  {
   _$StakingDataSourceBlockchainPointerImpl({required this.blockIndex, required this.txIndex, required this.certificateIndex}): super._();

  

@override final  int blockIndex;
@override final  int txIndex;
@override final  int certificateIndex;

@override
String toString() {
  return 'StakingDataSource.blockchainPointer(blockIndex: $blockIndex, txIndex: $txIndex, certificateIndex: $certificateIndex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakingDataSourceBlockchainPointerImpl&&(identical(other.blockIndex, blockIndex) || other.blockIndex == blockIndex)&&(identical(other.txIndex, txIndex) || other.txIndex == txIndex)&&(identical(other.certificateIndex, certificateIndex) || other.certificateIndex == certificateIndex));
}


@override
int get hashCode => Object.hash(runtimeType,blockIndex,txIndex,certificateIndex);

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StakingDataSourceBlockchainPointerImplCopyWith<_$StakingDataSourceBlockchainPointerImpl> get copyWith => __$$StakingDataSourceBlockchainPointerImplCopyWithImpl<_$StakingDataSourceBlockchainPointerImpl>(this, _$identity);








}


abstract class StakingDataSourceBlockchainPointer extends StakingDataSource {
   factory StakingDataSourceBlockchainPointer({required final  int blockIndex, required final  int txIndex, required final  int certificateIndex}) = _$StakingDataSourceBlockchainPointerImpl;
   StakingDataSourceBlockchainPointer._(): super._();

  

 int get blockIndex; int get txIndex; int get certificateIndex;
/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StakingDataSourceBlockchainPointerImplCopyWith<_$StakingDataSourceBlockchainPointerImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakingDataSourceScriptHashImplCopyWith<$Res>  {
  factory _$$StakingDataSourceScriptHashImplCopyWith(_$StakingDataSourceScriptHashImpl value, $Res Function(_$StakingDataSourceScriptHashImpl) then) = __$$StakingDataSourceScriptHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String scriptHashHex
});



}

/// @nodoc
class __$$StakingDataSourceScriptHashImplCopyWithImpl<$Res> extends _$StakingDataSourceCopyWithImpl<$Res, _$StakingDataSourceScriptHashImpl> implements _$$StakingDataSourceScriptHashImplCopyWith<$Res> {
  __$$StakingDataSourceScriptHashImplCopyWithImpl(_$StakingDataSourceScriptHashImpl _value, $Res Function(_$StakingDataSourceScriptHashImpl) _then)
      : super(_value, _then);


/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scriptHashHex = null,}) {
  return _then(_$StakingDataSourceScriptHashImpl(
scriptHashHex: null == scriptHashHex ? _value.scriptHashHex : scriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$StakingDataSourceScriptHashImpl extends StakingDataSourceScriptHash  {
   _$StakingDataSourceScriptHashImpl({required this.scriptHashHex}): super._();

  

@override final  String scriptHashHex;

@override
String toString() {
  return 'StakingDataSource.scriptHash(scriptHashHex: $scriptHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakingDataSourceScriptHashImpl&&(identical(other.scriptHashHex, scriptHashHex) || other.scriptHashHex == scriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,scriptHashHex);

/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StakingDataSourceScriptHashImplCopyWith<_$StakingDataSourceScriptHashImpl> get copyWith => __$$StakingDataSourceScriptHashImplCopyWithImpl<_$StakingDataSourceScriptHashImpl>(this, _$identity);








}


abstract class StakingDataSourceScriptHash extends StakingDataSource {
   factory StakingDataSourceScriptHash({required final  String scriptHashHex}) = _$StakingDataSourceScriptHashImpl;
   StakingDataSourceScriptHash._(): super._();

  

 String get scriptHashHex;
/// Create a copy of StakingDataSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StakingDataSourceScriptHashImplCopyWith<_$StakingDataSourceScriptHashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$StakingDataSourceKeyData {










}

/// @nodoc
abstract class $StakingDataSourceKeyDataCopyWith<$Res>  {
  factory $StakingDataSourceKeyDataCopyWith(StakingDataSourceKeyData value, $Res Function(StakingDataSourceKeyData) then) = _$StakingDataSourceKeyDataCopyWithImpl<$Res, StakingDataSourceKeyData>;



}

/// @nodoc
class _$StakingDataSourceKeyDataCopyWithImpl<$Res,$Val extends StakingDataSourceKeyData> implements $StakingDataSourceKeyDataCopyWith<$Res> {
  _$StakingDataSourceKeyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$StakingDataSourceKeyPathImplCopyWith<$Res>  {
  factory _$$StakingDataSourceKeyPathImplCopyWith(_$StakingDataSourceKeyPathImpl value, $Res Function(_$StakingDataSourceKeyPathImpl) then) = __$$StakingDataSourceKeyPathImplCopyWithImpl<$Res>;
@useResult
$Res call({
 LedgerSigningPath path
});


$LedgerSigningPathCopyWith<$Res> get path;
}

/// @nodoc
class __$$StakingDataSourceKeyPathImplCopyWithImpl<$Res> extends _$StakingDataSourceKeyDataCopyWithImpl<$Res, _$StakingDataSourceKeyPathImpl> implements _$$StakingDataSourceKeyPathImplCopyWith<$Res> {
  __$$StakingDataSourceKeyPathImplCopyWithImpl(_$StakingDataSourceKeyPathImpl _value, $Res Function(_$StakingDataSourceKeyPathImpl) _then)
      : super(_value, _then);


/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,}) {
  return _then(_$StakingDataSourceKeyPathImpl(
path: null == path ? _value.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get path {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.path, (value) {
    return _then(_value.copyWith(path: value) );
  });
}
}

/// @nodoc


class _$StakingDataSourceKeyPathImpl extends StakingDataSourceKeyPath  {
   _$StakingDataSourceKeyPathImpl({required this.path}): super._();

  

@override final  LedgerSigningPath path;

@override
String toString() {
  return 'StakingDataSourceKeyData.path(path: $path)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakingDataSourceKeyPathImpl&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StakingDataSourceKeyPathImplCopyWith<_$StakingDataSourceKeyPathImpl> get copyWith => __$$StakingDataSourceKeyPathImplCopyWithImpl<_$StakingDataSourceKeyPathImpl>(this, _$identity);








}


abstract class StakingDataSourceKeyPath extends StakingDataSourceKeyData {
   factory StakingDataSourceKeyPath({required final  LedgerSigningPath path}) = _$StakingDataSourceKeyPathImpl;
   StakingDataSourceKeyPath._(): super._();

  

 LedgerSigningPath get path;
/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StakingDataSourceKeyPathImplCopyWith<_$StakingDataSourceKeyPathImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakingDataSourceKeyHashImplCopyWith<$Res>  {
  factory _$$StakingDataSourceKeyHashImplCopyWith(_$StakingDataSourceKeyHashImpl value, $Res Function(_$StakingDataSourceKeyHashImpl) then) = __$$StakingDataSourceKeyHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String keyHashHex
});



}

/// @nodoc
class __$$StakingDataSourceKeyHashImplCopyWithImpl<$Res> extends _$StakingDataSourceKeyDataCopyWithImpl<$Res, _$StakingDataSourceKeyHashImpl> implements _$$StakingDataSourceKeyHashImplCopyWith<$Res> {
  __$$StakingDataSourceKeyHashImplCopyWithImpl(_$StakingDataSourceKeyHashImpl _value, $Res Function(_$StakingDataSourceKeyHashImpl) _then)
      : super(_value, _then);


/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyHashHex = null,}) {
  return _then(_$StakingDataSourceKeyHashImpl(
keyHashHex: null == keyHashHex ? _value.keyHashHex : keyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$StakingDataSourceKeyHashImpl extends StakingDataSourceKeyHash  {
   _$StakingDataSourceKeyHashImpl({required this.keyHashHex}): super._();

  

@override final  String keyHashHex;

@override
String toString() {
  return 'StakingDataSourceKeyData.hash(keyHashHex: $keyHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakingDataSourceKeyHashImpl&&(identical(other.keyHashHex, keyHashHex) || other.keyHashHex == keyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,keyHashHex);

/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StakingDataSourceKeyHashImplCopyWith<_$StakingDataSourceKeyHashImpl> get copyWith => __$$StakingDataSourceKeyHashImplCopyWithImpl<_$StakingDataSourceKeyHashImpl>(this, _$identity);








}


abstract class StakingDataSourceKeyHash extends StakingDataSourceKeyData {
   factory StakingDataSourceKeyHash({required final  String keyHashHex}) = _$StakingDataSourceKeyHashImpl;
   StakingDataSourceKeyHash._(): super._();

  

 String get keyHashHex;
/// Create a copy of StakingDataSourceKeyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StakingDataSourceKeyHashImplCopyWith<_$StakingDataSourceKeyHashImpl> get copyWith => throw _privateConstructorUsedError;

}
