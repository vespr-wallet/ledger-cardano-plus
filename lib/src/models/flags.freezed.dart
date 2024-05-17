// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flags.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Flags {

 bool get isDebug => throw _privateConstructorUsedError; bool get isAppXS => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$FlagsCopyWith<Flags> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $FlagsCopyWith<$Res>  {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) then) = _$FlagsCopyWithImpl<$Res, Flags>;
@useResult
$Res call({
 bool isDebug, bool isAppXS
});



}

/// @nodoc
class _$FlagsCopyWithImpl<$Res,$Val extends Flags> implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? isDebug = null,Object? isAppXS = null,}) {
  return _then(_value.copyWith(
isDebug: null == isDebug ? _value.isDebug : isDebug // ignore: cast_nullable_to_non_nullable
as bool,isAppXS: null == isAppXS ? _value.isAppXS : isAppXS // ignore: cast_nullable_to_non_nullable
as bool,
  )as $Val);
}

}


/// @nodoc
abstract class _$$FlagsImplCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$$FlagsImplCopyWith(_$FlagsImpl value, $Res Function(_$FlagsImpl) then) = __$$FlagsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 bool isDebug, bool isAppXS
});



}

/// @nodoc
class __$$FlagsImplCopyWithImpl<$Res> extends _$FlagsCopyWithImpl<$Res, _$FlagsImpl> implements _$$FlagsImplCopyWith<$Res> {
  __$$FlagsImplCopyWithImpl(_$FlagsImpl _value, $Res Function(_$FlagsImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? isDebug = null,Object? isAppXS = null,}) {
  return _then(_$FlagsImpl(
isDebug: null == isDebug ? _value.isDebug : isDebug // ignore: cast_nullable_to_non_nullable
as bool,isAppXS: null == isAppXS ? _value.isAppXS : isAppXS // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$FlagsImpl extends _Flags  {
  const _$FlagsImpl({required this.isDebug, required this.isAppXS}): super._();

  

@override final  bool isDebug;
@override final  bool isAppXS;

@override
String toString() {
  return 'Flags(isDebug: $isDebug, isAppXS: $isAppXS)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FlagsImpl&&(identical(other.isDebug, isDebug) || other.isDebug == isDebug)&&(identical(other.isAppXS, isAppXS) || other.isAppXS == isAppXS));
}


@override
int get hashCode => Object.hash(runtimeType,isDebug,isAppXS);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$FlagsImplCopyWith<_$FlagsImpl> get copyWith => __$$FlagsImplCopyWithImpl<_$FlagsImpl>(this, _$identity);








}


abstract class _Flags extends Flags {
  const factory _Flags({required final  bool isDebug, required final  bool isAppXS}) = _$FlagsImpl;
  const _Flags._(): super._();

  

@override  bool get isDebug;@override  bool get isAppXS;
@override @JsonKey(ignore: true)
_$$FlagsImplCopyWith<_$FlagsImpl> get copyWith => throw _privateConstructorUsedError;

}
