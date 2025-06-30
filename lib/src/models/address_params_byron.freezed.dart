// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_byron.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressParamsByron {

 List<int> get spendingPath;
/// Create a copy of AddressParamsByron
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressParamsByronCopyWith<AddressParamsByron> get copyWith => _$AddressParamsByronCopyWithImpl<AddressParamsByron>(this as AddressParamsByron, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressParamsByron&&const DeepCollectionEquality().equals(other.spendingPath, spendingPath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(spendingPath));

@override
String toString() {
  return 'AddressParamsByron(spendingPath: $spendingPath)';
}


}

/// @nodoc
abstract mixin class $AddressParamsByronCopyWith<$Res>  {
  factory $AddressParamsByronCopyWith(AddressParamsByron value, $Res Function(AddressParamsByron) _then) = _$AddressParamsByronCopyWithImpl;
@useResult
$Res call({
 List<int> spendingPath
});




}
/// @nodoc
class _$AddressParamsByronCopyWithImpl<$Res>
    implements $AddressParamsByronCopyWith<$Res> {
  _$AddressParamsByronCopyWithImpl(this._self, this._then);

  final AddressParamsByron _self;
  final $Res Function(AddressParamsByron) _then;

/// Create a copy of AddressParamsByron
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? spendingPath = null,}) {
  return _then(_self.copyWith(
spendingPath: null == spendingPath ? _self.spendingPath : spendingPath // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// @nodoc


class _AddressParamsByron extends AddressParamsByron {
   _AddressParamsByron({required final  List<int> spendingPath}): _spendingPath = spendingPath,super._();
  

 final  List<int> _spendingPath;
@override List<int> get spendingPath {
  if (_spendingPath is EqualUnmodifiableListView) return _spendingPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_spendingPath);
}


/// Create a copy of AddressParamsByron
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressParamsByronCopyWith<_AddressParamsByron> get copyWith => __$AddressParamsByronCopyWithImpl<_AddressParamsByron>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressParamsByron&&const DeepCollectionEquality().equals(other._spendingPath, _spendingPath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_spendingPath));

@override
String toString() {
  return 'AddressParamsByron(spendingPath: $spendingPath)';
}


}

/// @nodoc
abstract mixin class _$AddressParamsByronCopyWith<$Res> implements $AddressParamsByronCopyWith<$Res> {
  factory _$AddressParamsByronCopyWith(_AddressParamsByron value, $Res Function(_AddressParamsByron) _then) = __$AddressParamsByronCopyWithImpl;
@override @useResult
$Res call({
 List<int> spendingPath
});




}
/// @nodoc
class __$AddressParamsByronCopyWithImpl<$Res>
    implements _$AddressParamsByronCopyWith<$Res> {
  __$AddressParamsByronCopyWithImpl(this._self, this._then);

  final _AddressParamsByron _self;
  final $Res Function(_AddressParamsByron) _then;

/// Create a copy of AddressParamsByron
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? spendingPath = null,}) {
  return _then(_AddressParamsByron(
spendingPath: null == spendingPath ? _self._spendingPath : spendingPath // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
