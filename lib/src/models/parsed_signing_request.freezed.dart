// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_signing_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedSigningRequest {
  ParsedTransaction get tx => throw _privateConstructorUsedError;
  TransactionSigningModes get signingMode => throw _privateConstructorUsedError;
  List<List<int>> get additionalWitnessPaths =>
      throw _privateConstructorUsedError;
  ParsedTransactionOptions get options => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ParsedTransaction tx,
            TransactionSigningModes signingMode,
            List<List<int>> additionalWitnessPaths,
            ParsedTransactionOptions options)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ParsedTransaction tx,
            TransactionSigningModes signingMode,
            List<List<int>> additionalWitnessPaths,
            ParsedTransactionOptions options)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ParsedTransaction tx,
            TransactionSigningModes signingMode,
            List<List<int>> additionalWitnessPaths,
            ParsedTransactionOptions options)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedSigningRequestCopyWith<ParsedSigningRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedSigningRequestCopyWith<$Res> {
  factory $ParsedSigningRequestCopyWith(ParsedSigningRequest value,
          $Res Function(ParsedSigningRequest) then) =
      _$ParsedSigningRequestCopyWithImpl<$Res, ParsedSigningRequest>;
  @useResult
  $Res call(
      {ParsedTransaction tx,
      TransactionSigningModes signingMode,
      List<List<int>> additionalWitnessPaths,
      ParsedTransactionOptions options});

  $ParsedTransactionCopyWith<$Res> get tx;
  $TransactionSigningModesCopyWith<$Res> get signingMode;
  $ParsedTransactionOptionsCopyWith<$Res> get options;
}

/// @nodoc
class _$ParsedSigningRequestCopyWithImpl<$Res,
        $Val extends ParsedSigningRequest>
    implements $ParsedSigningRequestCopyWith<$Res> {
  _$ParsedSigningRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
    Object? signingMode = null,
    Object? additionalWitnessPaths = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as ParsedTransaction,
      signingMode: null == signingMode
          ? _value.signingMode
          : signingMode // ignore: cast_nullable_to_non_nullable
              as TransactionSigningModes,
      additionalWitnessPaths: null == additionalWitnessPaths
          ? _value.additionalWitnessPaths
          : additionalWitnessPaths // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ParsedTransactionOptions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedTransactionCopyWith<$Res> get tx {
    return $ParsedTransactionCopyWith<$Res>(_value.tx, (value) {
      return _then(_value.copyWith(tx: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionSigningModesCopyWith<$Res> get signingMode {
    return $TransactionSigningModesCopyWith<$Res>(_value.signingMode, (value) {
      return _then(_value.copyWith(signingMode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedTransactionOptionsCopyWith<$Res> get options {
    return $ParsedTransactionOptionsCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedSigningRequestImplCopyWith<$Res>
    implements $ParsedSigningRequestCopyWith<$Res> {
  factory _$$ParsedSigningRequestImplCopyWith(_$ParsedSigningRequestImpl value,
          $Res Function(_$ParsedSigningRequestImpl) then) =
      __$$ParsedSigningRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ParsedTransaction tx,
      TransactionSigningModes signingMode,
      List<List<int>> additionalWitnessPaths,
      ParsedTransactionOptions options});

  @override
  $ParsedTransactionCopyWith<$Res> get tx;
  @override
  $TransactionSigningModesCopyWith<$Res> get signingMode;
  @override
  $ParsedTransactionOptionsCopyWith<$Res> get options;
}

/// @nodoc
class __$$ParsedSigningRequestImplCopyWithImpl<$Res>
    extends _$ParsedSigningRequestCopyWithImpl<$Res, _$ParsedSigningRequestImpl>
    implements _$$ParsedSigningRequestImplCopyWith<$Res> {
  __$$ParsedSigningRequestImplCopyWithImpl(_$ParsedSigningRequestImpl _value,
      $Res Function(_$ParsedSigningRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
    Object? signingMode = null,
    Object? additionalWitnessPaths = null,
    Object? options = null,
  }) {
    return _then(_$ParsedSigningRequestImpl(
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as ParsedTransaction,
      signingMode: null == signingMode
          ? _value.signingMode
          : signingMode // ignore: cast_nullable_to_non_nullable
              as TransactionSigningModes,
      additionalWitnessPaths: null == additionalWitnessPaths
          ? _value._additionalWitnessPaths
          : additionalWitnessPaths // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ParsedTransactionOptions,
    ));
  }
}

/// @nodoc

class _$ParsedSigningRequestImpl extends _ParsedSigningRequest {
  _$ParsedSigningRequestImpl(
      {required this.tx,
      required this.signingMode,
      required final List<List<int>> additionalWitnessPaths,
      required this.options})
      : _additionalWitnessPaths = additionalWitnessPaths,
        super._();

  @override
  final ParsedTransaction tx;
  @override
  final TransactionSigningModes signingMode;
  final List<List<int>> _additionalWitnessPaths;
  @override
  List<List<int>> get additionalWitnessPaths {
    if (_additionalWitnessPaths is EqualUnmodifiableListView)
      return _additionalWitnessPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalWitnessPaths);
  }

  @override
  final ParsedTransactionOptions options;

  @override
  String toString() {
    return 'ParsedSigningRequest(tx: $tx, signingMode: $signingMode, additionalWitnessPaths: $additionalWitnessPaths, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSigningRequestImpl &&
            (identical(other.tx, tx) || other.tx == tx) &&
            (identical(other.signingMode, signingMode) ||
                other.signingMode == signingMode) &&
            const DeepCollectionEquality().equals(
                other._additionalWitnessPaths, _additionalWitnessPaths) &&
            (identical(other.options, options) || other.options == options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tx, signingMode,
      const DeepCollectionEquality().hash(_additionalWitnessPaths), options);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSigningRequestImplCopyWith<_$ParsedSigningRequestImpl>
      get copyWith =>
          __$$ParsedSigningRequestImplCopyWithImpl<_$ParsedSigningRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ParsedTransaction tx,
            TransactionSigningModes signingMode,
            List<List<int>> additionalWitnessPaths,
            ParsedTransactionOptions options)
        $default,
  ) {
    return $default(tx, signingMode, additionalWitnessPaths, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ParsedTransaction tx,
            TransactionSigningModes signingMode,
            List<List<int>> additionalWitnessPaths,
            ParsedTransactionOptions options)?
        $default,
  ) {
    return $default?.call(tx, signingMode, additionalWitnessPaths, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ParsedTransaction tx,
            TransactionSigningModes signingMode,
            List<List<int>> additionalWitnessPaths,
            ParsedTransactionOptions options)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tx, signingMode, additionalWitnessPaths, options);
    }
    return orElse();
  }
}

abstract class _ParsedSigningRequest extends ParsedSigningRequest {
  factory _ParsedSigningRequest(
          {required final ParsedTransaction tx,
          required final TransactionSigningModes signingMode,
          required final List<List<int>> additionalWitnessPaths,
          required final ParsedTransactionOptions options}) =
      _$ParsedSigningRequestImpl;
  _ParsedSigningRequest._() : super._();

  @override
  ParsedTransaction get tx;
  @override
  TransactionSigningModes get signingMode;
  @override
  List<List<int>> get additionalWitnessPaths;
  @override
  ParsedTransactionOptions get options;
  @override
  @JsonKey(ignore: true)
  _$$ParsedSigningRequestImplCopyWith<_$ParsedSigningRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
