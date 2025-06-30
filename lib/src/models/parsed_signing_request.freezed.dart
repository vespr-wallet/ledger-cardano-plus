// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_signing_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedSigningRequest {

 ParsedTransaction get tx; TransactionSigningModes get signingMode; List<LedgerSigningPath> get additionalWitnessPaths; ParsedTransactionOptions? get options;
/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedSigningRequestCopyWith<ParsedSigningRequest> get copyWith => _$ParsedSigningRequestCopyWithImpl<ParsedSigningRequest>(this as ParsedSigningRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedSigningRequest&&(identical(other.tx, tx) || other.tx == tx)&&(identical(other.signingMode, signingMode) || other.signingMode == signingMode)&&const DeepCollectionEquality().equals(other.additionalWitnessPaths, additionalWitnessPaths)&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,tx,signingMode,const DeepCollectionEquality().hash(additionalWitnessPaths),options);

@override
String toString() {
  return 'ParsedSigningRequest(tx: $tx, signingMode: $signingMode, additionalWitnessPaths: $additionalWitnessPaths, options: $options)';
}


}

/// @nodoc
abstract mixin class $ParsedSigningRequestCopyWith<$Res>  {
  factory $ParsedSigningRequestCopyWith(ParsedSigningRequest value, $Res Function(ParsedSigningRequest) _then) = _$ParsedSigningRequestCopyWithImpl;
@useResult
$Res call({
 ParsedTransaction tx, TransactionSigningModes signingMode, List<LedgerSigningPath> additionalWitnessPaths, ParsedTransactionOptions? options
});


$ParsedTransactionCopyWith<$Res> get tx;$ParsedTransactionOptionsCopyWith<$Res>? get options;

}
/// @nodoc
class _$ParsedSigningRequestCopyWithImpl<$Res>
    implements $ParsedSigningRequestCopyWith<$Res> {
  _$ParsedSigningRequestCopyWithImpl(this._self, this._then);

  final ParsedSigningRequest _self;
  final $Res Function(ParsedSigningRequest) _then;

/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tx = null,Object? signingMode = null,Object? additionalWitnessPaths = null,Object? options = freezed,}) {
  return _then(_self.copyWith(
tx: null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as ParsedTransaction,signingMode: null == signingMode ? _self.signingMode : signingMode // ignore: cast_nullable_to_non_nullable
as TransactionSigningModes,additionalWitnessPaths: null == additionalWitnessPaths ? _self.additionalWitnessPaths : additionalWitnessPaths // ignore: cast_nullable_to_non_nullable
as List<LedgerSigningPath>,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as ParsedTransactionOptions?,
  ));
}
/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedTransactionCopyWith<$Res> get tx {
  
  return $ParsedTransactionCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedTransactionOptionsCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $ParsedTransactionOptionsCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}


/// @nodoc


class _ParsedSigningRequest extends ParsedSigningRequest {
   _ParsedSigningRequest({required this.tx, required this.signingMode, required final  List<LedgerSigningPath> additionalWitnessPaths, this.options}): _additionalWitnessPaths = additionalWitnessPaths,super._();
  

@override final  ParsedTransaction tx;
@override final  TransactionSigningModes signingMode;
 final  List<LedgerSigningPath> _additionalWitnessPaths;
@override List<LedgerSigningPath> get additionalWitnessPaths {
  if (_additionalWitnessPaths is EqualUnmodifiableListView) return _additionalWitnessPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_additionalWitnessPaths);
}

@override final  ParsedTransactionOptions? options;

/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedSigningRequestCopyWith<_ParsedSigningRequest> get copyWith => __$ParsedSigningRequestCopyWithImpl<_ParsedSigningRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedSigningRequest&&(identical(other.tx, tx) || other.tx == tx)&&(identical(other.signingMode, signingMode) || other.signingMode == signingMode)&&const DeepCollectionEquality().equals(other._additionalWitnessPaths, _additionalWitnessPaths)&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,tx,signingMode,const DeepCollectionEquality().hash(_additionalWitnessPaths),options);

@override
String toString() {
  return 'ParsedSigningRequest(tx: $tx, signingMode: $signingMode, additionalWitnessPaths: $additionalWitnessPaths, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ParsedSigningRequestCopyWith<$Res> implements $ParsedSigningRequestCopyWith<$Res> {
  factory _$ParsedSigningRequestCopyWith(_ParsedSigningRequest value, $Res Function(_ParsedSigningRequest) _then) = __$ParsedSigningRequestCopyWithImpl;
@override @useResult
$Res call({
 ParsedTransaction tx, TransactionSigningModes signingMode, List<LedgerSigningPath> additionalWitnessPaths, ParsedTransactionOptions? options
});


@override $ParsedTransactionCopyWith<$Res> get tx;@override $ParsedTransactionOptionsCopyWith<$Res>? get options;

}
/// @nodoc
class __$ParsedSigningRequestCopyWithImpl<$Res>
    implements _$ParsedSigningRequestCopyWith<$Res> {
  __$ParsedSigningRequestCopyWithImpl(this._self, this._then);

  final _ParsedSigningRequest _self;
  final $Res Function(_ParsedSigningRequest) _then;

/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tx = null,Object? signingMode = null,Object? additionalWitnessPaths = null,Object? options = freezed,}) {
  return _then(_ParsedSigningRequest(
tx: null == tx ? _self.tx : tx // ignore: cast_nullable_to_non_nullable
as ParsedTransaction,signingMode: null == signingMode ? _self.signingMode : signingMode // ignore: cast_nullable_to_non_nullable
as TransactionSigningModes,additionalWitnessPaths: null == additionalWitnessPaths ? _self._additionalWitnessPaths : additionalWitnessPaths // ignore: cast_nullable_to_non_nullable
as List<LedgerSigningPath>,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as ParsedTransactionOptions?,
  ));
}

/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedTransactionCopyWith<$Res> get tx {
  
  return $ParsedTransactionCopyWith<$Res>(_self.tx, (value) {
    return _then(_self.copyWith(tx: value));
  });
}/// Create a copy of ParsedSigningRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedTransactionOptionsCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $ParsedTransactionOptionsCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}

// dart format on
