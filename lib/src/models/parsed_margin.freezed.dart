// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_margin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedMargin {
  BigInt get numerator;
  BigInt get denominator;

  /// Create a copy of ParsedMargin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedMarginCopyWith<ParsedMargin> get copyWith =>
      _$ParsedMarginCopyWithImpl<ParsedMargin>(
          this as ParsedMargin, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedMargin &&
            (identical(other.numerator, numerator) ||
                other.numerator == numerator) &&
            (identical(other.denominator, denominator) ||
                other.denominator == denominator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numerator, denominator);

  @override
  String toString() {
    return 'ParsedMargin(numerator: $numerator, denominator: $denominator)';
  }
}

/// @nodoc
abstract mixin class $ParsedMarginCopyWith<$Res> {
  factory $ParsedMarginCopyWith(
          ParsedMargin value, $Res Function(ParsedMargin) _then) =
      _$ParsedMarginCopyWithImpl;
  @useResult
  $Res call({BigInt numerator, BigInt denominator});
}

/// @nodoc
class _$ParsedMarginCopyWithImpl<$Res> implements $ParsedMarginCopyWith<$Res> {
  _$ParsedMarginCopyWithImpl(this._self, this._then);

  final ParsedMargin _self;
  final $Res Function(ParsedMargin) _then;

  /// Create a copy of ParsedMargin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numerator = null,
    Object? denominator = null,
  }) {
    return _then(_self.copyWith(
      numerator: null == numerator
          ? _self.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as BigInt,
      denominator: null == denominator
          ? _self.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _ParsedMargin extends ParsedMargin {
  _ParsedMargin({required this.numerator, required this.denominator})
      : super._();

  @override
  final BigInt numerator;
  @override
  final BigInt denominator;

  /// Create a copy of ParsedMargin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParsedMarginCopyWith<_ParsedMargin> get copyWith =>
      __$ParsedMarginCopyWithImpl<_ParsedMargin>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParsedMargin &&
            (identical(other.numerator, numerator) ||
                other.numerator == numerator) &&
            (identical(other.denominator, denominator) ||
                other.denominator == denominator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numerator, denominator);

  @override
  String toString() {
    return 'ParsedMargin(numerator: $numerator, denominator: $denominator)';
  }
}

/// @nodoc
abstract mixin class _$ParsedMarginCopyWith<$Res>
    implements $ParsedMarginCopyWith<$Res> {
  factory _$ParsedMarginCopyWith(
          _ParsedMargin value, $Res Function(_ParsedMargin) _then) =
      __$ParsedMarginCopyWithImpl;
  @override
  @useResult
  $Res call({BigInt numerator, BigInt denominator});
}

/// @nodoc
class __$ParsedMarginCopyWithImpl<$Res>
    implements _$ParsedMarginCopyWith<$Res> {
  __$ParsedMarginCopyWithImpl(this._self, this._then);

  final _ParsedMargin _self;
  final $Res Function(_ParsedMargin) _then;

  /// Create a copy of ParsedMargin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? numerator = null,
    Object? denominator = null,
  }) {
    return _then(_ParsedMargin(
      numerator: null == numerator
          ? _self.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as BigInt,
      denominator: null == denominator
          ? _self.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

// dart format on
