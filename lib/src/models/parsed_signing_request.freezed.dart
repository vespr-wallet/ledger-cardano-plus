// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_signing_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedSigningRequest {

 ParsedTransaction get tx => throw _privateConstructorUsedError; TransactionSigningModes get signingMode => throw _privateConstructorUsedError; List<LedgerSigningPath> get additionalWitnessPaths => throw _privateConstructorUsedError; ParsedTransactionOptions? get options => throw _privateConstructorUsedError;







/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedSigningRequestCopyWith<ParsedSigningRequest> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedSigningRequestCopyWith<$Res>  {
  factory $ParsedSigningRequestCopyWith(ParsedSigningRequest value, $Res Function(ParsedSigningRequest) then) = _$ParsedSigningRequestCopyWithImpl<$Res, ParsedSigningRequest>;
@useResult
$Res call({
 ParsedTransaction tx, TransactionSigningModes signingMode, List<LedgerSigningPath> additionalWitnessPaths, ParsedTransactionOptions? options
});


$ParsedTransactionCopyWith<$Res> get tx;$ParsedTransactionOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class _$ParsedSigningRequestCopyWithImpl<$Res,$Val extends ParsedSigningRequest> implements $ParsedSigningRequestCopyWith<$Res> {
  _$ParsedSigningRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tx = null,Object? signingMode = null,Object? additionalWitnessPaths = null,Object? options = freezed,}) {
  return _then(_value.copyWith(
tx: null == tx ? _value.tx : tx // ignore: cast_nullable_to_non_nullable
as ParsedTransaction,signingMode: null == signingMode ? _value.signingMode : signingMode // ignore: cast_nullable_to_non_nullable
as TransactionSigningModes,additionalWitnessPaths: null == additionalWitnessPaths ? _value.additionalWitnessPaths : additionalWitnessPaths // ignore: cast_nullable_to_non_nullable
as List<LedgerSigningPath>,options: freezed == options ? _value.options : options // ignore: cast_nullable_to_non_nullable
as ParsedTransactionOptions?,
  )as $Val);
}
/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedTransactionCopyWith<$Res> get tx {
  
  return $ParsedTransactionCopyWith<$Res>(_value.tx, (value) {
    return _then(_value.copyWith(tx: value) as $Val);
  });
}/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedTransactionOptionsCopyWith<$Res>? get options {
    if (_value.options == null) {
    return null;
  }

  return $ParsedTransactionOptionsCopyWith<$Res>(_value.options!, (value) {
    return _then(_value.copyWith(options: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ParsedSigningRequestImplCopyWith<$Res> implements $ParsedSigningRequestCopyWith<$Res> {
  factory _$$ParsedSigningRequestImplCopyWith(_$ParsedSigningRequestImpl value, $Res Function(_$ParsedSigningRequestImpl) then) = __$$ParsedSigningRequestImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 ParsedTransaction tx, TransactionSigningModes signingMode, List<LedgerSigningPath> additionalWitnessPaths, ParsedTransactionOptions? options
});


@override $ParsedTransactionCopyWith<$Res> get tx;@override $ParsedTransactionOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class __$$ParsedSigningRequestImplCopyWithImpl<$Res> extends _$ParsedSigningRequestCopyWithImpl<$Res, _$ParsedSigningRequestImpl> implements _$$ParsedSigningRequestImplCopyWith<$Res> {
  __$$ParsedSigningRequestImplCopyWithImpl(_$ParsedSigningRequestImpl _value, $Res Function(_$ParsedSigningRequestImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tx = null,Object? signingMode = null,Object? additionalWitnessPaths = null,Object? options = freezed,}) {
  return _then(_$ParsedSigningRequestImpl(
tx: null == tx ? _value.tx : tx // ignore: cast_nullable_to_non_nullable
as ParsedTransaction,signingMode: null == signingMode ? _value.signingMode : signingMode // ignore: cast_nullable_to_non_nullable
as TransactionSigningModes,additionalWitnessPaths: null == additionalWitnessPaths ? _value._additionalWitnessPaths : additionalWitnessPaths // ignore: cast_nullable_to_non_nullable
as List<LedgerSigningPath>,options: freezed == options ? _value.options : options // ignore: cast_nullable_to_non_nullable
as ParsedTransactionOptions?,
  ));
}


}

/// @nodoc


class _$ParsedSigningRequestImpl extends _ParsedSigningRequest  {
   _$ParsedSigningRequestImpl({required this.tx, required this.signingMode, required final  List<LedgerSigningPath> additionalWitnessPaths, this.options}): _additionalWitnessPaths = additionalWitnessPaths,super._();

  

@override final  ParsedTransaction tx;
@override final  TransactionSigningModes signingMode;
 final  List<LedgerSigningPath> _additionalWitnessPaths;
@override List<LedgerSigningPath> get additionalWitnessPaths {
  if (_additionalWitnessPaths is EqualUnmodifiableListView) return _additionalWitnessPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_additionalWitnessPaths);
}

@override final  ParsedTransactionOptions? options;

@override
String toString() {
  return 'ParsedSigningRequest(tx: $tx, signingMode: $signingMode, additionalWitnessPaths: $additionalWitnessPaths, options: $options)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedSigningRequestImpl&&(identical(other.tx, tx) || other.tx == tx)&&(identical(other.signingMode, signingMode) || other.signingMode == signingMode)&&const DeepCollectionEquality().equals(other._additionalWitnessPaths, _additionalWitnessPaths)&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,tx,signingMode,const DeepCollectionEquality().hash(_additionalWitnessPaths),options);

/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedSigningRequestImplCopyWith<_$ParsedSigningRequestImpl> get copyWith => __$$ParsedSigningRequestImplCopyWithImpl<_$ParsedSigningRequestImpl>(this, _$identity);








}


abstract class _ParsedSigningRequest extends ParsedSigningRequest {
   factory _ParsedSigningRequest({required final  ParsedTransaction tx, required final  TransactionSigningModes signingMode, required final  List<LedgerSigningPath> additionalWitnessPaths, final  ParsedTransactionOptions? options}) = _$ParsedSigningRequestImpl;
   _ParsedSigningRequest._(): super._();

  

@override ParsedTransaction get tx;@override TransactionSigningModes get signingMode;@override List<LedgerSigningPath> get additionalWitnessPaths;@override ParsedTransactionOptions? get options;
/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedSigningRequestImplCopyWith<_$ParsedSigningRequestImpl> get copyWith => throw _privateConstructorUsedError;

}
