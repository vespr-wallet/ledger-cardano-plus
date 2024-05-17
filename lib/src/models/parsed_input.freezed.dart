// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedInput {

 String get txHashHex => throw _privateConstructorUsedError; int get outputIndex => throw _privateConstructorUsedError; LedgerSigningPath? get path => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$ParsedInputCopyWith<ParsedInput> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedInputCopyWith<$Res>  {
  factory $ParsedInputCopyWith(ParsedInput value, $Res Function(ParsedInput) then) = _$ParsedInputCopyWithImpl<$Res, ParsedInput>;
@useResult
$Res call({
 String txHashHex, int outputIndex, LedgerSigningPath? path
});


$LedgerSigningPathCopyWith<$Res>? get path;
}

/// @nodoc
class _$ParsedInputCopyWithImpl<$Res,$Val extends ParsedInput> implements $ParsedInputCopyWith<$Res> {
  _$ParsedInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? txHashHex = null,Object? outputIndex = null,Object? path = freezed,}) {
  return _then(_value.copyWith(
txHashHex: null == txHashHex ? _value.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,outputIndex: null == outputIndex ? _value.outputIndex : outputIndex // ignore: cast_nullable_to_non_nullable
as int,path: freezed == path ? _value.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath?,
  )as $Val);
}
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res>? get path {
    if (_value.path == null) {
    return null;
  }

  return $LedgerSigningPathCopyWith<$Res>(_value.path!, (value) {
    return _then(_value.copyWith(path: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ParsedInputImplCopyWith<$Res> implements $ParsedInputCopyWith<$Res> {
  factory _$$ParsedInputImplCopyWith(_$ParsedInputImpl value, $Res Function(_$ParsedInputImpl) then) = __$$ParsedInputImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String txHashHex, int outputIndex, LedgerSigningPath? path
});


@override $LedgerSigningPathCopyWith<$Res>? get path;
}

/// @nodoc
class __$$ParsedInputImplCopyWithImpl<$Res> extends _$ParsedInputCopyWithImpl<$Res, _$ParsedInputImpl> implements _$$ParsedInputImplCopyWith<$Res> {
  __$$ParsedInputImplCopyWithImpl(_$ParsedInputImpl _value, $Res Function(_$ParsedInputImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? txHashHex = null,Object? outputIndex = null,Object? path = freezed,}) {
  return _then(_$ParsedInputImpl(
txHashHex: null == txHashHex ? _value.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,outputIndex: null == outputIndex ? _value.outputIndex : outputIndex // ignore: cast_nullable_to_non_nullable
as int,path: freezed == path ? _value.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath?,
  ));
}


}

/// @nodoc


class _$ParsedInputImpl extends _ParsedInput  {
   _$ParsedInputImpl({required this.txHashHex, required this.outputIndex, this.path}): super._();

  

@override final  String txHashHex;
@override final  int outputIndex;
@override final  LedgerSigningPath? path;

@override
String toString() {
  return 'ParsedInput(txHashHex: $txHashHex, outputIndex: $outputIndex, path: $path)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedInputImpl&&(identical(other.txHashHex, txHashHex) || other.txHashHex == txHashHex)&&(identical(other.outputIndex, outputIndex) || other.outputIndex == outputIndex)&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,txHashHex,outputIndex,path);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$ParsedInputImplCopyWith<_$ParsedInputImpl> get copyWith => __$$ParsedInputImplCopyWithImpl<_$ParsedInputImpl>(this, _$identity);








}


abstract class _ParsedInput extends ParsedInput {
   factory _ParsedInput({required final  String txHashHex, required final  int outputIndex, final  LedgerSigningPath? path}) = _$ParsedInputImpl;
   _ParsedInput._(): super._();

  

@override  String get txHashHex;@override  int get outputIndex;@override  LedgerSigningPath? get path;
@override @JsonKey(ignore: true)
_$$ParsedInputImplCopyWith<_$ParsedInputImpl> get copyWith => throw _privateConstructorUsedError;

}
