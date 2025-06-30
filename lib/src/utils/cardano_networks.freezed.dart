// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardano_networks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CardanoNetwork {

 int get networkMagic; int get networkId; String get paymentBech32Hrp; String get stakeBech32Hrp;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardanoNetwork&&(identical(other.networkMagic, networkMagic) || other.networkMagic == networkMagic)&&(identical(other.networkId, networkId) || other.networkId == networkId)&&(identical(other.paymentBech32Hrp, paymentBech32Hrp) || other.paymentBech32Hrp == paymentBech32Hrp)&&(identical(other.stakeBech32Hrp, stakeBech32Hrp) || other.stakeBech32Hrp == stakeBech32Hrp));
}


@override
int get hashCode => Object.hash(runtimeType,networkMagic,networkId,paymentBech32Hrp,stakeBech32Hrp);

@override
String toString() {
  return 'CardanoNetwork(networkMagic: $networkMagic, networkId: $networkId, paymentBech32Hrp: $paymentBech32Hrp, stakeBech32Hrp: $stakeBech32Hrp)';
}


}

/// @nodoc
class $CardanoNetworkCopyWith<$Res>  {
$CardanoNetworkCopyWith(CardanoNetwork _, $Res Function(CardanoNetwork) __);
}


/// @nodoc


class NetworkMainnet extends CardanoNetwork {
   NetworkMainnet(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkMainnet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardanoNetwork.mainnet()';
}


}




/// @nodoc


class NetworkLegacyTestnet extends CardanoNetwork {
   NetworkLegacyTestnet(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkLegacyTestnet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardanoNetwork.legacyTestnet()';
}


}




/// @nodoc


class NetworkPreProd extends CardanoNetwork {
   NetworkPreProd(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkPreProd);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardanoNetwork.preprod()';
}


}




/// @nodoc


class NetworkPreview extends CardanoNetwork {
   NetworkPreview(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkPreview);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardanoNetwork.preview()';
}


}




/// @nodoc


class NetworkConway extends CardanoNetwork {
   NetworkConway(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkConway);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CardanoNetwork.conway()';
}


}




/// @nodoc


class NetworkCustom extends CardanoNetwork {
   NetworkCustom({required this.customNetworkId, required this.customNetworkMagic, required this.customPaymentBech32Hrp, required this.customStakeBech32Hrp}): super._();
  

 final  int customNetworkId;
 final  int customNetworkMagic;
 final  String customPaymentBech32Hrp;
 final  String customStakeBech32Hrp;

/// Create a copy of CardanoNetwork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkCustomCopyWith<NetworkCustom> get copyWith => _$NetworkCustomCopyWithImpl<NetworkCustom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkCustom&&(identical(other.customNetworkId, customNetworkId) || other.customNetworkId == customNetworkId)&&(identical(other.customNetworkMagic, customNetworkMagic) || other.customNetworkMagic == customNetworkMagic)&&(identical(other.customPaymentBech32Hrp, customPaymentBech32Hrp) || other.customPaymentBech32Hrp == customPaymentBech32Hrp)&&(identical(other.customStakeBech32Hrp, customStakeBech32Hrp) || other.customStakeBech32Hrp == customStakeBech32Hrp));
}


@override
int get hashCode => Object.hash(runtimeType,customNetworkId,customNetworkMagic,customPaymentBech32Hrp,customStakeBech32Hrp);

@override
String toString() {
  return 'CardanoNetwork.custom(customNetworkId: $customNetworkId, customNetworkMagic: $customNetworkMagic, customPaymentBech32Hrp: $customPaymentBech32Hrp, customStakeBech32Hrp: $customStakeBech32Hrp)';
}


}

/// @nodoc
abstract mixin class $NetworkCustomCopyWith<$Res> implements $CardanoNetworkCopyWith<$Res> {
  factory $NetworkCustomCopyWith(NetworkCustom value, $Res Function(NetworkCustom) _then) = _$NetworkCustomCopyWithImpl;
@useResult
$Res call({
 int customNetworkId, int customNetworkMagic, String customPaymentBech32Hrp, String customStakeBech32Hrp
});




}
/// @nodoc
class _$NetworkCustomCopyWithImpl<$Res>
    implements $NetworkCustomCopyWith<$Res> {
  _$NetworkCustomCopyWithImpl(this._self, this._then);

  final NetworkCustom _self;
  final $Res Function(NetworkCustom) _then;

/// Create a copy of CardanoNetwork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customNetworkId = null,Object? customNetworkMagic = null,Object? customPaymentBech32Hrp = null,Object? customStakeBech32Hrp = null,}) {
  return _then(NetworkCustom(
customNetworkId: null == customNetworkId ? _self.customNetworkId : customNetworkId // ignore: cast_nullable_to_non_nullable
as int,customNetworkMagic: null == customNetworkMagic ? _self.customNetworkMagic : customNetworkMagic // ignore: cast_nullable_to_non_nullable
as int,customPaymentBech32Hrp: null == customPaymentBech32Hrp ? _self.customPaymentBech32Hrp : customPaymentBech32Hrp // ignore: cast_nullable_to_non_nullable
as String,customStakeBech32Hrp: null == customStakeBech32Hrp ? _self.customStakeBech32Hrp : customStakeBech32Hrp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
