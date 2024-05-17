// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_withdrawal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedWithdrawal {

 BigInt get amount => throw _privateConstructorUsedError; ParsedCredential get stakeCredential => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$ParsedWithdrawalCopyWith<ParsedWithdrawal> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedWithdrawalCopyWith<$Res>  {
  factory $ParsedWithdrawalCopyWith(ParsedWithdrawal value, $Res Function(ParsedWithdrawal) then) = _$ParsedWithdrawalCopyWithImpl<$Res, ParsedWithdrawal>;
@useResult
$Res call({
 BigInt amount, ParsedCredential stakeCredential
});


$ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$ParsedWithdrawalCopyWithImpl<$Res,$Val extends ParsedWithdrawal> implements $ParsedWithdrawalCopyWith<$Res> {
  _$ParsedWithdrawalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? stakeCredential = null,}) {
  return _then(_value.copyWith(
amount: null == amount ? _value.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,stakeCredential: null == stakeCredential ? _value.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,
  )as $Val);
}
@override
@pragma('vm:prefer-inline')
$ParsedCredentialCopyWith<$Res> get stakeCredential {
  
  return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
    return _then(_value.copyWith(stakeCredential: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ParsedWithdrawalImplCopyWith<$Res> implements $ParsedWithdrawalCopyWith<$Res> {
  factory _$$ParsedWithdrawalImplCopyWith(_$ParsedWithdrawalImpl value, $Res Function(_$ParsedWithdrawalImpl) then) = __$$ParsedWithdrawalImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 BigInt amount, ParsedCredential stakeCredential
});


@override $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$ParsedWithdrawalImplCopyWithImpl<$Res> extends _$ParsedWithdrawalCopyWithImpl<$Res, _$ParsedWithdrawalImpl> implements _$$ParsedWithdrawalImplCopyWith<$Res> {
  __$$ParsedWithdrawalImplCopyWithImpl(_$ParsedWithdrawalImpl _value, $Res Function(_$ParsedWithdrawalImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? stakeCredential = null,}) {
  return _then(_$ParsedWithdrawalImpl(
amount: null == amount ? _value.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,stakeCredential: null == stakeCredential ? _value.stakeCredential : stakeCredential // ignore: cast_nullable_to_non_nullable
as ParsedCredential,
  ));
}


}

/// @nodoc


class _$ParsedWithdrawalImpl extends _ParsedWithdrawal  {
   _$ParsedWithdrawalImpl({required this.amount, required this.stakeCredential}): super._();

  

@override final  BigInt amount;
@override final  ParsedCredential stakeCredential;

@override
String toString() {
  return 'ParsedWithdrawal(amount: $amount, stakeCredential: $stakeCredential)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedWithdrawalImpl&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.stakeCredential, stakeCredential) || other.stakeCredential == stakeCredential));
}


@override
int get hashCode => Object.hash(runtimeType,amount,stakeCredential);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$ParsedWithdrawalImplCopyWith<_$ParsedWithdrawalImpl> get copyWith => __$$ParsedWithdrawalImplCopyWithImpl<_$ParsedWithdrawalImpl>(this, _$identity);








}


abstract class _ParsedWithdrawal extends ParsedWithdrawal {
   factory _ParsedWithdrawal({required final  BigInt amount, required final  ParsedCredential stakeCredential}) = _$ParsedWithdrawalImpl;
   _ParsedWithdrawal._(): super._();

  

@override  BigInt get amount;@override  ParsedCredential get stakeCredential;
@override @JsonKey(ignore: true)
_$$ParsedWithdrawalImplCopyWith<_$ParsedWithdrawalImpl> get copyWith => throw _privateConstructorUsedError;

}
