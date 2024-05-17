// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_margin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedMargin {

 BigInt get numerator => throw _privateConstructorUsedError; BigInt get denominator => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$ParsedMarginCopyWith<ParsedMargin> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedMarginCopyWith<$Res>  {
  factory $ParsedMarginCopyWith(ParsedMargin value, $Res Function(ParsedMargin) then) = _$ParsedMarginCopyWithImpl<$Res, ParsedMargin>;
@useResult
$Res call({
 BigInt numerator, BigInt denominator
});



}

/// @nodoc
class _$ParsedMarginCopyWithImpl<$Res,$Val extends ParsedMargin> implements $ParsedMarginCopyWith<$Res> {
  _$ParsedMarginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? numerator = null,Object? denominator = null,}) {
  return _then(_value.copyWith(
numerator: null == numerator ? _value.numerator : numerator // ignore: cast_nullable_to_non_nullable
as BigInt,denominator: null == denominator ? _value.denominator : denominator // ignore: cast_nullable_to_non_nullable
as BigInt,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ParsedMarginImplCopyWith<$Res> implements $ParsedMarginCopyWith<$Res> {
  factory _$$ParsedMarginImplCopyWith(_$ParsedMarginImpl value, $Res Function(_$ParsedMarginImpl) then) = __$$ParsedMarginImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 BigInt numerator, BigInt denominator
});



}

/// @nodoc
class __$$ParsedMarginImplCopyWithImpl<$Res> extends _$ParsedMarginCopyWithImpl<$Res, _$ParsedMarginImpl> implements _$$ParsedMarginImplCopyWith<$Res> {
  __$$ParsedMarginImplCopyWithImpl(_$ParsedMarginImpl _value, $Res Function(_$ParsedMarginImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? numerator = null,Object? denominator = null,}) {
  return _then(_$ParsedMarginImpl(
numerator: null == numerator ? _value.numerator : numerator // ignore: cast_nullable_to_non_nullable
as BigInt,denominator: null == denominator ? _value.denominator : denominator // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc


class _$ParsedMarginImpl extends _ParsedMargin  {
   _$ParsedMarginImpl({required this.numerator, required this.denominator}): super._();

  

@override final  BigInt numerator;
@override final  BigInt denominator;

@override
String toString() {
  return 'ParsedMargin(numerator: $numerator, denominator: $denominator)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedMarginImpl&&(identical(other.numerator, numerator) || other.numerator == numerator)&&(identical(other.denominator, denominator) || other.denominator == denominator));
}


@override
int get hashCode => Object.hash(runtimeType,numerator,denominator);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$ParsedMarginImplCopyWith<_$ParsedMarginImpl> get copyWith => __$$ParsedMarginImplCopyWithImpl<_$ParsedMarginImpl>(this, _$identity);








}


abstract class _ParsedMargin extends ParsedMargin {
   factory _ParsedMargin({required final  BigInt numerator, required final  BigInt denominator}) = _$ParsedMarginImpl;
   _ParsedMargin._(): super._();

  

@override  BigInt get numerator;@override  BigInt get denominator;
@override @JsonKey(ignore: true)
_$$ParsedMarginImplCopyWith<_$ParsedMarginImpl> get copyWith => throw _privateConstructorUsedError;

}
