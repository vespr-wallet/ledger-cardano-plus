// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedToken<T> {
  String get assetNameHex => throw _privateConstructorUsedError;
  T get amount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String assetNameHex, T amount) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String assetNameHex, T amount)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String assetNameHex, T amount)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedTokenCopyWith<T, ParsedToken<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedTokenCopyWith<T, $Res> {
  factory $ParsedTokenCopyWith(
          ParsedToken<T> value, $Res Function(ParsedToken<T>) then) =
      _$ParsedTokenCopyWithImpl<T, $Res, ParsedToken<T>>;
  @useResult
  $Res call({String assetNameHex, T amount});
}

/// @nodoc
class _$ParsedTokenCopyWithImpl<T, $Res, $Val extends ParsedToken<T>>
    implements $ParsedTokenCopyWith<T, $Res> {
  _$ParsedTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetNameHex = null,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      assetNameHex: null == assetNameHex
          ? _value.assetNameHex
          : assetNameHex // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedTokenImplCopyWith<T, $Res>
    implements $ParsedTokenCopyWith<T, $Res> {
  factory _$$ParsedTokenImplCopyWith(_$ParsedTokenImpl<T> value,
          $Res Function(_$ParsedTokenImpl<T>) then) =
      __$$ParsedTokenImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String assetNameHex, T amount});
}

/// @nodoc
class __$$ParsedTokenImplCopyWithImpl<T, $Res>
    extends _$ParsedTokenCopyWithImpl<T, $Res, _$ParsedTokenImpl<T>>
    implements _$$ParsedTokenImplCopyWith<T, $Res> {
  __$$ParsedTokenImplCopyWithImpl(
      _$ParsedTokenImpl<T> _value, $Res Function(_$ParsedTokenImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetNameHex = null,
    Object? amount = freezed,
  }) {
    return _then(_$ParsedTokenImpl<T>(
      assetNameHex: null == assetNameHex
          ? _value.assetNameHex
          : assetNameHex // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ParsedTokenImpl<T> extends _ParsedToken<T> {
  _$ParsedTokenImpl({required this.assetNameHex, required this.amount})
      : super._();

  @override
  final String assetNameHex;
  @override
  final T amount;

  @override
  String toString() {
    return 'ParsedToken<$T>(assetNameHex: $assetNameHex, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedTokenImpl<T> &&
            (identical(other.assetNameHex, assetNameHex) ||
                other.assetNameHex == assetNameHex) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, assetNameHex, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedTokenImplCopyWith<T, _$ParsedTokenImpl<T>> get copyWith =>
      __$$ParsedTokenImplCopyWithImpl<T, _$ParsedTokenImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String assetNameHex, T amount) $default,
  ) {
    return $default(assetNameHex, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String assetNameHex, T amount)? $default,
  ) {
    return $default?.call(assetNameHex, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String assetNameHex, T amount)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(assetNameHex, amount);
    }
    return orElse();
  }
}

abstract class _ParsedToken<T> extends ParsedToken<T> {
  factory _ParsedToken(
      {required final String assetNameHex,
      required final T amount}) = _$ParsedTokenImpl<T>;
  _ParsedToken._() : super._();

  @override
  String get assetNameHex;
  @override
  T get amount;
  @override
  @JsonKey(ignore: true)
  _$$ParsedTokenImplCopyWith<T, _$ParsedTokenImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
