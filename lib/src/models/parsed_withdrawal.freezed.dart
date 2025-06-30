// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_withdrawal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedWithdrawal {

 BigInt get amount; ParsedCredential get stakeCredential;
/// Create a copy of ParsedWithdrawal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedWithdrawalCopyWith<ParsedWithdrawal> get copyWith => _$ParsedWithdrawalCopyWithImpl<ParsedWithdrawal>(this as ParsedWithdrawal, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedWithdrawal&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.stakeCredential, stakeCredential) || other.stakeCredential == stakeCredential));
}


@override
int get hashCode => Object.hash(runtimeType,amount,stakeCredential);

@override
String toString() {
  return 'ParsedWithdrawal(amount: $amount, stakeCredential: $stakeCredential)';
}


}

/// @nodoc
abstract mixin class $ParsedWithdrawalCopyWith<$Res>  {
  factory $ParsedWithdrawalCopyWith(ParsedWithdrawal value, $Res Function(ParsedWithdrawal) _then) = _$ParsedWithdrawalCopyWithImpl;
@useResult
$Res call({
 BigInt amount, ParsedCredential stakeCredential
});


$ParsedCredentialCopyWith<$Res> get stakeCredential;

}
/// @nodoc
class _$ParsedWithdrawalCopyWithImpl<$Res>
    implements $ParsedWithdrawalCopyWith<$Res> {
  _$ParsedWithdrawalCopyWithImpl(this._self, this._then);

  final ParsedWithdrawal _self;
  final $Res Function(ParsedWithdrawal) _then;

/// Create a copy of ParsedWithdrawal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? stakeCredential = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,stakeCredential: null == stakeCredential ? _self.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,
  ));
}
/// Create a copy of ParsedWithdrawal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get stakeCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_self.stakeCredential, (value) {
    return _then(_self.copyWith(stakeCredential: value));
  });
}
}


/// @nodoc


class _ParsedWithdrawal extends ParsedWithdrawal {
   _ParsedWithdrawal({required this.amount, required this.stakeCredential}): super._();
  

@override final  BigInt amount;
@override final  ParsedCredential stakeCredential;

/// Create a copy of ParsedWithdrawal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedWithdrawalCopyWith<_ParsedWithdrawal> get copyWith => __$ParsedWithdrawalCopyWithImpl<_ParsedWithdrawal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedWithdrawal&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.stakeCredential, stakeCredential) || other.stakeCredential == stakeCredential));
}


@override
int get hashCode => Object.hash(runtimeType,amount,stakeCredential);

@override
String toString() {
  return 'ParsedWithdrawal(amount: $amount, stakeCredential: $stakeCredential)';
}


}

/// @nodoc
abstract mixin class _$ParsedWithdrawalCopyWith<$Res> implements $ParsedWithdrawalCopyWith<$Res> {
  factory _$ParsedWithdrawalCopyWith(_ParsedWithdrawal value, $Res Function(_ParsedWithdrawal) _then) = __$ParsedWithdrawalCopyWithImpl;
@override @useResult
$Res call({
 BigInt amount, ParsedCredential stakeCredential
});


@override $ParsedCredentialCopyWith<$Res> get stakeCredential;

}
/// @nodoc
class __$ParsedWithdrawalCopyWithImpl<$Res>
    implements _$ParsedWithdrawalCopyWith<$Res> {
  __$ParsedWithdrawalCopyWithImpl(this._self, this._then);

  final _ParsedWithdrawal _self;
  final $Res Function(_ParsedWithdrawal) _then;

/// Create a copy of ParsedWithdrawal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? stakeCredential = null,}) {
  return _then(_ParsedWithdrawal(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,stakeCredential: null == stakeCredential ? _self.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,
  ));
}

/// Create a copy of ParsedWithdrawal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get stakeCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_self.stakeCredential, (value) {
    return _then(_self.copyWith(stakeCredential: value));
  });
}
}

// dart format on
