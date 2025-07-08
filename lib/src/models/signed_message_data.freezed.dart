// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignedMessageData {

 String get signatureHex; String get signingPublicKeyHex; String get addressFieldHex;
/// Create a copy of SignedMessageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignedMessageDataCopyWith<SignedMessageData> get copyWith => _$SignedMessageDataCopyWithImpl<SignedMessageData>(this as SignedMessageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignedMessageData&&(identical(other.signatureHex, signatureHex) || other.signatureHex == signatureHex)&&(identical(other.signingPublicKeyHex, signingPublicKeyHex) || other.signingPublicKeyHex == signingPublicKeyHex)&&(identical(other.addressFieldHex, addressFieldHex) || other.addressFieldHex == addressFieldHex));
}


@override
int get hashCode => Object.hash(runtimeType,signatureHex,signingPublicKeyHex,addressFieldHex);

@override
String toString() {
  return 'SignedMessageData(signatureHex: $signatureHex, signingPublicKeyHex: $signingPublicKeyHex, addressFieldHex: $addressFieldHex)';
}


}

/// @nodoc
abstract mixin class $SignedMessageDataCopyWith<$Res>  {
  factory $SignedMessageDataCopyWith(SignedMessageData value, $Res Function(SignedMessageData) _then) = _$SignedMessageDataCopyWithImpl;
@useResult
$Res call({
 String signatureHex, String signingPublicKeyHex, String addressFieldHex
});




}
/// @nodoc
class _$SignedMessageDataCopyWithImpl<$Res>
    implements $SignedMessageDataCopyWith<$Res> {
  _$SignedMessageDataCopyWithImpl(this._self, this._then);

  final SignedMessageData _self;
  final $Res Function(SignedMessageData) _then;

/// Create a copy of SignedMessageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signatureHex = null,Object? signingPublicKeyHex = null,Object? addressFieldHex = null,}) {
  return _then(_self.copyWith(
signatureHex: null == signatureHex ? _self.signatureHex : signatureHex // ignore: cast_nullable_to_non_nullable
as String,signingPublicKeyHex: null == signingPublicKeyHex ? _self.signingPublicKeyHex : signingPublicKeyHex // ignore: cast_nullable_to_non_nullable
as String,addressFieldHex: null == addressFieldHex ? _self.addressFieldHex : addressFieldHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc


class _SignedMessageData implements SignedMessageData {
  const _SignedMessageData({required this.signatureHex, required this.signingPublicKeyHex, required this.addressFieldHex});
  

@override final  String signatureHex;
@override final  String signingPublicKeyHex;
@override final  String addressFieldHex;

/// Create a copy of SignedMessageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignedMessageDataCopyWith<_SignedMessageData> get copyWith => __$SignedMessageDataCopyWithImpl<_SignedMessageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignedMessageData&&(identical(other.signatureHex, signatureHex) || other.signatureHex == signatureHex)&&(identical(other.signingPublicKeyHex, signingPublicKeyHex) || other.signingPublicKeyHex == signingPublicKeyHex)&&(identical(other.addressFieldHex, addressFieldHex) || other.addressFieldHex == addressFieldHex));
}


@override
int get hashCode => Object.hash(runtimeType,signatureHex,signingPublicKeyHex,addressFieldHex);

@override
String toString() {
  return 'SignedMessageData(signatureHex: $signatureHex, signingPublicKeyHex: $signingPublicKeyHex, addressFieldHex: $addressFieldHex)';
}


}

/// @nodoc
abstract mixin class _$SignedMessageDataCopyWith<$Res> implements $SignedMessageDataCopyWith<$Res> {
  factory _$SignedMessageDataCopyWith(_SignedMessageData value, $Res Function(_SignedMessageData) _then) = __$SignedMessageDataCopyWithImpl;
@override @useResult
$Res call({
 String signatureHex, String signingPublicKeyHex, String addressFieldHex
});




}
/// @nodoc
class __$SignedMessageDataCopyWithImpl<$Res>
    implements _$SignedMessageDataCopyWith<$Res> {
  __$SignedMessageDataCopyWithImpl(this._self, this._then);

  final _SignedMessageData _self;
  final $Res Function(_SignedMessageData) _then;

/// Create a copy of SignedMessageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signatureHex = null,Object? signingPublicKeyHex = null,Object? addressFieldHex = null,}) {
  return _then(_SignedMessageData(
signatureHex: null == signatureHex ? _self.signatureHex : signatureHex // ignore: cast_nullable_to_non_nullable
as String,signingPublicKeyHex: null == signingPublicKeyHex ? _self.signingPublicKeyHex : signingPublicKeyHex // ignore: cast_nullable_to_non_nullable
as String,addressFieldHex: null == addressFieldHex ? _self.addressFieldHex : addressFieldHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
