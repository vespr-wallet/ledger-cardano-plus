// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blockchain_pointer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlockchainPointer {

 int get blockIndex => throw _privateConstructorUsedError; int get txIndex => throw _privateConstructorUsedError; int get certificateIndex => throw _privateConstructorUsedError;







/// Create a copy of BlockchainPointer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$BlockchainPointerCopyWith<BlockchainPointer> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $BlockchainPointerCopyWith<$Res>  {
  factory $BlockchainPointerCopyWith(BlockchainPointer value, $Res Function(BlockchainPointer) then) = _$BlockchainPointerCopyWithImpl<$Res, BlockchainPointer>;
@useResult
$Res call({
 int blockIndex, int txIndex, int certificateIndex
});



}

/// @nodoc
class _$BlockchainPointerCopyWithImpl<$Res,$Val extends BlockchainPointer> implements $BlockchainPointerCopyWith<$Res> {
  _$BlockchainPointerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of BlockchainPointer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blockIndex = null,Object? txIndex = null,Object? certificateIndex = null,}) {
  return _then(_value.copyWith(
blockIndex: null == blockIndex ? _value.blockIndex : blockIndex // ignore: cast_nullable_to_non_nullable
as int,txIndex: null == txIndex ? _value.txIndex : txIndex // ignore: cast_nullable_to_non_nullable
as int,certificateIndex: null == certificateIndex ? _value.certificateIndex : certificateIndex // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$BlockchainPointerImplCopyWith<$Res> implements $BlockchainPointerCopyWith<$Res> {
  factory _$$BlockchainPointerImplCopyWith(_$BlockchainPointerImpl value, $Res Function(_$BlockchainPointerImpl) then) = __$$BlockchainPointerImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int blockIndex, int txIndex, int certificateIndex
});



}

/// @nodoc
class __$$BlockchainPointerImplCopyWithImpl<$Res> extends _$BlockchainPointerCopyWithImpl<$Res, _$BlockchainPointerImpl> implements _$$BlockchainPointerImplCopyWith<$Res> {
  __$$BlockchainPointerImplCopyWithImpl(_$BlockchainPointerImpl _value, $Res Function(_$BlockchainPointerImpl) _then)
      : super(_value, _then);


/// Create a copy of BlockchainPointer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blockIndex = null,Object? txIndex = null,Object? certificateIndex = null,}) {
  return _then(_$BlockchainPointerImpl(
blockIndex: null == blockIndex ? _value.blockIndex : blockIndex // ignore: cast_nullable_to_non_nullable
as int,txIndex: null == txIndex ? _value.txIndex : txIndex // ignore: cast_nullable_to_non_nullable
as int,certificateIndex: null == certificateIndex ? _value.certificateIndex : certificateIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$BlockchainPointerImpl extends _BlockchainPointer  {
   _$BlockchainPointerImpl({required this.blockIndex, required this.txIndex, required this.certificateIndex}): super._();

  

@override final  int blockIndex;
@override final  int txIndex;
@override final  int certificateIndex;

@override
String toString() {
  return 'BlockchainPointer(blockIndex: $blockIndex, txIndex: $txIndex, certificateIndex: $certificateIndex)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$BlockchainPointerImpl&&(identical(other.blockIndex, blockIndex) || other.blockIndex == blockIndex)&&(identical(other.txIndex, txIndex) || other.txIndex == txIndex)&&(identical(other.certificateIndex, certificateIndex) || other.certificateIndex == certificateIndex));
}


@override
int get hashCode => Object.hash(runtimeType,blockIndex,txIndex,certificateIndex);

/// Create a copy of BlockchainPointer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$BlockchainPointerImplCopyWith<_$BlockchainPointerImpl> get copyWith => __$$BlockchainPointerImplCopyWithImpl<_$BlockchainPointerImpl>(this, _$identity);








}


abstract class _BlockchainPointer extends BlockchainPointer {
   factory _BlockchainPointer({required final  int blockIndex, required final  int txIndex, required final  int certificateIndex}) = _$BlockchainPointerImpl;
   _BlockchainPointer._(): super._();

  

@override int get blockIndex;@override int get txIndex;@override int get certificateIndex;
/// Create a copy of BlockchainPointer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$BlockchainPointerImplCopyWith<_$BlockchainPointerImpl> get copyWith => throw _privateConstructorUsedError;

}
