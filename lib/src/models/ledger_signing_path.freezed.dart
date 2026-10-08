// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_signing_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LedgerSigningPath {





@override
bool operator ==(Object other) {
  final _this = this as LedgerSigningPath;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerSigningPath&&const DeepCollectionEquality().equals(other.signingPath, _this.signingPath));
}


@override
int get hashCode {
  final _this = this as LedgerSigningPath;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.signingPath));
}

@override
String toString() {
  final _this = this as LedgerSigningPath;
  return 'LedgerSigningPath(signingPath: ${_this.signingPath})';
}


}

/// @nodoc
class $LedgerSigningPathCopyWith<$Res>  {
$LedgerSigningPathCopyWith(LedgerSigningPath _, $Res Function(LedgerSigningPath) __);
}



/// @nodoc


class LedgerSigningPath_PoolCold extends LedgerSigningPath {
   LedgerSigningPath_PoolCold({required this.account, required this.index}): super._();
  

 final  int account;
 final  int index;

/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerSigningPath_PoolColdCopyWith<LedgerSigningPath_PoolCold> get copyWith => _$LedgerSigningPath_PoolColdCopyWithImpl<LedgerSigningPath_PoolCold>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerSigningPath_PoolCold&&(identical(other.account, account) || other.account == account)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode {
    return Object.hash(runtimeType,account,index);
}

@override
String toString() {
    return 'LedgerSigningPath.poolCold(account: $account, index: $index)';
}


}

/// @nodoc
abstract mixin class $LedgerSigningPath_PoolColdCopyWith<$Res> implements $LedgerSigningPathCopyWith<$Res> {
  factory $LedgerSigningPath_PoolColdCopyWith(LedgerSigningPath_PoolCold value, $Res Function(LedgerSigningPath_PoolCold) _then) = _$LedgerSigningPath_PoolColdCopyWithImpl;
@useResult
$Res call({
 int account, int index
});




}
/// @nodoc
class _$LedgerSigningPath_PoolColdCopyWithImpl<$Res>
    implements $LedgerSigningPath_PoolColdCopyWith<$Res> {
  _$LedgerSigningPath_PoolColdCopyWithImpl(this._self, this._then);

  final LedgerSigningPath_PoolCold _self;
  final $Res Function(LedgerSigningPath_PoolCold) _then;

/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? account = null,Object? index = null,}) {
  return _then(LedgerSigningPath_PoolCold(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as int,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LedgerSigningPath_Byron extends LedgerSigningPath {
   LedgerSigningPath_Byron({required this.account, required this.address}): super._();
  

 final  int account;
 final  int address;

/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerSigningPath_ByronCopyWith<LedgerSigningPath_Byron> get copyWith => _$LedgerSigningPath_ByronCopyWithImpl<LedgerSigningPath_Byron>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerSigningPath_Byron&&(identical(other.account, account) || other.account == account)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode {
    return Object.hash(runtimeType,account,address);
}

@override
String toString() {
    return 'LedgerSigningPath.byron(account: $account, address: $address)';
}


}

/// @nodoc
abstract mixin class $LedgerSigningPath_ByronCopyWith<$Res> implements $LedgerSigningPathCopyWith<$Res> {
  factory $LedgerSigningPath_ByronCopyWith(LedgerSigningPath_Byron value, $Res Function(LedgerSigningPath_Byron) _then) = _$LedgerSigningPath_ByronCopyWithImpl;
@useResult
$Res call({
 int account, int address
});




}
/// @nodoc
class _$LedgerSigningPath_ByronCopyWithImpl<$Res>
    implements $LedgerSigningPath_ByronCopyWith<$Res> {
  _$LedgerSigningPath_ByronCopyWithImpl(this._self, this._then);

  final LedgerSigningPath_Byron _self;
  final $Res Function(LedgerSigningPath_Byron) _then;

/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? account = null,Object? address = null,}) {
  return _then(LedgerSigningPath_Byron(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LedgerSigningPath_Shelley extends LedgerSigningPath {
   LedgerSigningPath_Shelley({required this.account, required this.address, required this.role}): super._();
  

 final  int account;
 final  int address;
 final  ShelleyAddressRole role;

/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerSigningPath_ShelleyCopyWith<LedgerSigningPath_Shelley> get copyWith => _$LedgerSigningPath_ShelleyCopyWithImpl<LedgerSigningPath_Shelley>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerSigningPath_Shelley&&(identical(other.account, account) || other.account == account)&&(identical(other.address, address) || other.address == address)&&(identical(other.role, role) || other.role == role));
}


@override
int get hashCode {
    return Object.hash(runtimeType,account,address,role);
}

@override
String toString() {
    return 'LedgerSigningPath.shelley(account: $account, address: $address, role: $role)';
}


}

/// @nodoc
abstract mixin class $LedgerSigningPath_ShelleyCopyWith<$Res> implements $LedgerSigningPathCopyWith<$Res> {
  factory $LedgerSigningPath_ShelleyCopyWith(LedgerSigningPath_Shelley value, $Res Function(LedgerSigningPath_Shelley) _then) = _$LedgerSigningPath_ShelleyCopyWithImpl;
@useResult
$Res call({
 int account, int address, ShelleyAddressRole role
});




}
/// @nodoc
class _$LedgerSigningPath_ShelleyCopyWithImpl<$Res>
    implements $LedgerSigningPath_ShelleyCopyWith<$Res> {
  _$LedgerSigningPath_ShelleyCopyWithImpl(this._self, this._then);

  final LedgerSigningPath_Shelley _self;
  final $Res Function(LedgerSigningPath_Shelley) _then;

/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? account = null,Object? address = null,Object? role = null,}) {
  return _then(LedgerSigningPath_Shelley(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ShelleyAddressRole,
  ));
}


}

/// @nodoc


class LedgerSigningPath_CIP36 extends LedgerSigningPath {
   LedgerSigningPath_CIP36({required this.account, required this.address}): super._();
  

 final  int account;
 final  int address;

/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerSigningPath_CIP36CopyWith<LedgerSigningPath_CIP36> get copyWith => _$LedgerSigningPath_CIP36CopyWithImpl<LedgerSigningPath_CIP36>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerSigningPath_CIP36&&(identical(other.account, account) || other.account == account)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode {
    return Object.hash(runtimeType,account,address);
}

@override
String toString() {
    return 'LedgerSigningPath.cip36(account: $account, address: $address)';
}


}

/// @nodoc
abstract mixin class $LedgerSigningPath_CIP36CopyWith<$Res> implements $LedgerSigningPathCopyWith<$Res> {
  factory $LedgerSigningPath_CIP36CopyWith(LedgerSigningPath_CIP36 value, $Res Function(LedgerSigningPath_CIP36) _then) = _$LedgerSigningPath_CIP36CopyWithImpl;
@useResult
$Res call({
 int account, int address
});




}
/// @nodoc
class _$LedgerSigningPath_CIP36CopyWithImpl<$Res>
    implements $LedgerSigningPath_CIP36CopyWith<$Res> {
  _$LedgerSigningPath_CIP36CopyWithImpl(this._self, this._then);

  final LedgerSigningPath_CIP36 _self;
  final $Res Function(LedgerSigningPath_CIP36) _then;

/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? account = null,Object? address = null,}) {
  return _then(LedgerSigningPath_CIP36(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LedgerSigningPath_Custom extends LedgerSigningPath {
   LedgerSigningPath_Custom( List<int> path): _path = path,super._();
  

 final  List<int> _path;
 List<int> get path {
  if (_path is EqualUnmodifiableListView) return _path;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_path);
}


/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerSigningPath_CustomCopyWith<LedgerSigningPath_Custom> get copyWith => _$LedgerSigningPath_CustomCopyWithImpl<LedgerSigningPath_Custom>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerSigningPath_Custom&&const DeepCollectionEquality().equals(other.path, _path));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_path));
}

@override
String toString() {
    return 'LedgerSigningPath.custom(path: $path)';
}


}

/// @nodoc
abstract mixin class $LedgerSigningPath_CustomCopyWith<$Res> implements $LedgerSigningPathCopyWith<$Res> {
  factory $LedgerSigningPath_CustomCopyWith(LedgerSigningPath_Custom value, $Res Function(LedgerSigningPath_Custom) _then) = _$LedgerSigningPath_CustomCopyWithImpl;
@useResult
$Res call({
 List<int> path
});




}
/// @nodoc
class _$LedgerSigningPath_CustomCopyWithImpl<$Res>
    implements $LedgerSigningPath_CustomCopyWith<$Res> {
  _$LedgerSigningPath_CustomCopyWithImpl(this._self, this._then);

  final LedgerSigningPath_Custom _self;
  final $Res Function(LedgerSigningPath_Custom) _then;

/// Create a copy of LedgerSigningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(LedgerSigningPath_Custom(
null == path ? _self._path : path // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
