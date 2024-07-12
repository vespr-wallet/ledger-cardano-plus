// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_voter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedVoter {










}

/// @nodoc
abstract class $ParsedVoterCopyWith<$Res>  {
  factory $ParsedVoterCopyWith(ParsedVoter value, $Res Function(ParsedVoter) then) = _$ParsedVoterCopyWithImpl<$Res, ParsedVoter>;



}

/// @nodoc
class _$ParsedVoterCopyWithImpl<$Res,$Val extends ParsedVoter> implements $ParsedVoterCopyWith<$Res> {
  _$ParsedVoterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.


}


/// @nodoc
abstract class _$$CommitteeKeyHashImplCopyWith<$Res>  {
  factory _$$CommitteeKeyHashImplCopyWith(_$CommitteeKeyHashImpl value, $Res Function(_$CommitteeKeyHashImpl) then) = __$$CommitteeKeyHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String keyHashHex
});



}

/// @nodoc
class __$$CommitteeKeyHashImplCopyWithImpl<$Res> extends _$ParsedVoterCopyWithImpl<$Res, _$CommitteeKeyHashImpl> implements _$$CommitteeKeyHashImplCopyWith<$Res> {
  __$$CommitteeKeyHashImplCopyWithImpl(_$CommitteeKeyHashImpl _value, $Res Function(_$CommitteeKeyHashImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyHashHex = null,}) {
  return _then(_$CommitteeKeyHashImpl(
keyHashHex: null == keyHashHex ? _value.keyHashHex : keyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$CommitteeKeyHashImpl extends CommitteeKeyHash  {
   _$CommitteeKeyHashImpl({required this.keyHashHex}): super._();

  

@override final  String keyHashHex;

@override
String toString() {
  return 'ParsedVoter.committeeKeyHash(keyHashHex: $keyHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CommitteeKeyHashImpl&&(identical(other.keyHashHex, keyHashHex) || other.keyHashHex == keyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,keyHashHex);

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CommitteeKeyHashImplCopyWith<_$CommitteeKeyHashImpl> get copyWith => __$$CommitteeKeyHashImplCopyWithImpl<_$CommitteeKeyHashImpl>(this, _$identity);








}


abstract class CommitteeKeyHash extends ParsedVoter {
   factory CommitteeKeyHash({required final  String keyHashHex}) = _$CommitteeKeyHashImpl;
   CommitteeKeyHash._(): super._();

  

 String get keyHashHex;
/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CommitteeKeyHashImplCopyWith<_$CommitteeKeyHashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CommitteeKeyPathImplCopyWith<$Res>  {
  factory _$$CommitteeKeyPathImplCopyWith(_$CommitteeKeyPathImpl value, $Res Function(_$CommitteeKeyPathImpl) then) = __$$CommitteeKeyPathImplCopyWithImpl<$Res>;
@useResult
$Res call({
 LedgerSigningPath keyPath
});


$LedgerSigningPathCopyWith<$Res> get keyPath;
}

/// @nodoc
class __$$CommitteeKeyPathImplCopyWithImpl<$Res> extends _$ParsedVoterCopyWithImpl<$Res, _$CommitteeKeyPathImpl> implements _$$CommitteeKeyPathImplCopyWith<$Res> {
  __$$CommitteeKeyPathImplCopyWithImpl(_$CommitteeKeyPathImpl _value, $Res Function(_$CommitteeKeyPathImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyPath = null,}) {
  return _then(_$CommitteeKeyPathImpl(
keyPath: null == keyPath ? _value.keyPath : keyPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get keyPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.keyPath, (value) {
    return _then(_value.copyWith(keyPath: value) );
  });
}
}

/// @nodoc


class _$CommitteeKeyPathImpl extends CommitteeKeyPath  {
   _$CommitteeKeyPathImpl({required this.keyPath}): super._();

  

@override final  LedgerSigningPath keyPath;

@override
String toString() {
  return 'ParsedVoter.committeeKeyPath(keyPath: $keyPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CommitteeKeyPathImpl&&(identical(other.keyPath, keyPath) || other.keyPath == keyPath));
}


@override
int get hashCode => Object.hash(runtimeType,keyPath);

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CommitteeKeyPathImplCopyWith<_$CommitteeKeyPathImpl> get copyWith => __$$CommitteeKeyPathImplCopyWithImpl<_$CommitteeKeyPathImpl>(this, _$identity);








}


abstract class CommitteeKeyPath extends ParsedVoter {
   factory CommitteeKeyPath({required final  LedgerSigningPath keyPath}) = _$CommitteeKeyPathImpl;
   CommitteeKeyPath._(): super._();

  

 LedgerSigningPath get keyPath;
/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CommitteeKeyPathImplCopyWith<_$CommitteeKeyPathImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$CommitteeScriptHashImplCopyWith<$Res>  {
  factory _$$CommitteeScriptHashImplCopyWith(_$CommitteeScriptHashImpl value, $Res Function(_$CommitteeScriptHashImpl) then) = __$$CommitteeScriptHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String scriptHashHex
});



}

/// @nodoc
class __$$CommitteeScriptHashImplCopyWithImpl<$Res> extends _$ParsedVoterCopyWithImpl<$Res, _$CommitteeScriptHashImpl> implements _$$CommitteeScriptHashImplCopyWith<$Res> {
  __$$CommitteeScriptHashImplCopyWithImpl(_$CommitteeScriptHashImpl _value, $Res Function(_$CommitteeScriptHashImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scriptHashHex = null,}) {
  return _then(_$CommitteeScriptHashImpl(
scriptHashHex: null == scriptHashHex ? _value.scriptHashHex : scriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$CommitteeScriptHashImpl extends CommitteeScriptHash  {
   _$CommitteeScriptHashImpl({required this.scriptHashHex}): super._();

  

@override final  String scriptHashHex;

@override
String toString() {
  return 'ParsedVoter.committeeScriptHash(scriptHashHex: $scriptHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CommitteeScriptHashImpl&&(identical(other.scriptHashHex, scriptHashHex) || other.scriptHashHex == scriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,scriptHashHex);

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$CommitteeScriptHashImplCopyWith<_$CommitteeScriptHashImpl> get copyWith => __$$CommitteeScriptHashImplCopyWithImpl<_$CommitteeScriptHashImpl>(this, _$identity);








}


abstract class CommitteeScriptHash extends ParsedVoter {
   factory CommitteeScriptHash({required final  String scriptHashHex}) = _$CommitteeScriptHashImpl;
   CommitteeScriptHash._(): super._();

  

 String get scriptHashHex;
/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$CommitteeScriptHashImplCopyWith<_$CommitteeScriptHashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DrepKeyHashImplCopyWith<$Res>  {
  factory _$$DrepKeyHashImplCopyWith(_$DrepKeyHashImpl value, $Res Function(_$DrepKeyHashImpl) then) = __$$DrepKeyHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String keyHashHex
});



}

/// @nodoc
class __$$DrepKeyHashImplCopyWithImpl<$Res> extends _$ParsedVoterCopyWithImpl<$Res, _$DrepKeyHashImpl> implements _$$DrepKeyHashImplCopyWith<$Res> {
  __$$DrepKeyHashImplCopyWithImpl(_$DrepKeyHashImpl _value, $Res Function(_$DrepKeyHashImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyHashHex = null,}) {
  return _then(_$DrepKeyHashImpl(
keyHashHex: null == keyHashHex ? _value.keyHashHex : keyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$DrepKeyHashImpl extends DrepKeyHash  {
   _$DrepKeyHashImpl({required this.keyHashHex}): super._();

  

@override final  String keyHashHex;

@override
String toString() {
  return 'ParsedVoter.drepKeyHash(keyHashHex: $keyHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DrepKeyHashImpl&&(identical(other.keyHashHex, keyHashHex) || other.keyHashHex == keyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,keyHashHex);

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DrepKeyHashImplCopyWith<_$DrepKeyHashImpl> get copyWith => __$$DrepKeyHashImplCopyWithImpl<_$DrepKeyHashImpl>(this, _$identity);








}


abstract class DrepKeyHash extends ParsedVoter {
   factory DrepKeyHash({required final  String keyHashHex}) = _$DrepKeyHashImpl;
   DrepKeyHash._(): super._();

  

 String get keyHashHex;
/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$DrepKeyHashImplCopyWith<_$DrepKeyHashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DrepKeyPathImplCopyWith<$Res>  {
  factory _$$DrepKeyPathImplCopyWith(_$DrepKeyPathImpl value, $Res Function(_$DrepKeyPathImpl) then) = __$$DrepKeyPathImplCopyWithImpl<$Res>;
@useResult
$Res call({
 LedgerSigningPath keyPath
});


$LedgerSigningPathCopyWith<$Res> get keyPath;
}

/// @nodoc
class __$$DrepKeyPathImplCopyWithImpl<$Res> extends _$ParsedVoterCopyWithImpl<$Res, _$DrepKeyPathImpl> implements _$$DrepKeyPathImplCopyWith<$Res> {
  __$$DrepKeyPathImplCopyWithImpl(_$DrepKeyPathImpl _value, $Res Function(_$DrepKeyPathImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyPath = null,}) {
  return _then(_$DrepKeyPathImpl(
keyPath: null == keyPath ? _value.keyPath : keyPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get keyPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.keyPath, (value) {
    return _then(_value.copyWith(keyPath: value) );
  });
}
}

/// @nodoc


class _$DrepKeyPathImpl extends DrepKeyPath  {
   _$DrepKeyPathImpl({required this.keyPath}): super._();

  

@override final  LedgerSigningPath keyPath;

@override
String toString() {
  return 'ParsedVoter.drepKeyPath(keyPath: $keyPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DrepKeyPathImpl&&(identical(other.keyPath, keyPath) || other.keyPath == keyPath));
}


@override
int get hashCode => Object.hash(runtimeType,keyPath);

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DrepKeyPathImplCopyWith<_$DrepKeyPathImpl> get copyWith => __$$DrepKeyPathImplCopyWithImpl<_$DrepKeyPathImpl>(this, _$identity);








}


abstract class DrepKeyPath extends ParsedVoter {
   factory DrepKeyPath({required final  LedgerSigningPath keyPath}) = _$DrepKeyPathImpl;
   DrepKeyPath._(): super._();

  

 LedgerSigningPath get keyPath;
/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$DrepKeyPathImplCopyWith<_$DrepKeyPathImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$DrepScriptHashImplCopyWith<$Res>  {
  factory _$$DrepScriptHashImplCopyWith(_$DrepScriptHashImpl value, $Res Function(_$DrepScriptHashImpl) then) = __$$DrepScriptHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String scriptHashHex
});



}

/// @nodoc
class __$$DrepScriptHashImplCopyWithImpl<$Res> extends _$ParsedVoterCopyWithImpl<$Res, _$DrepScriptHashImpl> implements _$$DrepScriptHashImplCopyWith<$Res> {
  __$$DrepScriptHashImplCopyWithImpl(_$DrepScriptHashImpl _value, $Res Function(_$DrepScriptHashImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scriptHashHex = null,}) {
  return _then(_$DrepScriptHashImpl(
scriptHashHex: null == scriptHashHex ? _value.scriptHashHex : scriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$DrepScriptHashImpl extends DrepScriptHash  {
   _$DrepScriptHashImpl({required this.scriptHashHex}): super._();

  

@override final  String scriptHashHex;

@override
String toString() {
  return 'ParsedVoter.drepScriptHash(scriptHashHex: $scriptHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DrepScriptHashImpl&&(identical(other.scriptHashHex, scriptHashHex) || other.scriptHashHex == scriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,scriptHashHex);

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DrepScriptHashImplCopyWith<_$DrepScriptHashImpl> get copyWith => __$$DrepScriptHashImplCopyWithImpl<_$DrepScriptHashImpl>(this, _$identity);








}


abstract class DrepScriptHash extends ParsedVoter {
   factory DrepScriptHash({required final  String scriptHashHex}) = _$DrepScriptHashImpl;
   DrepScriptHash._(): super._();

  

 String get scriptHashHex;
/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$DrepScriptHashImplCopyWith<_$DrepScriptHashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakePoolKeyHashImplCopyWith<$Res>  {
  factory _$$StakePoolKeyHashImplCopyWith(_$StakePoolKeyHashImpl value, $Res Function(_$StakePoolKeyHashImpl) then) = __$$StakePoolKeyHashImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String keyHashHex
});



}

/// @nodoc
class __$$StakePoolKeyHashImplCopyWithImpl<$Res> extends _$ParsedVoterCopyWithImpl<$Res, _$StakePoolKeyHashImpl> implements _$$StakePoolKeyHashImplCopyWith<$Res> {
  __$$StakePoolKeyHashImplCopyWithImpl(_$StakePoolKeyHashImpl _value, $Res Function(_$StakePoolKeyHashImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyHashHex = null,}) {
  return _then(_$StakePoolKeyHashImpl(
keyHashHex: null == keyHashHex ? _value.keyHashHex : keyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$StakePoolKeyHashImpl extends StakePoolKeyHash  {
   _$StakePoolKeyHashImpl({required this.keyHashHex}): super._();

  

@override final  String keyHashHex;

@override
String toString() {
  return 'ParsedVoter.stakePoolKeyHash(keyHashHex: $keyHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakePoolKeyHashImpl&&(identical(other.keyHashHex, keyHashHex) || other.keyHashHex == keyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,keyHashHex);

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StakePoolKeyHashImplCopyWith<_$StakePoolKeyHashImpl> get copyWith => __$$StakePoolKeyHashImplCopyWithImpl<_$StakePoolKeyHashImpl>(this, _$identity);








}


abstract class StakePoolKeyHash extends ParsedVoter {
   factory StakePoolKeyHash({required final  String keyHashHex}) = _$StakePoolKeyHashImpl;
   StakePoolKeyHash._(): super._();

  

 String get keyHashHex;
/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StakePoolKeyHashImplCopyWith<_$StakePoolKeyHashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$StakePoolKeyPathImplCopyWith<$Res>  {
  factory _$$StakePoolKeyPathImplCopyWith(_$StakePoolKeyPathImpl value, $Res Function(_$StakePoolKeyPathImpl) then) = __$$StakePoolKeyPathImplCopyWithImpl<$Res>;
@useResult
$Res call({
 LedgerSigningPath keyPath
});


$LedgerSigningPathCopyWith<$Res> get keyPath;
}

/// @nodoc
class __$$StakePoolKeyPathImplCopyWithImpl<$Res> extends _$ParsedVoterCopyWithImpl<$Res, _$StakePoolKeyPathImpl> implements _$$StakePoolKeyPathImplCopyWith<$Res> {
  __$$StakePoolKeyPathImplCopyWithImpl(_$StakePoolKeyPathImpl _value, $Res Function(_$StakePoolKeyPathImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyPath = null,}) {
  return _then(_$StakePoolKeyPathImpl(
keyPath: null == keyPath ? _value.keyPath : keyPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get keyPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.keyPath, (value) {
    return _then(_value.copyWith(keyPath: value) );
  });
}
}

/// @nodoc


class _$StakePoolKeyPathImpl extends StakePoolKeyPath  {
   _$StakePoolKeyPathImpl({required this.keyPath}): super._();

  

@override final  LedgerSigningPath keyPath;

@override
String toString() {
  return 'ParsedVoter.stakePoolKeyPath(keyPath: $keyPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$StakePoolKeyPathImpl&&(identical(other.keyPath, keyPath) || other.keyPath == keyPath));
}


@override
int get hashCode => Object.hash(runtimeType,keyPath);

/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$StakePoolKeyPathImplCopyWith<_$StakePoolKeyPathImpl> get copyWith => __$$StakePoolKeyPathImplCopyWithImpl<_$StakePoolKeyPathImpl>(this, _$identity);








}


abstract class StakePoolKeyPath extends ParsedVoter {
   factory StakePoolKeyPath({required final  LedgerSigningPath keyPath}) = _$StakePoolKeyPathImpl;
   StakePoolKeyPath._(): super._();

  

 LedgerSigningPath get keyPath;
/// Create a copy of ParsedVoter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$StakePoolKeyPathImplCopyWith<_$StakePoolKeyPathImpl> get copyWith => throw _privateConstructorUsedError;

}
