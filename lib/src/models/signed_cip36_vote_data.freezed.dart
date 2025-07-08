// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_cip36_vote_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignedCIP36VoteData {

 String get dataHashHex; LedgerSigningPath get witnessPath; String get witnessSignatureHex;
/// Create a copy of SignedCIP36VoteData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignedCIP36VoteDataCopyWith<SignedCIP36VoteData> get copyWith => _$SignedCIP36VoteDataCopyWithImpl<SignedCIP36VoteData>(this as SignedCIP36VoteData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignedCIP36VoteData&&(identical(other.dataHashHex, dataHashHex) || other.dataHashHex == dataHashHex)&&(identical(other.witnessPath, witnessPath) || other.witnessPath == witnessPath)&&(identical(other.witnessSignatureHex, witnessSignatureHex) || other.witnessSignatureHex == witnessSignatureHex));
}


@override
int get hashCode => Object.hash(runtimeType,dataHashHex,witnessPath,witnessSignatureHex);

@override
String toString() {
  return 'SignedCIP36VoteData(dataHashHex: $dataHashHex, witnessPath: $witnessPath, witnessSignatureHex: $witnessSignatureHex)';
}


}

/// @nodoc
abstract mixin class $SignedCIP36VoteDataCopyWith<$Res>  {
  factory $SignedCIP36VoteDataCopyWith(SignedCIP36VoteData value, $Res Function(SignedCIP36VoteData) _then) = _$SignedCIP36VoteDataCopyWithImpl;
@useResult
$Res call({
 String dataHashHex, LedgerSigningPath witnessPath, String witnessSignatureHex
});


$LedgerSigningPathCopyWith<$Res> get witnessPath;

}
/// @nodoc
class _$SignedCIP36VoteDataCopyWithImpl<$Res>
    implements $SignedCIP36VoteDataCopyWith<$Res> {
  _$SignedCIP36VoteDataCopyWithImpl(this._self, this._then);

  final SignedCIP36VoteData _self;
  final $Res Function(SignedCIP36VoteData) _then;

/// Create a copy of SignedCIP36VoteData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataHashHex = null,Object? witnessPath = null,Object? witnessSignatureHex = null,}) {
  return _then(_self.copyWith(
dataHashHex: null == dataHashHex ? _self.dataHashHex : dataHashHex // ignore: cast_nullable_to_non_nullable
as String,witnessPath: null == witnessPath ? _self.witnessPath : witnessPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,witnessSignatureHex: null == witnessSignatureHex ? _self.witnessSignatureHex : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of SignedCIP36VoteData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get witnessPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.witnessPath, (value) {
    return _then(_self.copyWith(witnessPath: value));
  });
}
}



/// @nodoc


class _SignedCIP36VoteData extends SignedCIP36VoteData {
   _SignedCIP36VoteData({required this.dataHashHex, required this.witnessPath, required this.witnessSignatureHex}): super._();
  

@override final  String dataHashHex;
@override final  LedgerSigningPath witnessPath;
@override final  String witnessSignatureHex;

/// Create a copy of SignedCIP36VoteData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignedCIP36VoteDataCopyWith<_SignedCIP36VoteData> get copyWith => __$SignedCIP36VoteDataCopyWithImpl<_SignedCIP36VoteData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignedCIP36VoteData&&(identical(other.dataHashHex, dataHashHex) || other.dataHashHex == dataHashHex)&&(identical(other.witnessPath, witnessPath) || other.witnessPath == witnessPath)&&(identical(other.witnessSignatureHex, witnessSignatureHex) || other.witnessSignatureHex == witnessSignatureHex));
}


@override
int get hashCode => Object.hash(runtimeType,dataHashHex,witnessPath,witnessSignatureHex);

@override
String toString() {
  return 'SignedCIP36VoteData(dataHashHex: $dataHashHex, witnessPath: $witnessPath, witnessSignatureHex: $witnessSignatureHex)';
}


}

/// @nodoc
abstract mixin class _$SignedCIP36VoteDataCopyWith<$Res> implements $SignedCIP36VoteDataCopyWith<$Res> {
  factory _$SignedCIP36VoteDataCopyWith(_SignedCIP36VoteData value, $Res Function(_SignedCIP36VoteData) _then) = __$SignedCIP36VoteDataCopyWithImpl;
@override @useResult
$Res call({
 String dataHashHex, LedgerSigningPath witnessPath, String witnessSignatureHex
});


@override $LedgerSigningPathCopyWith<$Res> get witnessPath;

}
/// @nodoc
class __$SignedCIP36VoteDataCopyWithImpl<$Res>
    implements _$SignedCIP36VoteDataCopyWith<$Res> {
  __$SignedCIP36VoteDataCopyWithImpl(this._self, this._then);

  final _SignedCIP36VoteData _self;
  final $Res Function(_SignedCIP36VoteData) _then;

/// Create a copy of SignedCIP36VoteData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataHashHex = null,Object? witnessPath = null,Object? witnessSignatureHex = null,}) {
  return _then(_SignedCIP36VoteData(
dataHashHex: null == dataHashHex ? _self.dataHashHex : dataHashHex // ignore: cast_nullable_to_non_nullable
as String,witnessPath: null == witnessPath ? _self.witnessPath : witnessPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,witnessSignatureHex: null == witnessSignatureHex ? _self.witnessSignatureHex : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SignedCIP36VoteData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get witnessPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.witnessPath, (value) {
    return _then(_self.copyWith(witnessPath: value));
  });
}
}

// dart format on
