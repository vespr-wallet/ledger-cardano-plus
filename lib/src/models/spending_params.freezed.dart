// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spending_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpendingParams {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendingParams);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpendingParams()';
}


}

/// @nodoc
class $SpendingParamsCopyWith<$Res>  {
$SpendingParamsCopyWith(SpendingParams _, $Res Function(SpendingParams) __);
}


/// @nodoc


class SpendingParamsPath extends SpendingParams {
   SpendingParamsPath({required this.spendingPath}): super._();
  

 final  LedgerSigningPath spendingPath;

/// Create a copy of SpendingParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendingParamsPathCopyWith<SpendingParamsPath> get copyWith => _$SpendingParamsPathCopyWithImpl<SpendingParamsPath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendingParamsPath&&(identical(other.spendingPath, spendingPath) || other.spendingPath == spendingPath));
}


@override
int get hashCode => Object.hash(runtimeType,spendingPath);

@override
String toString() {
  return 'SpendingParams.path(spendingPath: $spendingPath)';
}


}

/// @nodoc
abstract mixin class $SpendingParamsPathCopyWith<$Res> implements $SpendingParamsCopyWith<$Res> {
  factory $SpendingParamsPathCopyWith(SpendingParamsPath value, $Res Function(SpendingParamsPath) _then) = _$SpendingParamsPathCopyWithImpl;
@useResult
$Res call({
 LedgerSigningPath spendingPath
});


$LedgerSigningPathCopyWith<$Res> get spendingPath;

}
/// @nodoc
class _$SpendingParamsPathCopyWithImpl<$Res>
    implements $SpendingParamsPathCopyWith<$Res> {
  _$SpendingParamsPathCopyWithImpl(this._self, this._then);

  final SpendingParamsPath _self;
  final $Res Function(SpendingParamsPath) _then;

/// Create a copy of SpendingParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingPath = null,}) {
  return _then(SpendingParamsPath(
spendingPath: null == spendingPath ? _self.spendingPath : spendingPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}

/// Create a copy of SpendingParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get spendingPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.spendingPath, (value) {
    return _then(_self.copyWith(spendingPath: value));
  });
}
}

/// @nodoc


class SpendingParamsScriptHash extends SpendingParams {
   SpendingParamsScriptHash({required this.spendingScriptHashHex}): super._();
  

 final  String spendingScriptHashHex;

/// Create a copy of SpendingParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendingParamsScriptHashCopyWith<SpendingParamsScriptHash> get copyWith => _$SpendingParamsScriptHashCopyWithImpl<SpendingParamsScriptHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendingParamsScriptHash&&(identical(other.spendingScriptHashHex, spendingScriptHashHex) || other.spendingScriptHashHex == spendingScriptHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,spendingScriptHashHex);

@override
String toString() {
  return 'SpendingParams.scriptHash(spendingScriptHashHex: $spendingScriptHashHex)';
}


}

/// @nodoc
abstract mixin class $SpendingParamsScriptHashCopyWith<$Res> implements $SpendingParamsCopyWith<$Res> {
  factory $SpendingParamsScriptHashCopyWith(SpendingParamsScriptHash value, $Res Function(SpendingParamsScriptHash) _then) = _$SpendingParamsScriptHashCopyWithImpl;
@useResult
$Res call({
 String spendingScriptHashHex
});




}
/// @nodoc
class _$SpendingParamsScriptHashCopyWithImpl<$Res>
    implements $SpendingParamsScriptHashCopyWith<$Res> {
  _$SpendingParamsScriptHashCopyWithImpl(this._self, this._then);

  final SpendingParamsScriptHash _self;
  final $Res Function(SpendingParamsScriptHash) _then;

/// Create a copy of SpendingParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spendingScriptHashHex = null,}) {
  return _then(SpendingParamsScriptHash(
spendingScriptHashHex: null == spendingScriptHashHex ? _self.spendingScriptHashHex : spendingScriptHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
