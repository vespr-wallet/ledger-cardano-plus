// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Datum {

 DatumType get type;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Datum&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'Datum(type: $type)';
}


}

/// @nodoc
class $DatumCopyWith<$Res>  {
$DatumCopyWith(Datum _, $Res Function(Datum) __);
}



/// @nodoc


class DatumHash extends Datum {
   DatumHash({required this.datumHashHex}): super._();
  

 final  String datumHashHex;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumHashCopyWith<DatumHash> get copyWith => _$DatumHashCopyWithImpl<DatumHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatumHash&&(identical(other.datumHashHex, datumHashHex) || other.datumHashHex == datumHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,datumHashHex);

@override
String toString() {
  return 'Datum.hash(datumHashHex: $datumHashHex)';
}


}

/// @nodoc
abstract mixin class $DatumHashCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory $DatumHashCopyWith(DatumHash value, $Res Function(DatumHash) _then) = _$DatumHashCopyWithImpl;
@useResult
$Res call({
 String datumHashHex
});




}
/// @nodoc
class _$DatumHashCopyWithImpl<$Res>
    implements $DatumHashCopyWith<$Res> {
  _$DatumHashCopyWithImpl(this._self, this._then);

  final DatumHash _self;
  final $Res Function(DatumHash) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? datumHashHex = null,}) {
  return _then(DatumHash(
datumHashHex: null == datumHashHex ? _self.datumHashHex : datumHashHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DatumInline extends Datum {
   DatumInline({required this.datumHex}): super._();
  

 final  String datumHex;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumInlineCopyWith<DatumInline> get copyWith => _$DatumInlineCopyWithImpl<DatumInline>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatumInline&&(identical(other.datumHex, datumHex) || other.datumHex == datumHex));
}


@override
int get hashCode => Object.hash(runtimeType,datumHex);

@override
String toString() {
  return 'Datum.inline(datumHex: $datumHex)';
}


}

/// @nodoc
abstract mixin class $DatumInlineCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory $DatumInlineCopyWith(DatumInline value, $Res Function(DatumInline) _then) = _$DatumInlineCopyWithImpl;
@useResult
$Res call({
 String datumHex
});




}
/// @nodoc
class _$DatumInlineCopyWithImpl<$Res>
    implements $DatumInlineCopyWith<$Res> {
  _$DatumInlineCopyWithImpl(this._self, this._then);

  final DatumInline _self;
  final $Res Function(DatumInline) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? datumHex = null,}) {
  return _then(DatumInline(
datumHex: null == datumHex ? _self.datumHex : datumHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
