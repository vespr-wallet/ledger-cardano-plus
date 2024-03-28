// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignTransactionRequest {
  Transaction get tx => throw _privateConstructorUsedError;
  TransactionSigningModes get signingMode => throw _privateConstructorUsedError;
  List<List<int>>? get additionalWitnessPaths =>
      throw _privateConstructorUsedError;
  ParsedTransactionOptions? get options => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Transaction tx,
            TransactionSigningModes signingMode,
            List<List<int>>? additionalWitnessPaths,
            ParsedTransactionOptions? options)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Transaction tx,
            TransactionSigningModes signingMode,
            List<List<int>>? additionalWitnessPaths,
            ParsedTransactionOptions? options)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Transaction tx,
            TransactionSigningModes signingMode,
            List<List<int>>? additionalWitnessPaths,
            ParsedTransactionOptions? options)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignTransactionRequestCopyWith<SignTransactionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignTransactionRequestCopyWith<$Res> {
  factory $SignTransactionRequestCopyWith(SignTransactionRequest value,
          $Res Function(SignTransactionRequest) then) =
      _$SignTransactionRequestCopyWithImpl<$Res, SignTransactionRequest>;
  @useResult
  $Res call(
      {Transaction tx,
      TransactionSigningModes signingMode,
      List<List<int>>? additionalWitnessPaths,
      ParsedTransactionOptions? options});

  $TransactionCopyWith<$Res> get tx;
  $TransactionSigningModesCopyWith<$Res> get signingMode;
  $ParsedTransactionOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class _$SignTransactionRequestCopyWithImpl<$Res,
        $Val extends SignTransactionRequest>
    implements $SignTransactionRequestCopyWith<$Res> {
  _$SignTransactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
    Object? signingMode = null,
    Object? additionalWitnessPaths = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as Transaction,
      signingMode: null == signingMode
          ? _value.signingMode
          : signingMode // ignore: cast_nullable_to_non_nullable
              as TransactionSigningModes,
      additionalWitnessPaths: freezed == additionalWitnessPaths
          ? _value.additionalWitnessPaths
          : additionalWitnessPaths // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ParsedTransactionOptions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get tx {
    return $TransactionCopyWith<$Res>(_value.tx, (value) {
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
  $ParsedTransactionOptionsCopyWith<$Res>? get options {
    if (_value.options == null) {
      return null;
    }

    return $ParsedTransactionOptionsCopyWith<$Res>(_value.options!, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignTransactionRequestImplCopyWith<$Res>
    implements $SignTransactionRequestCopyWith<$Res> {
  factory _$$SignTransactionRequestImplCopyWith(
          _$SignTransactionRequestImpl value,
          $Res Function(_$SignTransactionRequestImpl) then) =
      __$$SignTransactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Transaction tx,
      TransactionSigningModes signingMode,
      List<List<int>>? additionalWitnessPaths,
      ParsedTransactionOptions? options});

  @override
  $TransactionCopyWith<$Res> get tx;
  @override
  $TransactionSigningModesCopyWith<$Res> get signingMode;
  @override
  $ParsedTransactionOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class __$$SignTransactionRequestImplCopyWithImpl<$Res>
    extends _$SignTransactionRequestCopyWithImpl<$Res,
        _$SignTransactionRequestImpl>
    implements _$$SignTransactionRequestImplCopyWith<$Res> {
  __$$SignTransactionRequestImplCopyWithImpl(
      _$SignTransactionRequestImpl _value,
      $Res Function(_$SignTransactionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
    Object? signingMode = null,
    Object? additionalWitnessPaths = freezed,
    Object? options = freezed,
  }) {
    return _then(_$SignTransactionRequestImpl(
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as Transaction,
      signingMode: null == signingMode
          ? _value.signingMode
          : signingMode // ignore: cast_nullable_to_non_nullable
              as TransactionSigningModes,
      additionalWitnessPaths: freezed == additionalWitnessPaths
          ? _value._additionalWitnessPaths
          : additionalWitnessPaths // ignore: cast_nullable_to_non_nullable
              as List<List<int>>?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ParsedTransactionOptions?,
    ));
  }
}

/// @nodoc

class _$SignTransactionRequestImpl extends _SignTransactionRequest {
  _$SignTransactionRequestImpl(
      {required this.tx,
      required this.signingMode,
      final List<List<int>>? additionalWitnessPaths,
      this.options})
      : _additionalWitnessPaths = additionalWitnessPaths,
        super._();

  @override
  final Transaction tx;
  @override
  final TransactionSigningModes signingMode;
  final List<List<int>>? _additionalWitnessPaths;
  @override
  List<List<int>>? get additionalWitnessPaths {
    final value = _additionalWitnessPaths;
    if (value == null) return null;
    if (_additionalWitnessPaths is EqualUnmodifiableListView)
      return _additionalWitnessPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ParsedTransactionOptions? options;

  @override
  String toString() {
    return 'SignTransactionRequest(tx: $tx, signingMode: $signingMode, additionalWitnessPaths: $additionalWitnessPaths, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignTransactionRequestImpl &&
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
  _$$SignTransactionRequestImplCopyWith<_$SignTransactionRequestImpl>
      get copyWith => __$$SignTransactionRequestImplCopyWithImpl<
          _$SignTransactionRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Transaction tx,
            TransactionSigningModes signingMode,
            List<List<int>>? additionalWitnessPaths,
            ParsedTransactionOptions? options)
        $default,
  ) {
    return $default(tx, signingMode, additionalWitnessPaths, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            Transaction tx,
            TransactionSigningModes signingMode,
            List<List<int>>? additionalWitnessPaths,
            ParsedTransactionOptions? options)?
        $default,
  ) {
    return $default?.call(tx, signingMode, additionalWitnessPaths, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Transaction tx,
            TransactionSigningModes signingMode,
            List<List<int>>? additionalWitnessPaths,
            ParsedTransactionOptions? options)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tx, signingMode, additionalWitnessPaths, options);
    }
    return orElse();
  }
}

abstract class _SignTransactionRequest extends SignTransactionRequest {
  factory _SignTransactionRequest(
      {required final Transaction tx,
      required final TransactionSigningModes signingMode,
      final List<List<int>>? additionalWitnessPaths,
      final ParsedTransactionOptions? options}) = _$SignTransactionRequestImpl;
  _SignTransactionRequest._() : super._();

  @override
  Transaction get tx;
  @override
  TransactionSigningModes get signingMode;
  @override
  List<List<int>>? get additionalWitnessPaths;
  @override
  ParsedTransactionOptions? get options;
  @override
  @JsonKey(ignore: true)
  _$$SignTransactionRequestImplCopyWith<_$SignTransactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
