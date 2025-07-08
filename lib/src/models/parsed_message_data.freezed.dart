// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedMessageData {

 int get serializedDataFieldType; bool get isAscii; String get messageHex; LedgerSigningPath get signingPath; bool get hashPayload; bool get preferHexDisplay;
/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedMessageDataCopyWith<ParsedMessageData> get copyWith => _$ParsedMessageDataCopyWithImpl<ParsedMessageData>(this as ParsedMessageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedMessageData&&(identical(other.serializedDataFieldType, serializedDataFieldType) || other.serializedDataFieldType == serializedDataFieldType)&&(identical(other.isAscii, isAscii) || other.isAscii == isAscii)&&(identical(other.messageHex, messageHex) || other.messageHex == messageHex)&&(identical(other.signingPath, signingPath) || other.signingPath == signingPath)&&(identical(other.hashPayload, hashPayload) || other.hashPayload == hashPayload)&&(identical(other.preferHexDisplay, preferHexDisplay) || other.preferHexDisplay == preferHexDisplay));
}


@override
int get hashCode => Object.hash(runtimeType,serializedDataFieldType,isAscii,messageHex,signingPath,hashPayload,preferHexDisplay);

@override
String toString() {
  return 'ParsedMessageData(serializedDataFieldType: $serializedDataFieldType, isAscii: $isAscii, messageHex: $messageHex, signingPath: $signingPath, hashPayload: $hashPayload, preferHexDisplay: $preferHexDisplay)';
}


}

/// @nodoc
abstract mixin class $ParsedMessageDataCopyWith<$Res>  {
  factory $ParsedMessageDataCopyWith(ParsedMessageData value, $Res Function(ParsedMessageData) _then) = _$ParsedMessageDataCopyWithImpl;
@useResult
$Res call({
 String messageHex, LedgerSigningPath signingPath, bool hashPayload, bool preferHexDisplay
});


$LedgerSigningPathCopyWith<$Res> get signingPath;

}
/// @nodoc
class _$ParsedMessageDataCopyWithImpl<$Res>
    implements $ParsedMessageDataCopyWith<$Res> {
  _$ParsedMessageDataCopyWithImpl(this._self, this._then);

  final ParsedMessageData _self;
  final $Res Function(ParsedMessageData) _then;

/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageHex = null,Object? signingPath = null,Object? hashPayload = null,Object? preferHexDisplay = null,}) {
  return _then(_self.copyWith(
messageHex: null == messageHex ? _self.messageHex : messageHex // ignore: cast_nullable_to_non_nullable
as String,signingPath: null == signingPath ? _self.signingPath : signingPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,hashPayload: null == hashPayload ? _self.hashPayload : hashPayload // ignore: cast_nullable_to_non_nullable
as bool,preferHexDisplay: null == preferHexDisplay ? _self.preferHexDisplay : preferHexDisplay // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get signingPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.signingPath, (value) {
    return _then(_self.copyWith(signingPath: value));
  });
}
}


/// @nodoc


class ParsedMessageDataAddress extends ParsedMessageData {
   ParsedMessageDataAddress({required this.messageHex, required this.signingPath, required this.hashPayload, required this.address, this.preferHexDisplay = false}): super._();
  

@override final  String messageHex;
@override final  LedgerSigningPath signingPath;
@override final  bool hashPayload;
 final  ParsedAddressParams address;
@override@JsonKey() final  bool preferHexDisplay;

/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedMessageDataAddressCopyWith<ParsedMessageDataAddress> get copyWith => _$ParsedMessageDataAddressCopyWithImpl<ParsedMessageDataAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedMessageDataAddress&&(identical(other.messageHex, messageHex) || other.messageHex == messageHex)&&(identical(other.signingPath, signingPath) || other.signingPath == signingPath)&&(identical(other.hashPayload, hashPayload) || other.hashPayload == hashPayload)&&(identical(other.address, address) || other.address == address)&&(identical(other.preferHexDisplay, preferHexDisplay) || other.preferHexDisplay == preferHexDisplay));
}


@override
int get hashCode => Object.hash(runtimeType,messageHex,signingPath,hashPayload,address,preferHexDisplay);

@override
String toString() {
  return 'ParsedMessageData.address(messageHex: $messageHex, signingPath: $signingPath, hashPayload: $hashPayload, address: $address, preferHexDisplay: $preferHexDisplay)';
}


}

/// @nodoc
abstract mixin class $ParsedMessageDataAddressCopyWith<$Res> implements $ParsedMessageDataCopyWith<$Res> {
  factory $ParsedMessageDataAddressCopyWith(ParsedMessageDataAddress value, $Res Function(ParsedMessageDataAddress) _then) = _$ParsedMessageDataAddressCopyWithImpl;
@override @useResult
$Res call({
 String messageHex, LedgerSigningPath signingPath, bool hashPayload, ParsedAddressParams address, bool preferHexDisplay
});


@override $LedgerSigningPathCopyWith<$Res> get signingPath;$ParsedAddressParamsCopyWith<$Res> get address;

}
/// @nodoc
class _$ParsedMessageDataAddressCopyWithImpl<$Res>
    implements $ParsedMessageDataAddressCopyWith<$Res> {
  _$ParsedMessageDataAddressCopyWithImpl(this._self, this._then);

  final ParsedMessageDataAddress _self;
  final $Res Function(ParsedMessageDataAddress) _then;

/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageHex = null,Object? signingPath = null,Object? hashPayload = null,Object? address = null,Object? preferHexDisplay = null,}) {
  return _then(ParsedMessageDataAddress(
messageHex: null == messageHex ? _self.messageHex : messageHex // ignore: cast_nullable_to_non_nullable
as String,signingPath: null == signingPath ? _self.signingPath : signingPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,hashPayload: null == hashPayload ? _self.hashPayload : hashPayload // ignore: cast_nullable_to_non_nullable
as bool,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as ParsedAddressParams,preferHexDisplay: null == preferHexDisplay ? _self.preferHexDisplay : preferHexDisplay // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get signingPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.signingPath, (value) {
    return _then(_self.copyWith(signingPath: value));
  });
}/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedAddressParamsCopyWith<$Res> get address {
  
  return $ParsedAddressParamsCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

/// @nodoc


class ParsedMessageDataKeyHash extends ParsedMessageData {
   ParsedMessageDataKeyHash({required this.messageHex, required this.signingPath, required this.hashPayload, this.preferHexDisplay = false}): super._();
  

@override final  String messageHex;
@override final  LedgerSigningPath signingPath;
@override final  bool hashPayload;
@override@JsonKey() final  bool preferHexDisplay;

/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedMessageDataKeyHashCopyWith<ParsedMessageDataKeyHash> get copyWith => _$ParsedMessageDataKeyHashCopyWithImpl<ParsedMessageDataKeyHash>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedMessageDataKeyHash&&(identical(other.messageHex, messageHex) || other.messageHex == messageHex)&&(identical(other.signingPath, signingPath) || other.signingPath == signingPath)&&(identical(other.hashPayload, hashPayload) || other.hashPayload == hashPayload)&&(identical(other.preferHexDisplay, preferHexDisplay) || other.preferHexDisplay == preferHexDisplay));
}


@override
int get hashCode => Object.hash(runtimeType,messageHex,signingPath,hashPayload,preferHexDisplay);

@override
String toString() {
  return 'ParsedMessageData.keyHash(messageHex: $messageHex, signingPath: $signingPath, hashPayload: $hashPayload, preferHexDisplay: $preferHexDisplay)';
}


}

/// @nodoc
abstract mixin class $ParsedMessageDataKeyHashCopyWith<$Res> implements $ParsedMessageDataCopyWith<$Res> {
  factory $ParsedMessageDataKeyHashCopyWith(ParsedMessageDataKeyHash value, $Res Function(ParsedMessageDataKeyHash) _then) = _$ParsedMessageDataKeyHashCopyWithImpl;
@override @useResult
$Res call({
 String messageHex, LedgerSigningPath signingPath, bool hashPayload, bool preferHexDisplay
});


@override $LedgerSigningPathCopyWith<$Res> get signingPath;

}
/// @nodoc
class _$ParsedMessageDataKeyHashCopyWithImpl<$Res>
    implements $ParsedMessageDataKeyHashCopyWith<$Res> {
  _$ParsedMessageDataKeyHashCopyWithImpl(this._self, this._then);

  final ParsedMessageDataKeyHash _self;
  final $Res Function(ParsedMessageDataKeyHash) _then;

/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageHex = null,Object? signingPath = null,Object? hashPayload = null,Object? preferHexDisplay = null,}) {
  return _then(ParsedMessageDataKeyHash(
messageHex: null == messageHex ? _self.messageHex : messageHex // ignore: cast_nullable_to_non_nullable
as String,signingPath: null == signingPath ? _self.signingPath : signingPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,hashPayload: null == hashPayload ? _self.hashPayload : hashPayload // ignore: cast_nullable_to_non_nullable
as bool,preferHexDisplay: null == preferHexDisplay ? _self.preferHexDisplay : preferHexDisplay // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ParsedMessageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get signingPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_self.signingPath, (value) {
    return _then(_self.copyWith(signingPath: value));
  });
}
}

// dart format on
