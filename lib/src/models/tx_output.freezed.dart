// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TxOutput {
  TxOutputDestination get destination => throw _privateConstructorUsedError;
  BigInt get amount =>
      throw _privateConstructorUsedError; // Using String to represent bigint_like
  List<AssetGroup>? get tokenBundle => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxOutputDestination destination, BigInt amount,
            List<AssetGroup>? tokenBundle, String? datumHashHex)
        alonzo,
    required TResult Function(
            TxOutputDestination destination,
            BigInt amount,
            List<AssetGroup>? tokenBundle,
            Datum? datum,
            String? referenceScriptHex)
        babbage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxOutputDestination destination, BigInt amount,
            List<AssetGroup>? tokenBundle, String? datumHashHex)?
        alonzo,
    TResult? Function(
            TxOutputDestination destination,
            BigInt amount,
            List<AssetGroup>? tokenBundle,
            Datum? datum,
            String? referenceScriptHex)?
        babbage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxOutputDestination destination, BigInt amount,
            List<AssetGroup>? tokenBundle, String? datumHashHex)?
        alonzo,
    TResult Function(
            TxOutputDestination destination,
            BigInt amount,
            List<AssetGroup>? tokenBundle,
            Datum? datum,
            String? referenceScriptHex)?
        babbage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxOutputCopyWith<TxOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxOutputCopyWith<$Res> {
  factory $TxOutputCopyWith(TxOutput value, $Res Function(TxOutput) then) =
      _$TxOutputCopyWithImpl<$Res, TxOutput>;
  @useResult
  $Res call(
      {TxOutputDestination destination,
      BigInt amount,
      List<AssetGroup>? tokenBundle});

  $TxOutputDestinationCopyWith<$Res> get destination;
}

/// @nodoc
class _$TxOutputCopyWithImpl<$Res, $Val extends TxOutput>
    implements $TxOutputCopyWith<$Res> {
  _$TxOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? tokenBundle = freezed,
  }) {
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as TxOutputDestination,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenBundle: freezed == tokenBundle
          ? _value.tokenBundle
          : tokenBundle // ignore: cast_nullable_to_non_nullable
              as List<AssetGroup>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TxOutputDestinationCopyWith<$Res> get destination {
    return $TxOutputDestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TxOutputAlonzoImplCopyWith<$Res>
    implements $TxOutputCopyWith<$Res> {
  factory _$$TxOutputAlonzoImplCopyWith(_$TxOutputAlonzoImpl value,
          $Res Function(_$TxOutputAlonzoImpl) then) =
      __$$TxOutputAlonzoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TxOutputDestination destination,
      BigInt amount,
      List<AssetGroup>? tokenBundle,
      String? datumHashHex});

  @override
  $TxOutputDestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$TxOutputAlonzoImplCopyWithImpl<$Res>
    extends _$TxOutputCopyWithImpl<$Res, _$TxOutputAlonzoImpl>
    implements _$$TxOutputAlonzoImplCopyWith<$Res> {
  __$$TxOutputAlonzoImplCopyWithImpl(
      _$TxOutputAlonzoImpl _value, $Res Function(_$TxOutputAlonzoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? tokenBundle = freezed,
    Object? datumHashHex = freezed,
  }) {
    return _then(_$TxOutputAlonzoImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as TxOutputDestination,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenBundle: freezed == tokenBundle
          ? _value._tokenBundle
          : tokenBundle // ignore: cast_nullable_to_non_nullable
              as List<AssetGroup>?,
      datumHashHex: freezed == datumHashHex
          ? _value.datumHashHex
          : datumHashHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TxOutputAlonzoImpl extends TxOutputAlonzo {
  _$TxOutputAlonzoImpl(
      {required this.destination,
      required this.amount,
      final List<AssetGroup>? tokenBundle,
      this.datumHashHex = null})
      : _tokenBundle = tokenBundle,
        super._();

  @override
  final TxOutputDestination destination;
  @override
  final BigInt amount;
// Using String to represent bigint_like
  final List<AssetGroup>? _tokenBundle;
// Using String to represent bigint_like
  @override
  List<AssetGroup>? get tokenBundle {
    final value = _tokenBundle;
    if (value == null) return null;
    if (_tokenBundle is EqualUnmodifiableListView) return _tokenBundle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? datumHashHex;

  @override
  String toString() {
    return 'TxOutput.alonzo(destination: $destination, amount: $amount, tokenBundle: $tokenBundle, datumHashHex: $datumHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxOutputAlonzoImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._tokenBundle, _tokenBundle) &&
            (identical(other.datumHashHex, datumHashHex) ||
                other.datumHashHex == datumHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination, amount,
      const DeepCollectionEquality().hash(_tokenBundle), datumHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxOutputAlonzoImplCopyWith<_$TxOutputAlonzoImpl> get copyWith =>
      __$$TxOutputAlonzoImplCopyWithImpl<_$TxOutputAlonzoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxOutputDestination destination, BigInt amount,
            List<AssetGroup>? tokenBundle, String? datumHashHex)
        alonzo,
    required TResult Function(
            TxOutputDestination destination,
            BigInt amount,
            List<AssetGroup>? tokenBundle,
            Datum? datum,
            String? referenceScriptHex)
        babbage,
  }) {
    return alonzo(destination, amount, tokenBundle, datumHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxOutputDestination destination, BigInt amount,
            List<AssetGroup>? tokenBundle, String? datumHashHex)?
        alonzo,
    TResult? Function(
            TxOutputDestination destination,
            BigInt amount,
            List<AssetGroup>? tokenBundle,
            Datum? datum,
            String? referenceScriptHex)?
        babbage,
  }) {
    return alonzo?.call(destination, amount, tokenBundle, datumHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxOutputDestination destination, BigInt amount,
            List<AssetGroup>? tokenBundle, String? datumHashHex)?
        alonzo,
    TResult Function(
            TxOutputDestination destination,
            BigInt amount,
            List<AssetGroup>? tokenBundle,
            Datum? datum,
            String? referenceScriptHex)?
        babbage,
    required TResult orElse(),
  }) {
    if (alonzo != null) {
      return alonzo(destination, amount, tokenBundle, datumHashHex);
    }
    return orElse();
  }
}

abstract class TxOutputAlonzo extends TxOutput {
  factory TxOutputAlonzo(
      {required final TxOutputDestination destination,
      required final BigInt amount,
      final List<AssetGroup>? tokenBundle,
      final String? datumHashHex}) = _$TxOutputAlonzoImpl;
  TxOutputAlonzo._() : super._();

  @override
  TxOutputDestination get destination;
  @override
  BigInt get amount;
  @override // Using String to represent bigint_like
  List<AssetGroup>? get tokenBundle;
  String? get datumHashHex;
  @override
  @JsonKey(ignore: true)
  _$$TxOutputAlonzoImplCopyWith<_$TxOutputAlonzoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TxOutputBabbageImplCopyWith<$Res>
    implements $TxOutputCopyWith<$Res> {
  factory _$$TxOutputBabbageImplCopyWith(_$TxOutputBabbageImpl value,
          $Res Function(_$TxOutputBabbageImpl) then) =
      __$$TxOutputBabbageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TxOutputDestination destination,
      BigInt amount,
      List<AssetGroup>? tokenBundle,
      Datum? datum,
      String? referenceScriptHex});

  @override
  $TxOutputDestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$TxOutputBabbageImplCopyWithImpl<$Res>
    extends _$TxOutputCopyWithImpl<$Res, _$TxOutputBabbageImpl>
    implements _$$TxOutputBabbageImplCopyWith<$Res> {
  __$$TxOutputBabbageImplCopyWithImpl(
      _$TxOutputBabbageImpl _value, $Res Function(_$TxOutputBabbageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? tokenBundle = freezed,
    Object? datum = freezed,
    Object? referenceScriptHex = freezed,
  }) {
    return _then(_$TxOutputBabbageImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as TxOutputDestination,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenBundle: freezed == tokenBundle
          ? _value._tokenBundle
          : tokenBundle // ignore: cast_nullable_to_non_nullable
              as List<AssetGroup>?,
      datum: freezed == datum
          ? _value.datum
          : datum // ignore: cast_nullable_to_non_nullable
              as Datum?,
      referenceScriptHex: freezed == referenceScriptHex
          ? _value.referenceScriptHex
          : referenceScriptHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TxOutputBabbageImpl extends TxOutputBabbage {
  _$TxOutputBabbageImpl(
      {required this.destination,
      required this.amount,
      final List<AssetGroup>? tokenBundle,
      this.datum,
      this.referenceScriptHex = null})
      : _tokenBundle = tokenBundle,
        super._();

  @override
  final TxOutputDestination destination;
  @override
  final BigInt amount;
// Using String to represent bigint_like
  final List<AssetGroup>? _tokenBundle;
// Using String to represent bigint_like
  @override
  List<AssetGroup>? get tokenBundle {
    final value = _tokenBundle;
    if (value == null) return null;
    if (_tokenBundle is EqualUnmodifiableListView) return _tokenBundle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Datum? datum;
  @override
  @JsonKey()
  final String? referenceScriptHex;

  @override
  String toString() {
    return 'TxOutput.babbage(destination: $destination, amount: $amount, tokenBundle: $tokenBundle, datum: $datum, referenceScriptHex: $referenceScriptHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxOutputBabbageImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._tokenBundle, _tokenBundle) &&
            const DeepCollectionEquality().equals(other.datum, datum) &&
            (identical(other.referenceScriptHex, referenceScriptHex) ||
                other.referenceScriptHex == referenceScriptHex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      destination,
      amount,
      const DeepCollectionEquality().hash(_tokenBundle),
      const DeepCollectionEquality().hash(datum),
      referenceScriptHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxOutputBabbageImplCopyWith<_$TxOutputBabbageImpl> get copyWith =>
      __$$TxOutputBabbageImplCopyWithImpl<_$TxOutputBabbageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxOutputDestination destination, BigInt amount,
            List<AssetGroup>? tokenBundle, String? datumHashHex)
        alonzo,
    required TResult Function(
            TxOutputDestination destination,
            BigInt amount,
            List<AssetGroup>? tokenBundle,
            Datum? datum,
            String? referenceScriptHex)
        babbage,
  }) {
    return babbage(destination, amount, tokenBundle, datum, referenceScriptHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxOutputDestination destination, BigInt amount,
            List<AssetGroup>? tokenBundle, String? datumHashHex)?
        alonzo,
    TResult? Function(
            TxOutputDestination destination,
            BigInt amount,
            List<AssetGroup>? tokenBundle,
            Datum? datum,
            String? referenceScriptHex)?
        babbage,
  }) {
    return babbage?.call(
        destination, amount, tokenBundle, datum, referenceScriptHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxOutputDestination destination, BigInt amount,
            List<AssetGroup>? tokenBundle, String? datumHashHex)?
        alonzo,
    TResult Function(
            TxOutputDestination destination,
            BigInt amount,
            List<AssetGroup>? tokenBundle,
            Datum? datum,
            String? referenceScriptHex)?
        babbage,
    required TResult orElse(),
  }) {
    if (babbage != null) {
      return babbage(
          destination, amount, tokenBundle, datum, referenceScriptHex);
    }
    return orElse();
  }
}

abstract class TxOutputBabbage extends TxOutput {
  factory TxOutputBabbage(
      {required final TxOutputDestination destination,
      required final BigInt amount,
      final List<AssetGroup>? tokenBundle,
      final Datum? datum,
      final String? referenceScriptHex}) = _$TxOutputBabbageImpl;
  TxOutputBabbage._() : super._();

  @override
  TxOutputDestination get destination;
  @override
  BigInt get amount;
  @override // Using String to represent bigint_like
  List<AssetGroup>? get tokenBundle;
  Datum? get datum;
  String? get referenceScriptHex;
  @override
  @JsonKey(ignore: true)
  _$$TxOutputBabbageImplCopyWith<_$TxOutputBabbageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
