// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressParamsBase {

 SpendingParams get spendingParams => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$AddressParamsBaseCopyWith<AddressParamsBase> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $AddressParamsBaseCopyWith<$Res>  {
  factory $AddressParamsBaseCopyWith(AddressParamsBase value, $Res Function(AddressParamsBase) then) = _$AddressParamsBaseCopyWithImpl<$Res, AddressParamsBase>;
@useResult
$Res call({
 SpendingParams spendingParams
});


$SpendingParamsCopyWith<$Res> get spendingParams;
}

/// @nodoc
class _$AddressParamsBaseCopyWithImpl<$Res,$Val extends AddressParamsBase> implements $AddressParamsBaseCopyWith<$Res> {
  _$AddressParamsBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? spendingParams = null,}) {
  return _then(_value.copyWith(
spendingParams: null == spendingParams ? _value.spendingParams : spendingParams // ignore: cast_nullable_to_non_nullable
as SpendingParams,
  )as $Val);
}
@override
@pragma('vm:prefer-inline')
$SpendingParamsCopyWith<$Res> get spendingParams {
  
  return $SpendingParamsCopyWith<$Res>(_value.spendingParams, (value) {
    return _then(_value.copyWith(spendingParams: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$AddressParamsBaseStakingPathImplCopyWith<$Res> implements $AddressParamsBaseCopyWith<$Res> {
  factory _$$AddressParamsBaseStakingPathImplCopyWith(_$AddressParamsBaseStakingPathImpl value, $Res Function(_$AddressParamsBaseStakingPathImpl) then) = __$$AddressParamsBaseStakingPathImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 SpendingParams spendingParams, LedgerSigningPath stakingPath
});


@override $SpendingParamsCopyWith<$Res> get spendingParams;$LedgerSigningPathCopyWith<$Res> get stakingPath;
}

/// @nodoc
class __$$AddressParamsBaseStakingPathImplCopyWithImpl<$Res> extends _$AddressParamsBaseCopyWithImpl<$Res, _$AddressParamsBaseStakingPathImpl> implements _$$AddressParamsBaseStakingPathImplCopyWith<$Res> {
  __$$AddressParamsBaseStakingPathImplCopyWithImpl(_$AddressParamsBaseStakingPathImpl _value, $Res Function(_$AddressParamsBaseStakingPathImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? spendingParams = null,Object? stakingPath = null,}) {
  return _then(_$AddressParamsBaseStakingPathImpl(
spendingParams: null == spendingParams ? _value.spendingParams : spendingParams // ignore: cast_nullable_to_non_nullable
as SpendingParams,stakingPath: null == stakingPath ? _value.stakingPath : stakingPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get stakingPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.stakingPath, (value) {
    return _then(_value.copyWith(stakingPath: value) );
  });
}
}

/// @nodoc


class _$AddressParamsBaseStakingPathImpl extends AddressParamsBaseStakingPath  {
   _$AddressParamsBaseStakingPathImpl({required this.spendingParams, required this.stakingPath}): super._();

  

@override final  SpendingParams spendingParams;
@override final  LedgerSigningPath stakingPath;

@override
String toString() {
  return 'AddressParamsBase.stakingPath(spendingParams: $spendingParams, stakingPath: $stakingPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddressParamsBaseStakingPathImpl&&(identical(other.spendingParams, spendingParams) || other.spendingParams == spendingParams)&&(identical(other.stakingPath, stakingPath) || other.stakingPath == stakingPath));
}


@override
int get hashCode => Object.hash(runtimeType,spendingParams,stakingPath);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$AddressParamsBaseStakingPathImplCopyWith<_$AddressParamsBaseStakingPathImpl> get copyWith => __$$AddressParamsBaseStakingPathImplCopyWithImpl<_$AddressParamsBaseStakingPathImpl>(this, _$identity);








}


abstract class AddressParamsBaseStakingPath extends AddressParamsBase {
   factory AddressParamsBaseStakingPath({required final  SpendingParams spendingParams, required final  LedgerSigningPath stakingPath}) = _$AddressParamsBaseStakingPathImpl;
   AddressParamsBaseStakingPath._(): super._();

  

@override  SpendingParams get spendingParams; LedgerSigningPath get stakingPath;
@override @JsonKey(ignore: true)
_$$AddressParamsBaseStakingPathImplCopyWith<_$AddressParamsBaseStakingPathImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$AddressParamsBaseStakingKeyHashImplCopyWith<$Res> implements $AddressParamsBaseCopyWith<$Res> {
  factory _$$AddressParamsBaseStakingKeyHashImplCopyWith(_$AddressParamsBaseStakingKeyHashImpl value, $Res Function(_$AddressParamsBaseStakingKeyHashImpl) then) = __$$AddressParamsBaseStakingKeyHashImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 SpendingParams spendingParams, String stakingKeyHashHex
});


@override $SpendingParamsCopyWith<$Res> get spendingParams;
}

/// @nodoc
class __$$AddressParamsBaseStakingKeyHashImplCopyWithImpl<$Res> extends _$AddressParamsBaseCopyWithImpl<$Res, _$AddressParamsBaseStakingKeyHashImpl> implements _$$AddressParamsBaseStakingKeyHashImplCopyWith<$Res> {
  __$$AddressParamsBaseStakingKeyHashImplCopyWithImpl(_$AddressParamsBaseStakingKeyHashImpl _value, $Res Function(_$AddressParamsBaseStakingKeyHashImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? spendingParams = null,Object? stakingKeyHashHex = null,}) {
  return _then(_$AddressParamsBaseStakingKeyHashImpl(
spendingParams: null == spendingParams ? _value.spendingParams : spendingParams // ignore: cast_nullable_to_non_nullable
as SpendingParams,stakingKeyHashHex: null == stakingKeyHashHex ? _value.stakingKeyHashHex : stakingKeyHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$AddressParamsBaseStakingKeyHashImpl extends AddressParamsBaseStakingKeyHash  {
   _$AddressParamsBaseStakingKeyHashImpl({required this.spendingParams, required this.stakingKeyHashHex}): super._();

  

@override final  SpendingParams spendingParams;
@override final  String stakingKeyHashHex;

@override
String toString() {
  return 'AddressParamsBase.stakingKeyHash(spendingParams: $spendingParams, stakingKeyHashHex: $stakingKeyHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddressParamsBaseStakingKeyHashImpl&&(identical(other.spendingParams, spendingParams) || other.spendingParams == spendingParams)&&(identical(other.stakingKeyHashHex, stakingKeyHashHex) || other.stakingKeyHashHex == stakingKeyHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,spendingParams,stakingKeyHashHex);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$AddressParamsBaseStakingKeyHashImplCopyWith<_$AddressParamsBaseStakingKeyHashImpl> get copyWith => __$$AddressParamsBaseStakingKeyHashImplCopyWithImpl<_$AddressParamsBaseStakingKeyHashImpl>(this, _$identity);








}


abstract class AddressParamsBaseStakingKeyHash extends AddressParamsBase {
   factory AddressParamsBaseStakingKeyHash({required final  SpendingParams spendingParams, required final  String stakingKeyHashHex}) = _$AddressParamsBaseStakingKeyHashImpl;
   AddressParamsBaseStakingKeyHash._(): super._();

  

@override  SpendingParams get spendingParams; String get stakingKeyHashHex;
@override @JsonKey(ignore: true)
_$$AddressParamsBaseStakingKeyHashImplCopyWith<_$AddressParamsBaseStakingKeyHashImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$AddressParamsBaseStakingScriptHashImplCopyWith<$Res> implements $AddressParamsBaseCopyWith<$Res> {
  factory _$$AddressParamsBaseStakingScriptHashImplCopyWith(_$AddressParamsBaseStakingScriptHashImpl value, $Res Function(_$AddressParamsBaseStakingScriptHashImpl) then) = __$$AddressParamsBaseStakingScriptHashImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 SpendingParams spendingParams, String stakingScriptHashHex
});


@override $SpendingParamsCopyWith<$Res> get spendingParams;
}

/// @nodoc
class __$$AddressParamsBaseStakingScriptHashImplCopyWithImpl<$Res> extends _$AddressParamsBaseCopyWithImpl<$Res, _$AddressParamsBaseStakingScriptHashImpl> implements _$$AddressParamsBaseStakingScriptHashImplCopyWith<$Res> {
  __$$AddressParamsBaseStakingScriptHashImplCopyWithImpl(_$AddressParamsBaseStakingScriptHashImpl _value, $Res Function(_$AddressParamsBaseStakingScriptHashImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? spendingParams = null,Object? stakingScriptHashHex = null,}) {
  return _then(_$AddressParamsBaseStakingScriptHashImpl(
spendingParams: null == spendingParams ? _value.spendingParams : spendingParams // ignore: cast_nullable_to_non_nullable
as SpendingParams,stakingScriptHashHex: null == stakingScriptHashHex ? _value.stakingScriptHashHex : stakingScriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$AddressParamsBaseStakingScriptHashImpl extends AddressParamsBaseStakingScriptHash  {
   _$AddressParamsBaseStakingScriptHashImpl({required this.spendingParams, required this.stakingScriptHashHex}): super._();

  

@override final  SpendingParams spendingParams;
@override final  String stakingScriptHashHex;

@override
String toString() {
  return 'AddressParamsBase.stakingScriptHash(spendingParams: $spendingParams, stakingScriptHashHex: $stakingScriptHashHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$AddressParamsBaseStakingScriptHashImpl&&(identical(other.spendingParams, spendingParams) || other.spendingParams == spendingParams)&&(identical(other.stakingScriptHashHex, stakingScriptHashHex) || other.stakingScriptHashHex == stakingScriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,spendingParams,stakingScriptHashHex);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$AddressParamsBaseStakingScriptHashImplCopyWith<_$AddressParamsBaseStakingScriptHashImpl> get copyWith => __$$AddressParamsBaseStakingScriptHashImplCopyWithImpl<_$AddressParamsBaseStakingScriptHashImpl>(this, _$identity);








}


abstract class AddressParamsBaseStakingScriptHash extends AddressParamsBase {
   factory AddressParamsBaseStakingScriptHash({required final  SpendingParams spendingParams, required final  String stakingScriptHashHex}) = _$AddressParamsBaseStakingScriptHashImpl;
   AddressParamsBaseStakingScriptHash._(): super._();

  

@override  SpendingParams get spendingParams; String get stakingScriptHashHex;
@override @JsonKey(ignore: true)
_$$AddressParamsBaseStakingScriptHashImplCopyWith<_$AddressParamsBaseStakingScriptHashImpl> get copyWith => throw _privateConstructorUsedError;

}
