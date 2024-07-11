// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_cip36_vote_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignedCIP36VoteData {

 String get dataHashHex => throw _privateConstructorUsedError; LedgerSigningPath get witnessPath => throw _privateConstructorUsedError; String get witnessSignatureHex => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$SignedCIP36VoteDataCopyWith<SignedCIP36VoteData> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SignedCIP36VoteDataCopyWith<$Res>  {
  factory $SignedCIP36VoteDataCopyWith(SignedCIP36VoteData value, $Res Function(SignedCIP36VoteData) then) = _$SignedCIP36VoteDataCopyWithImpl<$Res, SignedCIP36VoteData>;
@useResult
$Res call({
 String dataHashHex, LedgerSigningPath witnessPath, String witnessSignatureHex
});


$LedgerSigningPathCopyWith<$Res> get witnessPath;
}

/// @nodoc
class _$SignedCIP36VoteDataCopyWithImpl<$Res,$Val extends SignedCIP36VoteData> implements $SignedCIP36VoteDataCopyWith<$Res> {
  _$SignedCIP36VoteDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? dataHashHex = null,Object? witnessPath = null,Object? witnessSignatureHex = null,}) {
  return _then(_value.copyWith(
dataHashHex: null == dataHashHex ? _value.dataHashHex : dataHashHex // ignore: cast_nullable_to_non_nullable
as String,witnessPath: null == witnessPath ? _value.witnessPath : witnessPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,witnessSignatureHex: null == witnessSignatureHex ? _value.witnessSignatureHex : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get witnessPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.witnessPath, (value) {
    return _then(_value.copyWith(witnessPath: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$SignedCIP36VoteDataImplCopyWith<$Res> implements $SignedCIP36VoteDataCopyWith<$Res> {
  factory _$$SignedCIP36VoteDataImplCopyWith(_$SignedCIP36VoteDataImpl value, $Res Function(_$SignedCIP36VoteDataImpl) then) = __$$SignedCIP36VoteDataImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String dataHashHex, LedgerSigningPath witnessPath, String witnessSignatureHex
});


@override $LedgerSigningPathCopyWith<$Res> get witnessPath;
}

/// @nodoc
class __$$SignedCIP36VoteDataImplCopyWithImpl<$Res> extends _$SignedCIP36VoteDataCopyWithImpl<$Res, _$SignedCIP36VoteDataImpl> implements _$$SignedCIP36VoteDataImplCopyWith<$Res> {
  __$$SignedCIP36VoteDataImplCopyWithImpl(_$SignedCIP36VoteDataImpl _value, $Res Function(_$SignedCIP36VoteDataImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? dataHashHex = null,Object? witnessPath = null,Object? witnessSignatureHex = null,}) {
  return _then(_$SignedCIP36VoteDataImpl(
dataHashHex: null == dataHashHex ? _value.dataHashHex : dataHashHex // ignore: cast_nullable_to_non_nullable
as String,witnessPath: null == witnessPath ? _value.witnessPath : witnessPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,witnessSignatureHex: null == witnessSignatureHex ? _value.witnessSignatureHex : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$SignedCIP36VoteDataImpl extends _SignedCIP36VoteData  {
   _$SignedCIP36VoteDataImpl({required this.dataHashHex, required this.witnessPath, required this.witnessSignatureHex}): super._();

  

@override final  String dataHashHex;
@override final  LedgerSigningPath witnessPath;
@override final  String witnessSignatureHex;

@override
String toString() {
  return 'SignedCIP36VoteData(dataHashHex: $dataHashHex, witnessPath: $witnessPath, witnessSignatureHex: $witnessSignatureHex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SignedCIP36VoteDataImpl&&(identical(other.dataHashHex, dataHashHex) || other.dataHashHex == dataHashHex)&&(identical(other.witnessPath, witnessPath) || other.witnessPath == witnessPath)&&(identical(other.witnessSignatureHex, witnessSignatureHex) || other.witnessSignatureHex == witnessSignatureHex));
}


@override
int get hashCode => Object.hash(runtimeType,dataHashHex,witnessPath,witnessSignatureHex);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$SignedCIP36VoteDataImplCopyWith<_$SignedCIP36VoteDataImpl> get copyWith => __$$SignedCIP36VoteDataImplCopyWithImpl<_$SignedCIP36VoteDataImpl>(this, _$identity);








}


abstract class _SignedCIP36VoteData extends SignedCIP36VoteData {
   factory _SignedCIP36VoteData({required final  String dataHashHex, required final  LedgerSigningPath witnessPath, required final  String witnessSignatureHex}) = _$SignedCIP36VoteDataImpl;
   _SignedCIP36VoteData._(): super._();

  

@override  String get dataHashHex;@override  LedgerSigningPath get witnessPath;@override  String get witnessSignatureHex;
@override @JsonKey(ignore: true)
_$$SignedCIP36VoteDataImplCopyWith<_$SignedCIP36VoteDataImpl> get copyWith => throw _privateConstructorUsedError;

}
