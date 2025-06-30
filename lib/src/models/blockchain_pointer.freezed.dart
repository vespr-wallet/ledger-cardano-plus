// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blockchain_pointer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BlockchainPointer {

 int get blockIndex; int get txIndex; int get certificateIndex;
/// Create a copy of BlockchainPointer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockchainPointerCopyWith<BlockchainPointer> get copyWith => _$BlockchainPointerCopyWithImpl<BlockchainPointer>(this as BlockchainPointer, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockchainPointer&&(identical(other.blockIndex, blockIndex) || other.blockIndex == blockIndex)&&(identical(other.txIndex, txIndex) || other.txIndex == txIndex)&&(identical(other.certificateIndex, certificateIndex) || other.certificateIndex == certificateIndex));
}


@override
int get hashCode => Object.hash(runtimeType,blockIndex,txIndex,certificateIndex);

@override
String toString() {
  return 'BlockchainPointer(blockIndex: $blockIndex, txIndex: $txIndex, certificateIndex: $certificateIndex)';
}


}

/// @nodoc
abstract mixin class $BlockchainPointerCopyWith<$Res>  {
  factory $BlockchainPointerCopyWith(BlockchainPointer value, $Res Function(BlockchainPointer) _then) = _$BlockchainPointerCopyWithImpl;
@useResult
$Res call({
 int blockIndex, int txIndex, int certificateIndex
});




}
/// @nodoc
class _$BlockchainPointerCopyWithImpl<$Res>
    implements $BlockchainPointerCopyWith<$Res> {
  _$BlockchainPointerCopyWithImpl(this._self, this._then);

  final BlockchainPointer _self;
  final $Res Function(BlockchainPointer) _then;

/// Create a copy of BlockchainPointer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blockIndex = null,Object? txIndex = null,Object? certificateIndex = null,}) {
  return _then(_self.copyWith(
blockIndex: null == blockIndex ? _self.blockIndex : blockIndex // ignore: cast_nullable_to_non_nullable
as int,txIndex: null == txIndex ? _self.txIndex : txIndex // ignore: cast_nullable_to_non_nullable
as int,certificateIndex: null == certificateIndex ? _self.certificateIndex : certificateIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _BlockchainPointer extends BlockchainPointer {
   _BlockchainPointer({required this.blockIndex, required this.txIndex, required this.certificateIndex}): super._();
  

@override final  int blockIndex;
@override final  int txIndex;
@override final  int certificateIndex;

/// Create a copy of BlockchainPointer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockchainPointerCopyWith<_BlockchainPointer> get copyWith => __$BlockchainPointerCopyWithImpl<_BlockchainPointer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockchainPointer&&(identical(other.blockIndex, blockIndex) || other.blockIndex == blockIndex)&&(identical(other.txIndex, txIndex) || other.txIndex == txIndex)&&(identical(other.certificateIndex, certificateIndex) || other.certificateIndex == certificateIndex));
}


@override
int get hashCode => Object.hash(runtimeType,blockIndex,txIndex,certificateIndex);

@override
String toString() {
  return 'BlockchainPointer(blockIndex: $blockIndex, txIndex: $txIndex, certificateIndex: $certificateIndex)';
}


}

/// @nodoc
abstract mixin class _$BlockchainPointerCopyWith<$Res> implements $BlockchainPointerCopyWith<$Res> {
  factory _$BlockchainPointerCopyWith(_BlockchainPointer value, $Res Function(_BlockchainPointer) _then) = __$BlockchainPointerCopyWithImpl;
@override @useResult
$Res call({
 int blockIndex, int txIndex, int certificateIndex
});




}
/// @nodoc
class __$BlockchainPointerCopyWithImpl<$Res>
    implements _$BlockchainPointerCopyWith<$Res> {
  __$BlockchainPointerCopyWithImpl(this._self, this._then);

  final _BlockchainPointer _self;
  final $Res Function(_BlockchainPointer) _then;

/// Create a copy of BlockchainPointer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? blockIndex = null,Object? txIndex = null,Object? certificateIndex = null,}) {
  return _then(_BlockchainPointer(
blockIndex: null == blockIndex ? _self.blockIndex : blockIndex // ignore: cast_nullable_to_non_nullable
as int,txIndex: null == txIndex ? _self.txIndex : txIndex // ignore: cast_nullable_to_non_nullable
as int,certificateIndex: null == certificateIndex ? _self.certificateIndex : certificateIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
