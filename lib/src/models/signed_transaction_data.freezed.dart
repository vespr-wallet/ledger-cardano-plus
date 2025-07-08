// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_transaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignedTransactionData {

 String get txHashHex; List<Witness> get witnesses; TxAuxiliaryDataSupplement? get auxiliaryDataSupplement;
/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignedTransactionDataCopyWith<SignedTransactionData> get copyWith => _$SignedTransactionDataCopyWithImpl<SignedTransactionData>(this as SignedTransactionData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignedTransactionData&&(identical(other.txHashHex, txHashHex) || other.txHashHex == txHashHex)&&const DeepCollectionEquality().equals(other.witnesses, witnesses)&&(identical(other.auxiliaryDataSupplement, auxiliaryDataSupplement) || other.auxiliaryDataSupplement == auxiliaryDataSupplement));
}


@override
int get hashCode => Object.hash(runtimeType,txHashHex,const DeepCollectionEquality().hash(witnesses),auxiliaryDataSupplement);

@override
String toString() {
  return 'SignedTransactionData(txHashHex: $txHashHex, witnesses: $witnesses, auxiliaryDataSupplement: $auxiliaryDataSupplement)';
}


}

/// @nodoc
abstract mixin class $SignedTransactionDataCopyWith<$Res>  {
  factory $SignedTransactionDataCopyWith(SignedTransactionData value, $Res Function(SignedTransactionData) _then) = _$SignedTransactionDataCopyWithImpl;
@useResult
$Res call({
 String txHashHex, List<Witness> witnesses, TxAuxiliaryDataSupplement? auxiliaryDataSupplement
});


$TxAuxiliaryDataSupplementCopyWith<$Res>? get auxiliaryDataSupplement;

}
/// @nodoc
class _$SignedTransactionDataCopyWithImpl<$Res>
    implements $SignedTransactionDataCopyWith<$Res> {
  _$SignedTransactionDataCopyWithImpl(this._self, this._then);

  final SignedTransactionData _self;
  final $Res Function(SignedTransactionData) _then;

/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txHashHex = null,Object? witnesses = null,Object? auxiliaryDataSupplement = freezed,}) {
  return _then(_self.copyWith(
txHashHex: null == txHashHex ? _self.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,witnesses: null == witnesses ? _self.witnesses : witnesses // ignore: cast_nullable_to_non_nullable
as List<Witness>,auxiliaryDataSupplement: freezed == auxiliaryDataSupplement ? _self.auxiliaryDataSupplement : auxiliaryDataSupplement // ignore: cast_nullable_to_non_nullable
as TxAuxiliaryDataSupplement?,
  ));
}
/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TxAuxiliaryDataSupplementCopyWith<$Res>? get auxiliaryDataSupplement {
    if (_self.auxiliaryDataSupplement == null) {
    return null;
  }

  return $TxAuxiliaryDataSupplementCopyWith<$Res>(_self.auxiliaryDataSupplement!, (value) {
    return _then(_self.copyWith(auxiliaryDataSupplement: value));
  });
}
}



/// @nodoc


class _SignedTransactionData extends SignedTransactionData {
   _SignedTransactionData({required this.txHashHex, required final  List<Witness> witnesses, required this.auxiliaryDataSupplement}): _witnesses = witnesses,super._();
  

@override final  String txHashHex;
 final  List<Witness> _witnesses;
@override List<Witness> get witnesses {
  if (_witnesses is EqualUnmodifiableListView) return _witnesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_witnesses);
}

@override final  TxAuxiliaryDataSupplement? auxiliaryDataSupplement;

/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignedTransactionDataCopyWith<_SignedTransactionData> get copyWith => __$SignedTransactionDataCopyWithImpl<_SignedTransactionData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignedTransactionData&&(identical(other.txHashHex, txHashHex) || other.txHashHex == txHashHex)&&const DeepCollectionEquality().equals(other._witnesses, _witnesses)&&(identical(other.auxiliaryDataSupplement, auxiliaryDataSupplement) || other.auxiliaryDataSupplement == auxiliaryDataSupplement));
}


@override
int get hashCode => Object.hash(runtimeType,txHashHex,const DeepCollectionEquality().hash(_witnesses),auxiliaryDataSupplement);

@override
String toString() {
  return 'SignedTransactionData(txHashHex: $txHashHex, witnesses: $witnesses, auxiliaryDataSupplement: $auxiliaryDataSupplement)';
}


}

/// @nodoc
abstract mixin class _$SignedTransactionDataCopyWith<$Res> implements $SignedTransactionDataCopyWith<$Res> {
  factory _$SignedTransactionDataCopyWith(_SignedTransactionData value, $Res Function(_SignedTransactionData) _then) = __$SignedTransactionDataCopyWithImpl;
@override @useResult
$Res call({
 String txHashHex, List<Witness> witnesses, TxAuxiliaryDataSupplement? auxiliaryDataSupplement
});


@override $TxAuxiliaryDataSupplementCopyWith<$Res>? get auxiliaryDataSupplement;

}
/// @nodoc
class __$SignedTransactionDataCopyWithImpl<$Res>
    implements _$SignedTransactionDataCopyWith<$Res> {
  __$SignedTransactionDataCopyWithImpl(this._self, this._then);

  final _SignedTransactionData _self;
  final $Res Function(_SignedTransactionData) _then;

/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txHashHex = null,Object? witnesses = null,Object? auxiliaryDataSupplement = freezed,}) {
  return _then(_SignedTransactionData(
txHashHex: null == txHashHex ? _self.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,witnesses: null == witnesses ? _self._witnesses : witnesses // ignore: cast_nullable_to_non_nullable
as List<Witness>,auxiliaryDataSupplement: freezed == auxiliaryDataSupplement ? _self.auxiliaryDataSupplement : auxiliaryDataSupplement // ignore: cast_nullable_to_non_nullable
as TxAuxiliaryDataSupplement?,
  ));
}

/// Create a copy of SignedTransactionData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TxAuxiliaryDataSupplementCopyWith<$Res>? get auxiliaryDataSupplement {
    if (_self.auxiliaryDataSupplement == null) {
    return null;
  }

  return $TxAuxiliaryDataSupplementCopyWith<$Res>(_self.auxiliaryDataSupplement!, (value) {
    return _then(_self.copyWith(auxiliaryDataSupplement: value));
  });
}
}

// dart format on
