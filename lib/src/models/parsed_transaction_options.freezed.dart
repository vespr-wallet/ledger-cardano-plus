// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_transaction_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedTransactionOptions {

 bool get tagCborSets;
/// Create a copy of ParsedTransactionOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedTransactionOptionsCopyWith<ParsedTransactionOptions> get copyWith => _$ParsedTransactionOptionsCopyWithImpl<ParsedTransactionOptions>(this as ParsedTransactionOptions, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ParsedTransactionOptions;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedTransactionOptions&&(identical(other.tagCborSets, _this.tagCborSets) || other.tagCborSets == _this.tagCborSets));
}


@override
int get hashCode {
  final _this = this as ParsedTransactionOptions;
  return Object.hash(runtimeType,_this.tagCborSets);
}

@override
String toString() {
  final _this = this as ParsedTransactionOptions;
  return 'ParsedTransactionOptions(tagCborSets: ${_this.tagCborSets})';
}


}

/// @nodoc
abstract mixin class $ParsedTransactionOptionsCopyWith<$Res>  {
  factory $ParsedTransactionOptionsCopyWith(ParsedTransactionOptions value, $Res Function(ParsedTransactionOptions) _then) = _$ParsedTransactionOptionsCopyWithImpl;
@useResult
$Res call({
 bool tagCborSets
});




}
/// @nodoc
class _$ParsedTransactionOptionsCopyWithImpl<$Res>
    implements $ParsedTransactionOptionsCopyWith<$Res> {
  _$ParsedTransactionOptionsCopyWithImpl(this._self, this._then);

  final ParsedTransactionOptions _self;
  final $Res Function(ParsedTransactionOptions) _then;

/// Create a copy of ParsedTransactionOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tagCborSets = null,}) {
  return _then(ParsedTransactionOptions(
tagCborSets: null == tagCborSets ? _self.tagCborSets : tagCborSets // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



/// @nodoc


class _ParsedTransactionOptions extends ParsedTransactionOptions {
   _ParsedTransactionOptions({required this.tagCborSets}): super._();
  

@override final  bool tagCborSets;

/// Create a copy of ParsedTransactionOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedTransactionOptionsCopyWith<_ParsedTransactionOptions> get copyWith => __$ParsedTransactionOptionsCopyWithImpl<_ParsedTransactionOptions>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedTransactionOptions&&(identical(other.tagCborSets, tagCborSets) || other.tagCborSets == tagCborSets));
}


@override
int get hashCode {
    return Object.hash(runtimeType,tagCborSets);
}

@override
String toString() {
    return 'ParsedTransactionOptions(tagCborSets: $tagCborSets)';
}


}

/// @nodoc
abstract mixin class _$ParsedTransactionOptionsCopyWith<$Res> implements $ParsedTransactionOptionsCopyWith<$Res> {
  factory _$ParsedTransactionOptionsCopyWith(_ParsedTransactionOptions value, $Res Function(_ParsedTransactionOptions) _then) = __$ParsedTransactionOptionsCopyWithImpl;
@override @useResult
$Res call({
 bool tagCborSets
});




}
/// @nodoc
class __$ParsedTransactionOptionsCopyWithImpl<$Res>
    implements _$ParsedTransactionOptionsCopyWith<$Res> {
  __$ParsedTransactionOptionsCopyWithImpl(this._self, this._then);

  final _ParsedTransactionOptions _self;
  final $Res Function(_ParsedTransactionOptions) _then;

/// Create a copy of ParsedTransactionOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tagCborSets = null,}) {
  return _then(_ParsedTransactionOptions(
tagCborSets: null == tagCborSets ? _self.tagCborSets : tagCborSets // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
