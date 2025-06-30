// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_asset_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedAssetGroup {
  String get policyIdHex;
  List<ParsedToken> get tokens;

  /// Create a copy of ParsedAssetGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedAssetGroupCopyWith<ParsedAssetGroup> get copyWith =>
      _$ParsedAssetGroupCopyWithImpl<ParsedAssetGroup>(
          this as ParsedAssetGroup, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedAssetGroup &&
            (identical(other.policyIdHex, policyIdHex) ||
                other.policyIdHex == policyIdHex) &&
            const DeepCollectionEquality().equals(other.tokens, tokens));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, policyIdHex, const DeepCollectionEquality().hash(tokens));

  @override
  String toString() {
    return 'ParsedAssetGroup(policyIdHex: $policyIdHex, tokens: $tokens)';
  }
}

/// @nodoc
abstract mixin class $ParsedAssetGroupCopyWith<$Res> {
  factory $ParsedAssetGroupCopyWith(
          ParsedAssetGroup value, $Res Function(ParsedAssetGroup) _then) =
      _$ParsedAssetGroupCopyWithImpl;
  @useResult
  $Res call({String policyIdHex, List<ParsedToken> tokens});
}

/// @nodoc
class _$ParsedAssetGroupCopyWithImpl<$Res>
    implements $ParsedAssetGroupCopyWith<$Res> {
  _$ParsedAssetGroupCopyWithImpl(this._self, this._then);

  final ParsedAssetGroup _self;
  final $Res Function(ParsedAssetGroup) _then;

  /// Create a copy of ParsedAssetGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyIdHex = null,
    Object? tokens = null,
  }) {
    return _then(_self.copyWith(
      policyIdHex: null == policyIdHex
          ? _self.policyIdHex
          : policyIdHex // ignore: cast_nullable_to_non_nullable
              as String,
      tokens: null == tokens
          ? _self.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<ParsedToken>,
    ));
  }
}

/// @nodoc

class _ParsedAssetGroup extends ParsedAssetGroup {
  _ParsedAssetGroup(
      {required this.policyIdHex, required final List<ParsedToken> tokens})
      : _tokens = tokens,
        super._();

  @override
  final String policyIdHex;
  final List<ParsedToken> _tokens;
  @override
  List<ParsedToken> get tokens {
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  /// Create a copy of ParsedAssetGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParsedAssetGroupCopyWith<_ParsedAssetGroup> get copyWith =>
      __$ParsedAssetGroupCopyWithImpl<_ParsedAssetGroup>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParsedAssetGroup &&
            (identical(other.policyIdHex, policyIdHex) ||
                other.policyIdHex == policyIdHex) &&
            const DeepCollectionEquality().equals(other._tokens, _tokens));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, policyIdHex, const DeepCollectionEquality().hash(_tokens));

  @override
  String toString() {
    return 'ParsedAssetGroup(policyIdHex: $policyIdHex, tokens: $tokens)';
  }
}

/// @nodoc
abstract mixin class _$ParsedAssetGroupCopyWith<$Res>
    implements $ParsedAssetGroupCopyWith<$Res> {
  factory _$ParsedAssetGroupCopyWith(
          _ParsedAssetGroup value, $Res Function(_ParsedAssetGroup) _then) =
      __$ParsedAssetGroupCopyWithImpl;
  @override
  @useResult
  $Res call({String policyIdHex, List<ParsedToken> tokens});
}

/// @nodoc
class __$ParsedAssetGroupCopyWithImpl<$Res>
    implements _$ParsedAssetGroupCopyWith<$Res> {
  __$ParsedAssetGroupCopyWithImpl(this._self, this._then);

  final _ParsedAssetGroup _self;
  final $Res Function(_ParsedAssetGroup) _then;

  /// Create a copy of ParsedAssetGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? policyIdHex = null,
    Object? tokens = null,
  }) {
    return _then(_ParsedAssetGroup(
      policyIdHex: null == policyIdHex
          ? _self.policyIdHex
          : policyIdHex // ignore: cast_nullable_to_non_nullable
              as String,
      tokens: null == tokens
          ? _self._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<ParsedToken>,
    ));
  }
}

// dart format on
