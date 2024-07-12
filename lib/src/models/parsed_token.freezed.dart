// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedToken {

 String get assetNameHex => throw _privateConstructorUsedError; BigInt get amount => throw _privateConstructorUsedError;







/// Create a copy of ParsedToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedTokenCopyWith<ParsedToken> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedTokenCopyWith<$Res>  {
  factory $ParsedTokenCopyWith(ParsedToken value, $Res Function(ParsedToken) then) = _$ParsedTokenCopyWithImpl<$Res, ParsedToken>;
@useResult
$Res call({
 String assetNameHex, BigInt amount
});



}

/// @nodoc
class _$ParsedTokenCopyWithImpl<$Res,$Val extends ParsedToken> implements $ParsedTokenCopyWith<$Res> {
  _$ParsedTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assetNameHex = null,Object? amount = null,}) {
  return _then(_value.copyWith(
assetNameHex: null == assetNameHex ? _value.assetNameHex : assetNameHex // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _value.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ParsedTokenImplCopyWith<$Res> implements $ParsedTokenCopyWith<$Res> {
  factory _$$ParsedTokenImplCopyWith(_$ParsedTokenImpl value, $Res Function(_$ParsedTokenImpl) then) = __$$ParsedTokenImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String assetNameHex, BigInt amount
});



}

/// @nodoc
class __$$ParsedTokenImplCopyWithImpl<$Res> extends _$ParsedTokenCopyWithImpl<$Res, _$ParsedTokenImpl> implements _$$ParsedTokenImplCopyWith<$Res> {
  __$$ParsedTokenImplCopyWithImpl(_$ParsedTokenImpl _value, $Res Function(_$ParsedTokenImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assetNameHex = null,Object? amount = null,}) {
  return _then(_$ParsedTokenImpl(
assetNameHex: null == assetNameHex ? _value.assetNameHex : assetNameHex // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _value.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$ParsedTokenImpl extends _ParsedToken  {
   _$ParsedTokenImpl({required this.assetNameHex, required this.amount}): super._();

  

@override final  String assetNameHex;
@override final  BigInt amount;

@override
String toString() {
  return 'ParsedToken(assetNameHex: $assetNameHex, amount: $amount)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedTokenImpl&&(identical(other.assetNameHex, assetNameHex) || other.assetNameHex == assetNameHex)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,assetNameHex,amount);

/// Create a copy of ParsedToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedTokenImplCopyWith<_$ParsedTokenImpl> get copyWith => __$$ParsedTokenImplCopyWithImpl<_$ParsedTokenImpl>(this, _$identity);








}


abstract class _ParsedToken extends ParsedToken {
   factory _ParsedToken({required final  String assetNameHex, required final  BigInt amount}) = _$ParsedTokenImpl;
   _ParsedToken._(): super._();

  

@override String get assetNameHex;@override BigInt get amount;
/// Create a copy of ParsedToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedTokenImplCopyWith<_$ParsedTokenImpl> get copyWith => throw _privateConstructorUsedError;

}
