// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedInput {

 String get txHashHex; int get outputIndex; LedgerSigningPath? get path;
/// Create a copy of ParsedInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedInputCopyWith<ParsedInput> get copyWith => _$ParsedInputCopyWithImpl<ParsedInput>(this as ParsedInput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedInput&&(identical(other.txHashHex, txHashHex) || other.txHashHex == txHashHex)&&(identical(other.outputIndex, outputIndex) || other.outputIndex == outputIndex)&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,txHashHex,outputIndex,path);

@override
String toString() {
  return 'ParsedInput(txHashHex: $txHashHex, outputIndex: $outputIndex, path: $path)';
}


}

/// @nodoc
abstract mixin class $ParsedInputCopyWith<$Res>  {
  factory $ParsedInputCopyWith(ParsedInput value, $Res Function(ParsedInput) _then) = _$ParsedInputCopyWithImpl;
@useResult
$Res call({
 String txHashHex, int outputIndex, LedgerSigningPath? path
});


$LedgerSigningPathCopyWith<$Res>? get path;

}
/// @nodoc
class _$ParsedInputCopyWithImpl<$Res>
    implements $ParsedInputCopyWith<$Res> {
  _$ParsedInputCopyWithImpl(this._self, this._then);

  final ParsedInput _self;
  final $Res Function(ParsedInput) _then;

/// Create a copy of ParsedInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txHashHex = null,Object? outputIndex = null,Object? path = freezed,}) {
  return _then(_self.copyWith(
txHashHex: null == txHashHex ? _self.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,outputIndex: null == outputIndex ? _self.outputIndex : outputIndex // ignore: cast_nullable_to_non_nullable
as int,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath?,
  ));
}
/// Create a copy of ParsedInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res>? get path {
    if (_self.path == null) {
    return null;
  }

  return $LedgerSigningPathCopyWith<$Res>(_self.path!, (value) {
    return _then(_self.copyWith(path: value));
  });
}
}


/// @nodoc


class _ParsedInput extends ParsedInput {
   _ParsedInput({required this.txHashHex, required this.outputIndex, required this.path}): super._();
  

@override final  String txHashHex;
@override final  int outputIndex;
@override final  LedgerSigningPath? path;

/// Create a copy of ParsedInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedInputCopyWith<_ParsedInput> get copyWith => __$ParsedInputCopyWithImpl<_ParsedInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedInput&&(identical(other.txHashHex, txHashHex) || other.txHashHex == txHashHex)&&(identical(other.outputIndex, outputIndex) || other.outputIndex == outputIndex)&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,txHashHex,outputIndex,path);

@override
String toString() {
  return 'ParsedInput(txHashHex: $txHashHex, outputIndex: $outputIndex, path: $path)';
}


}

/// @nodoc
abstract mixin class _$ParsedInputCopyWith<$Res> implements $ParsedInputCopyWith<$Res> {
  factory _$ParsedInputCopyWith(_ParsedInput value, $Res Function(_ParsedInput) _then) = __$ParsedInputCopyWithImpl;
@override @useResult
$Res call({
 String txHashHex, int outputIndex, LedgerSigningPath? path
});


@override $LedgerSigningPathCopyWith<$Res>? get path;

}
/// @nodoc
class __$ParsedInputCopyWithImpl<$Res>
    implements _$ParsedInputCopyWith<$Res> {
  __$ParsedInputCopyWithImpl(this._self, this._then);

  final _ParsedInput _self;
  final $Res Function(_ParsedInput) _then;

/// Create a copy of ParsedInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txHashHex = null,Object? outputIndex = null,Object? path = freezed,}) {
  return _then(_ParsedInput(
txHashHex: null == txHashHex ? _self.txHashHex : txHashHex // ignore: cast_nullable_to_non_nullable
as String,outputIndex: null == outputIndex ? _self.outputIndex : outputIndex // ignore: cast_nullable_to_non_nullable
as int,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath?,
  ));
}

/// Create a copy of ParsedInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res>? get path {
    if (_self.path == null) {
    return null;
  }

  return $LedgerSigningPathCopyWith<$Res>(_self.path!, (value) {
    return _then(_self.copyWith(path: value));
  });
}
}

// dart format on
