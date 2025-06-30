// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_gov_action_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedGovActionId {
  String get txHashHex;
  int get govActionIndex;

  /// Create a copy of ParsedGovActionId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedGovActionIdCopyWith<ParsedGovActionId> get copyWith =>
      _$ParsedGovActionIdCopyWithImpl<ParsedGovActionId>(
          this as ParsedGovActionId, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedGovActionId &&
            (identical(other.txHashHex, txHashHex) ||
                other.txHashHex == txHashHex) &&
            (identical(other.govActionIndex, govActionIndex) ||
                other.govActionIndex == govActionIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, txHashHex, govActionIndex);

  @override
  String toString() {
    return 'ParsedGovActionId(txHashHex: $txHashHex, govActionIndex: $govActionIndex)';
  }
}

/// @nodoc
abstract mixin class $ParsedGovActionIdCopyWith<$Res> {
  factory $ParsedGovActionIdCopyWith(
          ParsedGovActionId value, $Res Function(ParsedGovActionId) _then) =
      _$ParsedGovActionIdCopyWithImpl;
  @useResult
  $Res call({String txHashHex, int govActionIndex});
}

/// @nodoc
class _$ParsedGovActionIdCopyWithImpl<$Res>
    implements $ParsedGovActionIdCopyWith<$Res> {
  _$ParsedGovActionIdCopyWithImpl(this._self, this._then);

  final ParsedGovActionId _self;
  final $Res Function(ParsedGovActionId) _then;

  /// Create a copy of ParsedGovActionId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txHashHex = null,
    Object? govActionIndex = null,
  }) {
    return _then(_self.copyWith(
      txHashHex: null == txHashHex
          ? _self.txHashHex
          : txHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      govActionIndex: null == govActionIndex
          ? _self.govActionIndex
          : govActionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _ParsedGovActionId extends ParsedGovActionId {
  _ParsedGovActionId({required this.txHashHex, required this.govActionIndex})
      : super._();

  @override
  final String txHashHex;
  @override
  final int govActionIndex;

  /// Create a copy of ParsedGovActionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParsedGovActionIdCopyWith<_ParsedGovActionId> get copyWith =>
      __$ParsedGovActionIdCopyWithImpl<_ParsedGovActionId>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParsedGovActionId &&
            (identical(other.txHashHex, txHashHex) ||
                other.txHashHex == txHashHex) &&
            (identical(other.govActionIndex, govActionIndex) ||
                other.govActionIndex == govActionIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, txHashHex, govActionIndex);

  @override
  String toString() {
    return 'ParsedGovActionId(txHashHex: $txHashHex, govActionIndex: $govActionIndex)';
  }
}

/// @nodoc
abstract mixin class _$ParsedGovActionIdCopyWith<$Res>
    implements $ParsedGovActionIdCopyWith<$Res> {
  factory _$ParsedGovActionIdCopyWith(
          _ParsedGovActionId value, $Res Function(_ParsedGovActionId) _then) =
      __$ParsedGovActionIdCopyWithImpl;
  @override
  @useResult
  $Res call({String txHashHex, int govActionIndex});
}

/// @nodoc
class __$ParsedGovActionIdCopyWithImpl<$Res>
    implements _$ParsedGovActionIdCopyWith<$Res> {
  __$ParsedGovActionIdCopyWithImpl(this._self, this._then);

  final _ParsedGovActionId _self;
  final $Res Function(_ParsedGovActionId) _then;

  /// Create a copy of ParsedGovActionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? txHashHex = null,
    Object? govActionIndex = null,
  }) {
    return _then(_ParsedGovActionId(
      txHashHex: null == txHashHex
          ? _self.txHashHex
          : txHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      govActionIndex: null == govActionIndex
          ? _self.govActionIndex
          : govActionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
