// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TxInput {
  String get txHashHex => throw _privateConstructorUsedError;
  int get outputIndex => throw _privateConstructorUsedError;
  List<int>? get path => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String txHashHex, int outputIndex, List<int>? path)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String txHashHex, int outputIndex, List<int>? path)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String txHashHex, int outputIndex, List<int>? path)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxInputCopyWith<TxInput> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxInputCopyWith<$Res> {
  factory $TxInputCopyWith(TxInput value, $Res Function(TxInput) then) =
      _$TxInputCopyWithImpl<$Res, TxInput>;
  @useResult
  $Res call({String txHashHex, int outputIndex, List<int>? path});
}

/// @nodoc
class _$TxInputCopyWithImpl<$Res, $Val extends TxInput>
    implements $TxInputCopyWith<$Res> {
  _$TxInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txHashHex = null,
    Object? outputIndex = null,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      txHashHex: null == txHashHex
          ? _value.txHashHex
          : txHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      outputIndex: null == outputIndex
          ? _value.outputIndex
          : outputIndex // ignore: cast_nullable_to_non_nullable
              as int,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxInputImplCopyWith<$Res> implements $TxInputCopyWith<$Res> {
  factory _$$TxInputImplCopyWith(
          _$TxInputImpl value, $Res Function(_$TxInputImpl) then) =
      __$$TxInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String txHashHex, int outputIndex, List<int>? path});
}

/// @nodoc
class __$$TxInputImplCopyWithImpl<$Res>
    extends _$TxInputCopyWithImpl<$Res, _$TxInputImpl>
    implements _$$TxInputImplCopyWith<$Res> {
  __$$TxInputImplCopyWithImpl(
      _$TxInputImpl _value, $Res Function(_$TxInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txHashHex = null,
    Object? outputIndex = null,
    Object? path = freezed,
  }) {
    return _then(_$TxInputImpl(
      txHashHex: null == txHashHex
          ? _value.txHashHex
          : txHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      outputIndex: null == outputIndex
          ? _value.outputIndex
          : outputIndex // ignore: cast_nullable_to_non_nullable
              as int,
      path: freezed == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$TxInputImpl extends _TxInput {
  const _$TxInputImpl(
      {required this.txHashHex,
      required this.outputIndex,
      final List<int>? path})
      : _path = path,
        super._();

  @override
  final String txHashHex;
  @override
  final int outputIndex;
  final List<int>? _path;
  @override
  List<int>? get path {
    final value = _path;
    if (value == null) return null;
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TxInput(txHashHex: $txHashHex, outputIndex: $outputIndex, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxInputImpl &&
            (identical(other.txHashHex, txHashHex) ||
                other.txHashHex == txHashHex) &&
            (identical(other.outputIndex, outputIndex) ||
                other.outputIndex == outputIndex) &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, txHashHex, outputIndex,
      const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxInputImplCopyWith<_$TxInputImpl> get copyWith =>
      __$$TxInputImplCopyWithImpl<_$TxInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String txHashHex, int outputIndex, List<int>? path)
        $default,
  ) {
    return $default(txHashHex, outputIndex, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String txHashHex, int outputIndex, List<int>? path)?
        $default,
  ) {
    return $default?.call(txHashHex, outputIndex, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String txHashHex, int outputIndex, List<int>? path)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(txHashHex, outputIndex, path);
    }
    return orElse();
  }
}

abstract class _TxInput extends TxInput {
  const factory _TxInput(
      {required final String txHashHex,
      required final int outputIndex,
      final List<int>? path}) = _$TxInputImpl;
  const _TxInput._() : super._();

  @override
  String get txHashHex;
  @override
  int get outputIndex;
  @override
  List<int>? get path;
  @override
  @JsonKey(ignore: true)
  _$$TxInputImplCopyWith<_$TxInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
