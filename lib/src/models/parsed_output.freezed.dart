// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedOutput {
  ParsedOutputDestination get destination => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;
  List<ParsedAssetGroup> get tokenBundle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedOutputCopyWith<ParsedOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedOutputCopyWith<$Res> {
  factory $ParsedOutputCopyWith(
          ParsedOutput value, $Res Function(ParsedOutput) then) =
      _$ParsedOutputCopyWithImpl<$Res, ParsedOutput>;
  @useResult
  $Res call(
      {ParsedOutputDestination destination,
      BigInt amount,
      List<ParsedAssetGroup> tokenBundle});

  $ParsedOutputDestinationCopyWith<$Res> get destination;
}

/// @nodoc
class _$ParsedOutputCopyWithImpl<$Res, $Val extends ParsedOutput>
    implements $ParsedOutputCopyWith<$Res> {
  _$ParsedOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? tokenBundle = null,
  }) {
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as ParsedOutputDestination,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenBundle: null == tokenBundle
          ? _value.tokenBundle
          : tokenBundle // ignore: cast_nullable_to_non_nullable
              as List<ParsedAssetGroup>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedOutputDestinationCopyWith<$Res> get destination {
    return $ParsedOutputDestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedOutputAlonzoImplCopyWith<$Res>
    implements $ParsedOutputCopyWith<$Res> {
  factory _$$ParsedOutputAlonzoImplCopyWith(_$ParsedOutputAlonzoImpl value,
          $Res Function(_$ParsedOutputAlonzoImpl) then) =
      __$$ParsedOutputAlonzoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ParsedOutputDestination destination,
      BigInt amount,
      List<ParsedAssetGroup> tokenBundle,
      ParsedDatumHash? datumHashHex});

  @override
  $ParsedOutputDestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$ParsedOutputAlonzoImplCopyWithImpl<$Res>
    extends _$ParsedOutputCopyWithImpl<$Res, _$ParsedOutputAlonzoImpl>
    implements _$$ParsedOutputAlonzoImplCopyWith<$Res> {
  __$$ParsedOutputAlonzoImplCopyWithImpl(_$ParsedOutputAlonzoImpl _value,
      $Res Function(_$ParsedOutputAlonzoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? tokenBundle = null,
    Object? datumHashHex = freezed,
  }) {
    return _then(_$ParsedOutputAlonzoImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as ParsedOutputDestination,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenBundle: null == tokenBundle
          ? _value._tokenBundle
          : tokenBundle // ignore: cast_nullable_to_non_nullable
              as List<ParsedAssetGroup>,
      datumHashHex: freezed == datumHashHex
          ? _value.datumHashHex
          : datumHashHex // ignore: cast_nullable_to_non_nullable
              as ParsedDatumHash?,
    ));
  }
}

/// @nodoc

class _$ParsedOutputAlonzoImpl extends ParsedOutputAlonzo {
  _$ParsedOutputAlonzoImpl(
      {required this.destination,
      required this.amount,
      final List<ParsedAssetGroup> tokenBundle = const [],
      this.datumHashHex})
      : _tokenBundle = tokenBundle,
        super._();

  @override
  final ParsedOutputDestination destination;
  @override
  final BigInt amount;
  final List<ParsedAssetGroup> _tokenBundle;
  @override
  @JsonKey()
  List<ParsedAssetGroup> get tokenBundle {
    if (_tokenBundle is EqualUnmodifiableListView) return _tokenBundle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokenBundle);
  }

  @override
  final ParsedDatumHash? datumHashHex;

  @override
  String toString() {
    return 'ParsedOutput.alonzo(destination: $destination, amount: $amount, tokenBundle: $tokenBundle, datumHashHex: $datumHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedOutputAlonzoImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._tokenBundle, _tokenBundle) &&
            const DeepCollectionEquality()
                .equals(other.datumHashHex, datumHashHex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      destination,
      amount,
      const DeepCollectionEquality().hash(_tokenBundle),
      const DeepCollectionEquality().hash(datumHashHex));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedOutputAlonzoImplCopyWith<_$ParsedOutputAlonzoImpl> get copyWith =>
      __$$ParsedOutputAlonzoImplCopyWithImpl<_$ParsedOutputAlonzoImpl>(
          this, _$identity);
}

abstract class ParsedOutputAlonzo extends ParsedOutput {
  factory ParsedOutputAlonzo(
      {required final ParsedOutputDestination destination,
      required final BigInt amount,
      final List<ParsedAssetGroup> tokenBundle,
      final ParsedDatumHash? datumHashHex}) = _$ParsedOutputAlonzoImpl;
  ParsedOutputAlonzo._() : super._();

  @override
  ParsedOutputDestination get destination;
  @override
  BigInt get amount;
  @override
  List<ParsedAssetGroup> get tokenBundle;
  ParsedDatumHash? get datumHashHex;
  @override
  @JsonKey(ignore: true)
  _$$ParsedOutputAlonzoImplCopyWith<_$ParsedOutputAlonzoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedOutputBabbageImplCopyWith<$Res>
    implements $ParsedOutputCopyWith<$Res> {
  factory _$$ParsedOutputBabbageImplCopyWith(_$ParsedOutputBabbageImpl value,
          $Res Function(_$ParsedOutputBabbageImpl) then) =
      __$$ParsedOutputBabbageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ParsedOutputDestination destination,
      BigInt amount,
      List<ParsedAssetGroup> tokenBundle,
      ParsedDatum? datum,
      String? referenceScriptHex});

  @override
  $ParsedOutputDestinationCopyWith<$Res> get destination;
  $ParsedDatumCopyWith<$Res>? get datum;
}

/// @nodoc
class __$$ParsedOutputBabbageImplCopyWithImpl<$Res>
    extends _$ParsedOutputCopyWithImpl<$Res, _$ParsedOutputBabbageImpl>
    implements _$$ParsedOutputBabbageImplCopyWith<$Res> {
  __$$ParsedOutputBabbageImplCopyWithImpl(_$ParsedOutputBabbageImpl _value,
      $Res Function(_$ParsedOutputBabbageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? tokenBundle = null,
    Object? datum = freezed,
    Object? referenceScriptHex = freezed,
  }) {
    return _then(_$ParsedOutputBabbageImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as ParsedOutputDestination,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenBundle: null == tokenBundle
          ? _value._tokenBundle
          : tokenBundle // ignore: cast_nullable_to_non_nullable
              as List<ParsedAssetGroup>,
      datum: freezed == datum
          ? _value.datum
          : datum // ignore: cast_nullable_to_non_nullable
              as ParsedDatum?,
      referenceScriptHex: freezed == referenceScriptHex
          ? _value.referenceScriptHex
          : referenceScriptHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedDatumCopyWith<$Res>? get datum {
    if (_value.datum == null) {
      return null;
    }

    return $ParsedDatumCopyWith<$Res>(_value.datum!, (value) {
      return _then(_value.copyWith(datum: value));
    });
  }
}

/// @nodoc

class _$ParsedOutputBabbageImpl extends ParsedOutputBabbage {
  _$ParsedOutputBabbageImpl(
      {required this.destination,
      required this.amount,
      final List<ParsedAssetGroup> tokenBundle = const [],
      this.datum,
      this.referenceScriptHex})
      : _tokenBundle = tokenBundle,
        super._();

  @override
  final ParsedOutputDestination destination;
  @override
  final BigInt amount;
  final List<ParsedAssetGroup> _tokenBundle;
  @override
  @JsonKey()
  List<ParsedAssetGroup> get tokenBundle {
    if (_tokenBundle is EqualUnmodifiableListView) return _tokenBundle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokenBundle);
  }

  @override
  final ParsedDatum? datum;
  @override
  final String? referenceScriptHex;

  @override
  String toString() {
    return 'ParsedOutput.babbage(destination: $destination, amount: $amount, tokenBundle: $tokenBundle, datum: $datum, referenceScriptHex: $referenceScriptHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedOutputBabbageImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._tokenBundle, _tokenBundle) &&
            (identical(other.datum, datum) || other.datum == datum) &&
            (identical(other.referenceScriptHex, referenceScriptHex) ||
                other.referenceScriptHex == referenceScriptHex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      destination,
      amount,
      const DeepCollectionEquality().hash(_tokenBundle),
      datum,
      referenceScriptHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedOutputBabbageImplCopyWith<_$ParsedOutputBabbageImpl> get copyWith =>
      __$$ParsedOutputBabbageImplCopyWithImpl<_$ParsedOutputBabbageImpl>(
          this, _$identity);
}

abstract class ParsedOutputBabbage extends ParsedOutput {
  factory ParsedOutputBabbage(
      {required final ParsedOutputDestination destination,
      required final BigInt amount,
      final List<ParsedAssetGroup> tokenBundle,
      final ParsedDatum? datum,
      final String? referenceScriptHex}) = _$ParsedOutputBabbageImpl;
  ParsedOutputBabbage._() : super._();

  @override
  ParsedOutputDestination get destination;
  @override
  BigInt get amount;
  @override
  List<ParsedAssetGroup> get tokenBundle;
  ParsedDatum? get datum;
  String? get referenceScriptHex;
  @override
  @JsonKey(ignore: true)
  _$$ParsedOutputBabbageImplCopyWith<_$ParsedOutputBabbageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
