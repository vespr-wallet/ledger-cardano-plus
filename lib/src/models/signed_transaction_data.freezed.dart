// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_transaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignedTransactionData {

 String get txHashHex => throw _privateConstructorUsedError; List<Witness> get witnesses => throw _privateConstructorUsedError; TxAuxiliaryDataSupplement? get auxiliaryDataSupplement => throw _privateConstructorUsedError;







/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$SignedTransactionDataCopyWith<SignedTransactionData> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SignedTransactionDataCopyWith<$Res>  {
  factory $SignedTransactionDataCopyWith(SignedTransactionData value, $Res Function(SignedTransactionData) then) = _$SignedTransactionDataCopyWithImpl<$Res, SignedTransactionData>;
@useResult
$Res call({
 String txHashHex, List<Witness> witnesses, TxAuxiliaryDataSupplement? auxiliaryDataSupplement
});


$TxAuxiliaryDataSupplementCopyWith<$Res>? get auxiliaryDataSupplement;
}

/// @nodoc
class _$SignedTransactionDataCopyWithImpl<$Res,$Val extends SignedTransactionData> implements $SignedTransactionDataCopyWith<$Res> {
  _$SignedTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txHashHex = null,Object? witnesses = null,Object? auxiliaryDataSupplement = freezed,}) {
  return _then(_value.copyWith(
txHashHex: null == txHashHex ? _value.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,witnesses: null == witnesses ? _value.witnesses : witnesses // ignore: cast_nullable_to_non_nullable
as List<Witness>,auxiliaryDataSupplement: freezed == auxiliaryDataSupplement ? _value.auxiliaryDataSupplement : auxiliaryDataSupplement // ignore: cast_nullable_to_non_nullable
as TxAuxiliaryDataSupplement?,
  )as $Val);
}
/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TxAuxiliaryDataSupplementCopyWith<$Res>? get auxiliaryDataSupplement {
    if (_value.auxiliaryDataSupplement == null) {
    return null;
  }

  return $TxAuxiliaryDataSupplementCopyWith<$Res>(_value.auxiliaryDataSupplement!, (value) {
    return _then(_value.copyWith(auxiliaryDataSupplement: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$SignedTransactionDataImplCopyWith<$Res> implements $SignedTransactionDataCopyWith<$Res> {
  factory _$$SignedTransactionDataImplCopyWith(_$SignedTransactionDataImpl value, $Res Function(_$SignedTransactionDataImpl) then) = __$$SignedTransactionDataImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String txHashHex, List<Witness> witnesses, TxAuxiliaryDataSupplement? auxiliaryDataSupplement
});


@override $TxAuxiliaryDataSupplementCopyWith<$Res>? get auxiliaryDataSupplement;
}

/// @nodoc
class __$$SignedTransactionDataImplCopyWithImpl<$Res> extends _$SignedTransactionDataCopyWithImpl<$Res, _$SignedTransactionDataImpl> implements _$$SignedTransactionDataImplCopyWith<$Res> {
  __$$SignedTransactionDataImplCopyWithImpl(_$SignedTransactionDataImpl _value, $Res Function(_$SignedTransactionDataImpl) _then)
      : super(_value, _then);


/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txHashHex = null,Object? witnesses = null,Object? auxiliaryDataSupplement = freezed,}) {
  return _then(_$SignedTransactionDataImpl(
txHashHex: null == txHashHex ? _value.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,witnesses: null == witnesses ? _value._witnesses : witnesses // ignore: cast_nullable_to_non_nullable
as List<Witness>,auxiliaryDataSupplement: freezed == auxiliaryDataSupplement ? _value.auxiliaryDataSupplement : auxiliaryDataSupplement // ignore: cast_nullable_to_non_nullable
as TxAuxiliaryDataSupplement?,
  ));
}


}

/// @nodoc


class _$SignedTransactionDataImpl extends _SignedTransactionData  {
   _$SignedTransactionDataImpl({required this.txHashHex, required final  List<Witness> witnesses, this.auxiliaryDataSupplement}): _witnesses = witnesses,super._();

  

@override final  String txHashHex;
 final  List<Witness> _witnesses;
@override List<Witness> get witnesses {
  if (_witnesses is EqualUnmodifiableListView) return _witnesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_witnesses);
}

@override final  TxAuxiliaryDataSupplement? auxiliaryDataSupplement;

@override
String toString() {
  return 'SignedTransactionData(txHashHex: $txHashHex, witnesses: $witnesses, auxiliaryDataSupplement: $auxiliaryDataSupplement)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SignedTransactionDataImpl&&(identical(other.txHashHex, txHashHex) || other.txHashHex == txHashHex)&&const DeepCollectionEquality().equals(other._witnesses, _witnesses)&&(identical(other.auxiliaryDataSupplement, auxiliaryDataSupplement) || other.auxiliaryDataSupplement == auxiliaryDataSupplement));
}


@override
int get hashCode => Object.hash(runtimeType,txHashHex,const DeepCollectionEquality().hash(_witnesses),auxiliaryDataSupplement);

/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$SignedTransactionDataImplCopyWith<_$SignedTransactionDataImpl> get copyWith => __$$SignedTransactionDataImplCopyWithImpl<_$SignedTransactionDataImpl>(this, _$identity);








}


abstract class _SignedTransactionData extends SignedTransactionData {
   factory _SignedTransactionData({required final  String txHashHex, required final  List<Witness> witnesses, final  TxAuxiliaryDataSupplement? auxiliaryDataSupplement}) = _$SignedTransactionDataImpl;
   _SignedTransactionData._(): super._();

  

@override String get txHashHex;@override List<Witness> get witnesses;@override TxAuxiliaryDataSupplement? get auxiliaryDataSupplement;
/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$SignedTransactionDataImplCopyWith<_$SignedTransactionDataImpl> get copyWith => throw _privateConstructorUsedError;

}
