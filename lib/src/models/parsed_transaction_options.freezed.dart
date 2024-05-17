// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_transaction_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedTransactionOptions {

 bool get tagCborSets => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$ParsedTransactionOptionsCopyWith<ParsedTransactionOptions> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedTransactionOptionsCopyWith<$Res>  {
  factory $ParsedTransactionOptionsCopyWith(ParsedTransactionOptions value, $Res Function(ParsedTransactionOptions) then) = _$ParsedTransactionOptionsCopyWithImpl<$Res, ParsedTransactionOptions>;
@useResult
$Res call({
 bool tagCborSets
});



}

/// @nodoc
class _$ParsedTransactionOptionsCopyWithImpl<$Res,$Val extends ParsedTransactionOptions> implements $ParsedTransactionOptionsCopyWith<$Res> {
  _$ParsedTransactionOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? tagCborSets = null,}) {
  return _then(_value.copyWith(
tagCborSets: null == tagCborSets ? _value.tagCborSets : tagCborSets // ignore: cast_nullable_to_non_nullable
as bool,
  )as $Val);
}

}


/// @nodoc
abstract class _$$ParsedTransactionOptionsImplCopyWith<$Res> implements $ParsedTransactionOptionsCopyWith<$Res> {
  factory _$$ParsedTransactionOptionsImplCopyWith(_$ParsedTransactionOptionsImpl value, $Res Function(_$ParsedTransactionOptionsImpl) then) = __$$ParsedTransactionOptionsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 bool tagCborSets
});



}

/// @nodoc
class __$$ParsedTransactionOptionsImplCopyWithImpl<$Res> extends _$ParsedTransactionOptionsCopyWithImpl<$Res, _$ParsedTransactionOptionsImpl> implements _$$ParsedTransactionOptionsImplCopyWith<$Res> {
  __$$ParsedTransactionOptionsImplCopyWithImpl(_$ParsedTransactionOptionsImpl _value, $Res Function(_$ParsedTransactionOptionsImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? tagCborSets = null,}) {
  return _then(_$ParsedTransactionOptionsImpl(
tagCborSets: null == tagCborSets ? _value.tagCborSets : tagCborSets // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$ParsedTransactionOptionsImpl extends _ParsedTransactionOptions  {
   _$ParsedTransactionOptionsImpl({required this.tagCborSets}): super._();

  

@override final  bool tagCborSets;

@override
String toString() {
  return 'ParsedTransactionOptions(tagCborSets: $tagCborSets)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedTransactionOptionsImpl&&(identical(other.tagCborSets, tagCborSets) || other.tagCborSets == tagCborSets));
}


@override
int get hashCode => Object.hash(runtimeType,tagCborSets);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$ParsedTransactionOptionsImplCopyWith<_$ParsedTransactionOptionsImpl> get copyWith => __$$ParsedTransactionOptionsImplCopyWithImpl<_$ParsedTransactionOptionsImpl>(this, _$identity);








}


abstract class _ParsedTransactionOptions extends ParsedTransactionOptions {
   factory _ParsedTransactionOptions({required final  bool tagCborSets}) = _$ParsedTransactionOptionsImpl;
   _ParsedTransactionOptions._(): super._();

  

@override  bool get tagCborSets;
@override @JsonKey(ignore: true)
_$$ParsedTransactionOptionsImplCopyWith<_$ParsedTransactionOptionsImpl> get copyWith => throw _privateConstructorUsedError;

}
