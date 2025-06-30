// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedOutput {

 TxOutputFormat get format; ParsedDatum? get outputDatum; String? get referenceScriptHash; ParsedOutputDestination get destination; BigInt get amount; List<ParsedAssetGroup> get tokenBundle;
/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedOutputCopyWith<ParsedOutput> get copyWith => _$ParsedOutputCopyWithImpl<ParsedOutput>(this as ParsedOutput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedOutput&&(identical(other.format, format) || other.format == format)&&(identical(other.outputDatum, outputDatum) || other.outputDatum == outputDatum)&&(identical(other.referenceScriptHash, referenceScriptHash) || other.referenceScriptHash == referenceScriptHash)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.tokenBundle, tokenBundle));
}


@override
int get hashCode => Object.hash(runtimeType,format,outputDatum,referenceScriptHash,destination,amount,const DeepCollectionEquality().hash(tokenBundle));

@override
String toString() {
  return 'ParsedOutput(format: $format, outputDatum: $outputDatum, referenceScriptHash: $referenceScriptHash, destination: $destination, amount: $amount, tokenBundle: $tokenBundle)';
}


}

/// @nodoc
abstract mixin class $ParsedOutputCopyWith<$Res>  {
  factory $ParsedOutputCopyWith(ParsedOutput value, $Res Function(ParsedOutput) _then) = _$ParsedOutputCopyWithImpl;
@useResult
$Res call({
 ParsedOutputDestination destination, BigInt amount, List<ParsedAssetGroup> tokenBundle
});


$ParsedOutputDestinationCopyWith<$Res> get destination;

}
/// @nodoc
class _$ParsedOutputCopyWithImpl<$Res>
    implements $ParsedOutputCopyWith<$Res> {
  _$ParsedOutputCopyWithImpl(this._self, this._then);

  final ParsedOutput _self;
  final $Res Function(ParsedOutput) _then;

/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? destination = null,Object? amount = null,Object? tokenBundle = null,}) {
  return _then(_self.copyWith(
destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as ParsedOutputDestination,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,tokenBundle: null == tokenBundle ? _self.tokenBundle : tokenBundle // ignore: cast_nullable_to_non_nullable
as List<ParsedAssetGroup>,
  ));
}
/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedOutputDestinationCopyWith<$Res> get destination {
  
  return $ParsedOutputDestinationCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}


/// @nodoc


class ParsedOutputAlonzo extends ParsedOutput {
   ParsedOutputAlonzo({required this.destination, required this.amount, final  List<ParsedAssetGroup> tokenBundle = const [], this.datumHashHex}): _tokenBundle = tokenBundle,super._();
  

@override final  ParsedOutputDestination destination;
@override final  BigInt amount;
 final  List<ParsedAssetGroup> _tokenBundle;
@override@JsonKey() List<ParsedAssetGroup> get tokenBundle {
  if (_tokenBundle is EqualUnmodifiableListView) return _tokenBundle;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tokenBundle);
}

 final  ParsedDatumHash? datumHashHex;

/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedOutputAlonzoCopyWith<ParsedOutputAlonzo> get copyWith => _$ParsedOutputAlonzoCopyWithImpl<ParsedOutputAlonzo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedOutputAlonzo&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other._tokenBundle, _tokenBundle)&&const DeepCollectionEquality().equals(other.datumHashHex, datumHashHex));
}


@override
int get hashCode => Object.hash(runtimeType,destination,amount,const DeepCollectionEquality().hash(_tokenBundle),const DeepCollectionEquality().hash(datumHashHex));

@override
String toString() {
  return 'ParsedOutput.alonzo(destination: $destination, amount: $amount, tokenBundle: $tokenBundle, datumHashHex: $datumHashHex)';
}


}

/// @nodoc
abstract mixin class $ParsedOutputAlonzoCopyWith<$Res> implements $ParsedOutputCopyWith<$Res> {
  factory $ParsedOutputAlonzoCopyWith(ParsedOutputAlonzo value, $Res Function(ParsedOutputAlonzo) _then) = _$ParsedOutputAlonzoCopyWithImpl;
@override @useResult
$Res call({
 ParsedOutputDestination destination, BigInt amount, List<ParsedAssetGroup> tokenBundle, ParsedDatumHash? datumHashHex
});


@override $ParsedOutputDestinationCopyWith<$Res> get destination;

}
/// @nodoc
class _$ParsedOutputAlonzoCopyWithImpl<$Res>
    implements $ParsedOutputAlonzoCopyWith<$Res> {
  _$ParsedOutputAlonzoCopyWithImpl(this._self, this._then);

  final ParsedOutputAlonzo _self;
  final $Res Function(ParsedOutputAlonzo) _then;

/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? destination = null,Object? amount = null,Object? tokenBundle = null,Object? datumHashHex = freezed,}) {
  return _then(ParsedOutputAlonzo(
destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as ParsedOutputDestination,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,tokenBundle: null == tokenBundle ? _self._tokenBundle : tokenBundle // ignore: cast_nullable_to_non_nullable
as List<ParsedAssetGroup>,datumHashHex: freezed == datumHashHex ? _self.datumHashHex : datumHashHex // ignore: cast_nullable_to_non_nullable
as ParsedDatumHash?,
  ));
}

/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedOutputDestinationCopyWith<$Res> get destination {
  
  return $ParsedOutputDestinationCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}

/// @nodoc


class ParsedOutputBabbage extends ParsedOutput {
   ParsedOutputBabbage({required this.destination, required this.amount, final  List<ParsedAssetGroup> tokenBundle = const [], this.datum, this.referenceScriptHex}): _tokenBundle = tokenBundle,super._();
  

@override final  ParsedOutputDestination destination;
@override final  BigInt amount;
 final  List<ParsedAssetGroup> _tokenBundle;
@override@JsonKey() List<ParsedAssetGroup> get tokenBundle {
  if (_tokenBundle is EqualUnmodifiableListView) return _tokenBundle;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tokenBundle);
}

 final  ParsedDatum? datum;
 final  String? referenceScriptHex;

/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedOutputBabbageCopyWith<ParsedOutputBabbage> get copyWith => _$ParsedOutputBabbageCopyWithImpl<ParsedOutputBabbage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedOutputBabbage&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other._tokenBundle, _tokenBundle)&&(identical(other.datum, datum) || other.datum == datum)&&(identical(other.referenceScriptHex, referenceScriptHex) || other.referenceScriptHex == referenceScriptHex));
}


@override
int get hashCode => Object.hash(runtimeType,destination,amount,const DeepCollectionEquality().hash(_tokenBundle),datum,referenceScriptHex);

@override
String toString() {
  return 'ParsedOutput.babbage(destination: $destination, amount: $amount, tokenBundle: $tokenBundle, datum: $datum, referenceScriptHex: $referenceScriptHex)';
}


}

/// @nodoc
abstract mixin class $ParsedOutputBabbageCopyWith<$Res> implements $ParsedOutputCopyWith<$Res> {
  factory $ParsedOutputBabbageCopyWith(ParsedOutputBabbage value, $Res Function(ParsedOutputBabbage) _then) = _$ParsedOutputBabbageCopyWithImpl;
@override @useResult
$Res call({
 ParsedOutputDestination destination, BigInt amount, List<ParsedAssetGroup> tokenBundle, ParsedDatum? datum, String? referenceScriptHex
});


@override $ParsedOutputDestinationCopyWith<$Res> get destination;$ParsedDatumCopyWith<$Res>? get datum;

}
/// @nodoc
class _$ParsedOutputBabbageCopyWithImpl<$Res>
    implements $ParsedOutputBabbageCopyWith<$Res> {
  _$ParsedOutputBabbageCopyWithImpl(this._self, this._then);

  final ParsedOutputBabbage _self;
  final $Res Function(ParsedOutputBabbage) _then;

/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? destination = null,Object? amount = null,Object? tokenBundle = null,Object? datum = freezed,Object? referenceScriptHex = freezed,}) {
  return _then(ParsedOutputBabbage(
destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as ParsedOutputDestination,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as BigInt,tokenBundle: null == tokenBundle ? _self._tokenBundle : tokenBundle // ignore: cast_nullable_to_non_nullable
as List<ParsedAssetGroup>,datum: freezed == datum ? _self.datum : datum // ignore: cast_nullable_to_non_nullable
as ParsedDatum?,referenceScriptHex: freezed == referenceScriptHex ? _self.referenceScriptHex : referenceScriptHex // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedOutputDestinationCopyWith<$Res> get destination {
  
  return $ParsedOutputDestinationCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of ParsedOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedDatumCopyWith<$Res>? get datum {
    if (_self.datum == null) {
    return null;
  }

  return $ParsedDatumCopyWith<$Res>(_self.datum!, (value) {
    return _then(_self.copyWith(datum: value));
  });
}
}

// dart format on
