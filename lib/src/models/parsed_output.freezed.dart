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
  TxOutputFormat get format => throw _privateConstructorUsedError;
  BigInt get amount => throw _privateConstructorUsedError;
  List<ParsedAssetGroup> get tokenBundle => throw _privateConstructorUsedError;
  ParsedOutputDestination get destination => throw _privateConstructorUsedError;
  ParsedDatum? get datum => throw _privateConstructorUsedError;
  String? get referenceScriptHex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            TxOutputFormat format,
            BigInt amount,
            List<ParsedAssetGroup> tokenBundle,
            ParsedOutputDestination destination,
            ParsedDatum? datum,
            String? referenceScriptHex)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            TxOutputFormat format,
            BigInt amount,
            List<ParsedAssetGroup> tokenBundle,
            ParsedOutputDestination destination,
            ParsedDatum? datum,
            String? referenceScriptHex)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            TxOutputFormat format,
            BigInt amount,
            List<ParsedAssetGroup> tokenBundle,
            ParsedOutputDestination destination,
            ParsedDatum? datum,
            String? referenceScriptHex)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
      {TxOutputFormat format,
      BigInt amount,
      List<ParsedAssetGroup> tokenBundle,
      ParsedOutputDestination destination,
      ParsedDatum? datum,
      String? referenceScriptHex});

  $ParsedOutputDestinationCopyWith<$Res> get destination;
  $ParsedDatumCopyWith<$Res>? get datum;
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
    Object? format = null,
    Object? amount = null,
    Object? tokenBundle = null,
    Object? destination = null,
    Object? datum = freezed,
    Object? referenceScriptHex = freezed,
  }) {
    return _then(_value.copyWith(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as TxOutputFormat,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenBundle: null == tokenBundle
          ? _value.tokenBundle
          : tokenBundle // ignore: cast_nullable_to_non_nullable
              as List<ParsedAssetGroup>,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as ParsedOutputDestination,
      datum: freezed == datum
          ? _value.datum
          : datum // ignore: cast_nullable_to_non_nullable
              as ParsedDatum?,
      referenceScriptHex: freezed == referenceScriptHex
          ? _value.referenceScriptHex
          : referenceScriptHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedOutputDestinationCopyWith<$Res> get destination {
    return $ParsedOutputDestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedDatumCopyWith<$Res>? get datum {
    if (_value.datum == null) {
      return null;
    }

    return $ParsedDatumCopyWith<$Res>(_value.datum!, (value) {
      return _then(_value.copyWith(datum: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedOutputImplCopyWith<$Res>
    implements $ParsedOutputCopyWith<$Res> {
  factory _$$ParsedOutputImplCopyWith(
          _$ParsedOutputImpl value, $Res Function(_$ParsedOutputImpl) then) =
      __$$ParsedOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TxOutputFormat format,
      BigInt amount,
      List<ParsedAssetGroup> tokenBundle,
      ParsedOutputDestination destination,
      ParsedDatum? datum,
      String? referenceScriptHex});

  @override
  $ParsedOutputDestinationCopyWith<$Res> get destination;
  @override
  $ParsedDatumCopyWith<$Res>? get datum;
}

/// @nodoc
class __$$ParsedOutputImplCopyWithImpl<$Res>
    extends _$ParsedOutputCopyWithImpl<$Res, _$ParsedOutputImpl>
    implements _$$ParsedOutputImplCopyWith<$Res> {
  __$$ParsedOutputImplCopyWithImpl(
      _$ParsedOutputImpl _value, $Res Function(_$ParsedOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? amount = null,
    Object? tokenBundle = null,
    Object? destination = null,
    Object? datum = freezed,
    Object? referenceScriptHex = freezed,
  }) {
    return _then(_$ParsedOutputImpl(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as TxOutputFormat,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenBundle: null == tokenBundle
          ? _value._tokenBundle
          : tokenBundle // ignore: cast_nullable_to_non_nullable
              as List<ParsedAssetGroup>,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as ParsedOutputDestination,
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
}

/// @nodoc

class _$ParsedOutputImpl extends _ParsedOutput {
  _$ParsedOutputImpl(
      {required this.format,
      required this.amount,
      required final List<ParsedAssetGroup> tokenBundle,
      required this.destination,
      this.datum,
      this.referenceScriptHex})
      : _tokenBundle = tokenBundle,
        super._();

  @override
  final TxOutputFormat format;
  @override
  final BigInt amount;
  final List<ParsedAssetGroup> _tokenBundle;
  @override
  List<ParsedAssetGroup> get tokenBundle {
    if (_tokenBundle is EqualUnmodifiableListView) return _tokenBundle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokenBundle);
  }

  @override
  final ParsedOutputDestination destination;
  @override
  final ParsedDatum? datum;
  @override
  final String? referenceScriptHex;

  @override
  String toString() {
    return 'ParsedOutput(format: $format, amount: $amount, tokenBundle: $tokenBundle, destination: $destination, datum: $datum, referenceScriptHex: $referenceScriptHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedOutputImpl &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._tokenBundle, _tokenBundle) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.datum, datum) || other.datum == datum) &&
            (identical(other.referenceScriptHex, referenceScriptHex) ||
                other.referenceScriptHex == referenceScriptHex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      format,
      amount,
      const DeepCollectionEquality().hash(_tokenBundle),
      destination,
      datum,
      referenceScriptHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedOutputImplCopyWith<_$ParsedOutputImpl> get copyWith =>
      __$$ParsedOutputImplCopyWithImpl<_$ParsedOutputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            TxOutputFormat format,
            BigInt amount,
            List<ParsedAssetGroup> tokenBundle,
            ParsedOutputDestination destination,
            ParsedDatum? datum,
            String? referenceScriptHex)
        $default,
  ) {
    return $default(
        format, amount, tokenBundle, destination, datum, referenceScriptHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            TxOutputFormat format,
            BigInt amount,
            List<ParsedAssetGroup> tokenBundle,
            ParsedOutputDestination destination,
            ParsedDatum? datum,
            String? referenceScriptHex)?
        $default,
  ) {
    return $default?.call(
        format, amount, tokenBundle, destination, datum, referenceScriptHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            TxOutputFormat format,
            BigInt amount,
            List<ParsedAssetGroup> tokenBundle,
            ParsedOutputDestination destination,
            ParsedDatum? datum,
            String? referenceScriptHex)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          format, amount, tokenBundle, destination, datum, referenceScriptHex);
    }
    return orElse();
  }
}

abstract class _ParsedOutput extends ParsedOutput {
  factory _ParsedOutput(
      {required final TxOutputFormat format,
      required final BigInt amount,
      required final List<ParsedAssetGroup> tokenBundle,
      required final ParsedOutputDestination destination,
      final ParsedDatum? datum,
      final String? referenceScriptHex}) = _$ParsedOutputImpl;
  _ParsedOutput._() : super._();

  @override
  TxOutputFormat get format;
  @override
  BigInt get amount;
  @override
  List<ParsedAssetGroup> get tokenBundle;
  @override
  ParsedOutputDestination get destination;
  @override
  ParsedDatum? get datum;
  @override
  String? get referenceScriptHex;
  @override
  @JsonKey(ignore: true)
  _$$ParsedOutputImplCopyWith<_$ParsedOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
