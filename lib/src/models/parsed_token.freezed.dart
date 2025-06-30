// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedToken {
  String get assetNameHex;
  BigInt get amount;

  /// Create a copy of ParsedToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedTokenCopyWith<ParsedToken> get copyWith =>
      _$ParsedTokenCopyWithImpl<ParsedToken>(this as ParsedToken, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedToken &&
            (identical(other.assetNameHex, assetNameHex) ||
                other.assetNameHex == assetNameHex) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assetNameHex, amount);

  @override
  String toString() {
    return 'ParsedToken(assetNameHex: $assetNameHex, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $ParsedTokenCopyWith<$Res> {
  factory $ParsedTokenCopyWith(
          ParsedToken value, $Res Function(ParsedToken) _then) =
      _$ParsedTokenCopyWithImpl;
  @useResult
  $Res call({String assetNameHex, BigInt amount});
}

/// @nodoc
class _$ParsedTokenCopyWithImpl<$Res> implements $ParsedTokenCopyWith<$Res> {
  _$ParsedTokenCopyWithImpl(this._self, this._then);

  final ParsedToken _self;
  final $Res Function(ParsedToken) _then;

  /// Create a copy of ParsedToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetNameHex = null,
    Object? amount = null,
  }) {
    return _then(_self.copyWith(
      assetNameHex: null == assetNameHex
          ? _self.assetNameHex
          : assetNameHex // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _ParsedToken extends ParsedToken {
  _ParsedToken({required this.assetNameHex, required this.amount}) : super._();

  @override
  final String assetNameHex;
  @override
  final BigInt amount;

  /// Create a copy of ParsedToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParsedTokenCopyWith<_ParsedToken> get copyWith =>
      __$ParsedTokenCopyWithImpl<_ParsedToken>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParsedToken &&
            (identical(other.assetNameHex, assetNameHex) ||
                other.assetNameHex == assetNameHex) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assetNameHex, amount);

  @override
  String toString() {
    return 'ParsedToken(assetNameHex: $assetNameHex, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class _$ParsedTokenCopyWith<$Res>
    implements $ParsedTokenCopyWith<$Res> {
  factory _$ParsedTokenCopyWith(
          _ParsedToken value, $Res Function(_ParsedToken) _then) =
      __$ParsedTokenCopyWithImpl;
  @override
  @useResult
  $Res call({String assetNameHex, BigInt amount});
}

/// @nodoc
class __$ParsedTokenCopyWithImpl<$Res> implements _$ParsedTokenCopyWith<$Res> {
  __$ParsedTokenCopyWithImpl(this._self, this._then);

  final _ParsedToken _self;
  final $Res Function(_ParsedToken) _then;

  /// Create a copy of ParsedToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? assetNameHex = null,
    Object? amount = null,
  }) {
    return _then(_ParsedToken(
      assetNameHex: null == assetNameHex
          ? _self.assetNameHex
          : assetNameHex // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

// dart format on
