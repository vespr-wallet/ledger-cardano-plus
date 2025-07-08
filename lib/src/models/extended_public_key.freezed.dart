// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extended_public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExtendedPublicKey {

// bech32 extended public key ; ED25519-BIP32 public key (32 bytes) + chain code (32 bytes)
 String get xPub;// bech32 extended public key ; ED25519-BIP32 public key (32 bytes) + chain code (32 bytes)
 String get acctXvk;// bech32 public key ; ED25519-BIP32 public key (32 bytes)
 String get acctVk; String get publicKeyHex; String get chainCodeHex;
/// Create a copy of ExtendedPublicKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtendedPublicKeyCopyWith<ExtendedPublicKey> get copyWith => _$ExtendedPublicKeyCopyWithImpl<ExtendedPublicKey>(this as ExtendedPublicKey, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedPublicKey&&(identical(other.xPub, xPub) || other.xPub == xPub)&&(identical(other.acctXvk, acctXvk) || other.acctXvk == acctXvk)&&(identical(other.acctVk, acctVk) || other.acctVk == acctVk)&&(identical(other.publicKeyHex, publicKeyHex) || other.publicKeyHex == publicKeyHex)&&(identical(other.chainCodeHex, chainCodeHex) || other.chainCodeHex == chainCodeHex));
}


@override
int get hashCode => Object.hash(runtimeType,xPub,acctXvk,acctVk,publicKeyHex,chainCodeHex);

@override
String toString() {
  return 'ExtendedPublicKey(xPub: $xPub, acctXvk: $acctXvk, acctVk: $acctVk, publicKeyHex: $publicKeyHex, chainCodeHex: $chainCodeHex)';
}


}

/// @nodoc
abstract mixin class $ExtendedPublicKeyCopyWith<$Res>  {
  factory $ExtendedPublicKeyCopyWith(ExtendedPublicKey value, $Res Function(ExtendedPublicKey) _then) = _$ExtendedPublicKeyCopyWithImpl;
@useResult
$Res call({
 String xPub, String acctXvk, String acctVk, String publicKeyHex, String chainCodeHex
});




}
/// @nodoc
class _$ExtendedPublicKeyCopyWithImpl<$Res>
    implements $ExtendedPublicKeyCopyWith<$Res> {
  _$ExtendedPublicKeyCopyWithImpl(this._self, this._then);

  final ExtendedPublicKey _self;
  final $Res Function(ExtendedPublicKey) _then;

/// Create a copy of ExtendedPublicKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? xPub = null,Object? acctXvk = null,Object? acctVk = null,Object? publicKeyHex = null,Object? chainCodeHex = null,}) {
  return _then(_self.copyWith(
xPub: null == xPub ? _self.xPub : xPub // ignore: cast_nullable_to_non_nullable
as String,acctXvk: null == acctXvk ? _self.acctXvk : acctXvk // ignore: cast_nullable_to_non_nullable
as String,acctVk: null == acctVk ? _self.acctVk : acctVk // ignore: cast_nullable_to_non_nullable
as String,publicKeyHex: null == publicKeyHex ? _self.publicKeyHex : publicKeyHex // ignore: cast_nullable_to_non_nullable
as String,chainCodeHex: null == chainCodeHex ? _self.chainCodeHex : chainCodeHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc


class _ExtendedPublicKey extends ExtendedPublicKey {
  const _ExtendedPublicKey({required this.xPub, required this.acctXvk, required this.acctVk, required this.publicKeyHex, required this.chainCodeHex}): super._();
  

// bech32 extended public key ; ED25519-BIP32 public key (32 bytes) + chain code (32 bytes)
@override final  String xPub;
// bech32 extended public key ; ED25519-BIP32 public key (32 bytes) + chain code (32 bytes)
@override final  String acctXvk;
// bech32 public key ; ED25519-BIP32 public key (32 bytes)
@override final  String acctVk;
@override final  String publicKeyHex;
@override final  String chainCodeHex;

/// Create a copy of ExtendedPublicKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtendedPublicKeyCopyWith<_ExtendedPublicKey> get copyWith => __$ExtendedPublicKeyCopyWithImpl<_ExtendedPublicKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtendedPublicKey&&(identical(other.xPub, xPub) || other.xPub == xPub)&&(identical(other.acctXvk, acctXvk) || other.acctXvk == acctXvk)&&(identical(other.acctVk, acctVk) || other.acctVk == acctVk)&&(identical(other.publicKeyHex, publicKeyHex) || other.publicKeyHex == publicKeyHex)&&(identical(other.chainCodeHex, chainCodeHex) || other.chainCodeHex == chainCodeHex));
}


@override
int get hashCode => Object.hash(runtimeType,xPub,acctXvk,acctVk,publicKeyHex,chainCodeHex);

@override
String toString() {
  return 'ExtendedPublicKey(xPub: $xPub, acctXvk: $acctXvk, acctVk: $acctVk, publicKeyHex: $publicKeyHex, chainCodeHex: $chainCodeHex)';
}


}

/// @nodoc
abstract mixin class _$ExtendedPublicKeyCopyWith<$Res> implements $ExtendedPublicKeyCopyWith<$Res> {
  factory _$ExtendedPublicKeyCopyWith(_ExtendedPublicKey value, $Res Function(_ExtendedPublicKey) _then) = __$ExtendedPublicKeyCopyWithImpl;
@override @useResult
$Res call({
 String xPub, String acctXvk, String acctVk, String publicKeyHex, String chainCodeHex
});




}
/// @nodoc
class __$ExtendedPublicKeyCopyWithImpl<$Res>
    implements _$ExtendedPublicKeyCopyWith<$Res> {
  __$ExtendedPublicKeyCopyWithImpl(this._self, this._then);

  final _ExtendedPublicKey _self;
  final $Res Function(_ExtendedPublicKey) _then;

/// Create a copy of ExtendedPublicKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? xPub = null,Object? acctXvk = null,Object? acctVk = null,Object? publicKeyHex = null,Object? chainCodeHex = null,}) {
  return _then(_ExtendedPublicKey(
xPub: null == xPub ? _self.xPub : xPub // ignore: cast_nullable_to_non_nullable
as String,acctXvk: null == acctXvk ? _self.acctXvk : acctXvk // ignore: cast_nullable_to_non_nullable
as String,acctVk: null == acctVk ? _self.acctVk : acctVk // ignore: cast_nullable_to_non_nullable
as String,publicKeyHex: null == publicKeyHex ? _self.publicKeyHex : publicKeyHex // ignore: cast_nullable_to_non_nullable
as String,chainCodeHex: null == chainCodeHex ? _self.chainCodeHex : chainCodeHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ExtendedPublicKeyRequest {

 List<int> get derivationPath; int get minSupportedVersionCode;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedPublicKeyRequest&&const DeepCollectionEquality().equals(other.derivationPath, derivationPath)&&(identical(other.minSupportedVersionCode, minSupportedVersionCode) || other.minSupportedVersionCode == minSupportedVersionCode));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(derivationPath),minSupportedVersionCode);

@override
String toString() {
  return 'ExtendedPublicKeyRequest(derivationPath: $derivationPath, minSupportedVersionCode: $minSupportedVersionCode)';
}


}

/// @nodoc
class $ExtendedPublicKeyRequestCopyWith<$Res>  {
$ExtendedPublicKeyRequestCopyWith(ExtendedPublicKeyRequest _, $Res Function(ExtendedPublicKeyRequest) __);
}



/// @nodoc


class ExtendedPublicKeyRequest_Shelley extends ExtendedPublicKeyRequest {
   ExtendedPublicKeyRequest_Shelley({required this.accountIndex}): super._();
  

 final  int accountIndex;

/// Create a copy of ExtendedPublicKeyRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtendedPublicKeyRequest_ShelleyCopyWith<ExtendedPublicKeyRequest_Shelley> get copyWith => _$ExtendedPublicKeyRequest_ShelleyCopyWithImpl<ExtendedPublicKeyRequest_Shelley>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedPublicKeyRequest_Shelley&&(identical(other.accountIndex, accountIndex) || other.accountIndex == accountIndex));
}


@override
int get hashCode => Object.hash(runtimeType,accountIndex);

@override
String toString() {
  return 'ExtendedPublicKeyRequest.shelley(accountIndex: $accountIndex)';
}


}

/// @nodoc
abstract mixin class $ExtendedPublicKeyRequest_ShelleyCopyWith<$Res> implements $ExtendedPublicKeyRequestCopyWith<$Res> {
  factory $ExtendedPublicKeyRequest_ShelleyCopyWith(ExtendedPublicKeyRequest_Shelley value, $Res Function(ExtendedPublicKeyRequest_Shelley) _then) = _$ExtendedPublicKeyRequest_ShelleyCopyWithImpl;
@useResult
$Res call({
 int accountIndex
});




}
/// @nodoc
class _$ExtendedPublicKeyRequest_ShelleyCopyWithImpl<$Res>
    implements $ExtendedPublicKeyRequest_ShelleyCopyWith<$Res> {
  _$ExtendedPublicKeyRequest_ShelleyCopyWithImpl(this._self, this._then);

  final ExtendedPublicKeyRequest_Shelley _self;
  final $Res Function(ExtendedPublicKeyRequest_Shelley) _then;

/// Create a copy of ExtendedPublicKeyRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? accountIndex = null,}) {
  return _then(ExtendedPublicKeyRequest_Shelley(
accountIndex: null == accountIndex ? _self.accountIndex : accountIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ExtendedPublicKeyRequest_Byron extends ExtendedPublicKeyRequest {
   ExtendedPublicKeyRequest_Byron(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedPublicKeyRequest_Byron);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtendedPublicKeyRequest.byron()';
}


}




/// @nodoc


class ExtendedPublicKeyRequest_Stake extends ExtendedPublicKeyRequest {
   ExtendedPublicKeyRequest_Stake({required this.accountIndex}): super._();
  

 final  int accountIndex;

/// Create a copy of ExtendedPublicKeyRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtendedPublicKeyRequest_StakeCopyWith<ExtendedPublicKeyRequest_Stake> get copyWith => _$ExtendedPublicKeyRequest_StakeCopyWithImpl<ExtendedPublicKeyRequest_Stake>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedPublicKeyRequest_Stake&&(identical(other.accountIndex, accountIndex) || other.accountIndex == accountIndex));
}


@override
int get hashCode => Object.hash(runtimeType,accountIndex);

@override
String toString() {
  return 'ExtendedPublicKeyRequest.stake(accountIndex: $accountIndex)';
}


}

/// @nodoc
abstract mixin class $ExtendedPublicKeyRequest_StakeCopyWith<$Res> implements $ExtendedPublicKeyRequestCopyWith<$Res> {
  factory $ExtendedPublicKeyRequest_StakeCopyWith(ExtendedPublicKeyRequest_Stake value, $Res Function(ExtendedPublicKeyRequest_Stake) _then) = _$ExtendedPublicKeyRequest_StakeCopyWithImpl;
@useResult
$Res call({
 int accountIndex
});




}
/// @nodoc
class _$ExtendedPublicKeyRequest_StakeCopyWithImpl<$Res>
    implements $ExtendedPublicKeyRequest_StakeCopyWith<$Res> {
  _$ExtendedPublicKeyRequest_StakeCopyWithImpl(this._self, this._then);

  final ExtendedPublicKeyRequest_Stake _self;
  final $Res Function(ExtendedPublicKeyRequest_Stake) _then;

/// Create a copy of ExtendedPublicKeyRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? accountIndex = null,}) {
  return _then(ExtendedPublicKeyRequest_Stake(
accountIndex: null == accountIndex ? _self.accountIndex : accountIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ExtendedPublicKeyRequest_CIP36 extends ExtendedPublicKeyRequest {
   ExtendedPublicKeyRequest_CIP36({required this.accountIndex}): super._();
  

 final  int accountIndex;

/// Create a copy of ExtendedPublicKeyRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtendedPublicKeyRequest_CIP36CopyWith<ExtendedPublicKeyRequest_CIP36> get copyWith => _$ExtendedPublicKeyRequest_CIP36CopyWithImpl<ExtendedPublicKeyRequest_CIP36>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedPublicKeyRequest_CIP36&&(identical(other.accountIndex, accountIndex) || other.accountIndex == accountIndex));
}


@override
int get hashCode => Object.hash(runtimeType,accountIndex);

@override
String toString() {
  return 'ExtendedPublicKeyRequest.cip36(accountIndex: $accountIndex)';
}


}

/// @nodoc
abstract mixin class $ExtendedPublicKeyRequest_CIP36CopyWith<$Res> implements $ExtendedPublicKeyRequestCopyWith<$Res> {
  factory $ExtendedPublicKeyRequest_CIP36CopyWith(ExtendedPublicKeyRequest_CIP36 value, $Res Function(ExtendedPublicKeyRequest_CIP36) _then) = _$ExtendedPublicKeyRequest_CIP36CopyWithImpl;
@useResult
$Res call({
 int accountIndex
});




}
/// @nodoc
class _$ExtendedPublicKeyRequest_CIP36CopyWithImpl<$Res>
    implements $ExtendedPublicKeyRequest_CIP36CopyWith<$Res> {
  _$ExtendedPublicKeyRequest_CIP36CopyWithImpl(this._self, this._then);

  final ExtendedPublicKeyRequest_CIP36 _self;
  final $Res Function(ExtendedPublicKeyRequest_CIP36) _then;

/// Create a copy of ExtendedPublicKeyRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? accountIndex = null,}) {
  return _then(ExtendedPublicKeyRequest_CIP36(
accountIndex: null == accountIndex ? _self.accountIndex : accountIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ExtendedPublicKeyRequest_Custom extends ExtendedPublicKeyRequest {
   ExtendedPublicKeyRequest_Custom({required final  List<int> customPath}): _customPath = customPath,super._();
  

 final  List<int> _customPath;
 List<int> get customPath {
  if (_customPath is EqualUnmodifiableListView) return _customPath;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customPath);
}


/// Create a copy of ExtendedPublicKeyRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtendedPublicKeyRequest_CustomCopyWith<ExtendedPublicKeyRequest_Custom> get copyWith => _$ExtendedPublicKeyRequest_CustomCopyWithImpl<ExtendedPublicKeyRequest_Custom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedPublicKeyRequest_Custom&&const DeepCollectionEquality().equals(other._customPath, _customPath));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_customPath));

@override
String toString() {
  return 'ExtendedPublicKeyRequest.custom(customPath: $customPath)';
}


}

/// @nodoc
abstract mixin class $ExtendedPublicKeyRequest_CustomCopyWith<$Res> implements $ExtendedPublicKeyRequestCopyWith<$Res> {
  factory $ExtendedPublicKeyRequest_CustomCopyWith(ExtendedPublicKeyRequest_Custom value, $Res Function(ExtendedPublicKeyRequest_Custom) _then) = _$ExtendedPublicKeyRequest_CustomCopyWithImpl;
@useResult
$Res call({
 List<int> customPath
});




}
/// @nodoc
class _$ExtendedPublicKeyRequest_CustomCopyWithImpl<$Res>
    implements $ExtendedPublicKeyRequest_CustomCopyWith<$Res> {
  _$ExtendedPublicKeyRequest_CustomCopyWithImpl(this._self, this._then);

  final ExtendedPublicKeyRequest_Custom _self;
  final $Res Function(ExtendedPublicKeyRequest_Custom) _then;

/// Create a copy of ExtendedPublicKeyRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customPath = null,}) {
  return _then(ExtendedPublicKeyRequest_Custom(
customPath: null == customPath ? _self._customPath : customPath // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
