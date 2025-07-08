// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardano_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardanoVersion {

 int get versionCode; String get versionName; VersionCompatibility get compatibility; bool get testMode; int get versionMajor; int get versionMinor; int get versionPatch; bool get locked; Flags get flags;
/// Create a copy of CardanoVersion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardanoVersionCopyWith<CardanoVersion> get copyWith => _$CardanoVersionCopyWithImpl<CardanoVersion>(this as CardanoVersion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoVersion&&(identical(other.versionCode, versionCode) || other.versionCode == versionCode)&&(identical(other.versionName, versionName) || other.versionName == versionName)&&(identical(other.compatibility, compatibility) || other.compatibility == compatibility)&&(identical(other.testMode, testMode) || other.testMode == testMode)&&(identical(other.versionMajor, versionMajor) || other.versionMajor == versionMajor)&&(identical(other.versionMinor, versionMinor) || other.versionMinor == versionMinor)&&(identical(other.versionPatch, versionPatch) || other.versionPatch == versionPatch)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.flags, flags) || other.flags == flags));
}


@override
int get hashCode => Object.hash(runtimeType,versionCode,versionName,compatibility,testMode,versionMajor,versionMinor,versionPatch,locked,flags);

@override
String toString() {
  return 'CardanoVersion(versionCode: $versionCode, versionName: $versionName, compatibility: $compatibility, testMode: $testMode, versionMajor: $versionMajor, versionMinor: $versionMinor, versionPatch: $versionPatch, locked: $locked, flags: $flags)';
}


}

/// @nodoc
abstract mixin class $CardanoVersionCopyWith<$Res>  {
  factory $CardanoVersionCopyWith(CardanoVersion value, $Res Function(CardanoVersion) _then) = _$CardanoVersionCopyWithImpl;
@useResult
$Res call({
 bool testMode, int versionMajor, int versionMinor, int versionPatch, bool locked, Flags flags
});


$FlagsCopyWith<$Res> get flags;

}
/// @nodoc
class _$CardanoVersionCopyWithImpl<$Res>
    implements $CardanoVersionCopyWith<$Res> {
  _$CardanoVersionCopyWithImpl(this._self, this._then);

  final CardanoVersion _self;
  final $Res Function(CardanoVersion) _then;

/// Create a copy of CardanoVersion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? testMode = null,Object? versionMajor = null,Object? versionMinor = null,Object? versionPatch = null,Object? locked = null,Object? flags = null,}) {
  return _then(_self.copyWith(
testMode: null == testMode ? _self.testMode : testMode // ignore: cast_nullable_to_non_nullable
as bool,versionMajor: null == versionMajor ? _self.versionMajor : versionMajor // ignore: cast_nullable_to_non_nullable
as int,versionMinor: null == versionMinor ? _self.versionMinor : versionMinor // ignore: cast_nullable_to_non_nullable
as int,versionPatch: null == versionPatch ? _self.versionPatch : versionPatch // ignore: cast_nullable_to_non_nullable
as int,locked: null == locked ? _self.locked : locked // ignore: cast_nullable_to_non_nullable
as bool,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as Flags,
  ));
}
/// Create a copy of CardanoVersion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlagsCopyWith<$Res> get flags {
  
  return $FlagsCopyWith<$Res>(_self.flags, (value) {
    return _then(_self.copyWith(flags: value));
  });
}
}



/// @nodoc


class _CardanoVersion extends CardanoVersion {
   _CardanoVersion({required this.testMode, required this.versionMajor, required this.versionMinor, required this.versionPatch, required this.locked, required this.flags}): super._();
  

@override final  bool testMode;
@override final  int versionMajor;
@override final  int versionMinor;
@override final  int versionPatch;
@override final  bool locked;
@override final  Flags flags;

/// Create a copy of CardanoVersion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardanoVersionCopyWith<_CardanoVersion> get copyWith => __$CardanoVersionCopyWithImpl<_CardanoVersion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardanoVersion&&(identical(other.testMode, testMode) || other.testMode == testMode)&&(identical(other.versionMajor, versionMajor) || other.versionMajor == versionMajor)&&(identical(other.versionMinor, versionMinor) || other.versionMinor == versionMinor)&&(identical(other.versionPatch, versionPatch) || other.versionPatch == versionPatch)&&(identical(other.locked, locked) || other.locked == locked)&&(identical(other.flags, flags) || other.flags == flags));
}


@override
int get hashCode => Object.hash(runtimeType,testMode,versionMajor,versionMinor,versionPatch,locked,flags);

@override
String toString() {
  return 'CardanoVersion(testMode: $testMode, versionMajor: $versionMajor, versionMinor: $versionMinor, versionPatch: $versionPatch, locked: $locked, flags: $flags)';
}


}

/// @nodoc
abstract mixin class _$CardanoVersionCopyWith<$Res> implements $CardanoVersionCopyWith<$Res> {
  factory _$CardanoVersionCopyWith(_CardanoVersion value, $Res Function(_CardanoVersion) _then) = __$CardanoVersionCopyWithImpl;
@override @useResult
$Res call({
 bool testMode, int versionMajor, int versionMinor, int versionPatch, bool locked, Flags flags
});


@override $FlagsCopyWith<$Res> get flags;

}
/// @nodoc
class __$CardanoVersionCopyWithImpl<$Res>
    implements _$CardanoVersionCopyWith<$Res> {
  __$CardanoVersionCopyWithImpl(this._self, this._then);

  final _CardanoVersion _self;
  final $Res Function(_CardanoVersion) _then;

/// Create a copy of CardanoVersion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? testMode = null,Object? versionMajor = null,Object? versionMinor = null,Object? versionPatch = null,Object? locked = null,Object? flags = null,}) {
  return _then(_CardanoVersion(
testMode: null == testMode ? _self.testMode : testMode // ignore: cast_nullable_to_non_nullable
as bool,versionMajor: null == versionMajor ? _self.versionMajor : versionMajor // ignore: cast_nullable_to_non_nullable
as int,versionMinor: null == versionMinor ? _self.versionMinor : versionMinor // ignore: cast_nullable_to_non_nullable
as int,versionPatch: null == versionPatch ? _self.versionPatch : versionPatch // ignore: cast_nullable_to_non_nullable
as int,locked: null == locked ? _self.locked : locked // ignore: cast_nullable_to_non_nullable
as bool,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as Flags,
  ));
}

/// Create a copy of CardanoVersion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlagsCopyWith<$Res> get flags {
  
  return $FlagsCopyWith<$Res>(_self.flags, (value) {
    return _then(_self.copyWith(flags: value));
  });
}
}

// dart format on
