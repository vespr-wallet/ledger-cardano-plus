// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedPoolParams {
  ParsedPoolKey get poolKey;
  String get vrfHashHex;
  BigInt get pledge;
  BigInt get cost;
  ParsedMargin get margin;
  ParsedPoolRewardAccount get rewardAccount;
  List<ParsedPoolOwner> get owners;
  List<ParsedPoolRelay> get relays;
  ParsedPoolMetadata? get metadata;

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedPoolParamsCopyWith<ParsedPoolParams> get copyWith =>
      _$ParsedPoolParamsCopyWithImpl<ParsedPoolParams>(
          this as ParsedPoolParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedPoolParams &&
            (identical(other.poolKey, poolKey) || other.poolKey == poolKey) &&
            (identical(other.vrfHashHex, vrfHashHex) ||
                other.vrfHashHex == vrfHashHex) &&
            (identical(other.pledge, pledge) || other.pledge == pledge) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.rewardAccount, rewardAccount) ||
                other.rewardAccount == rewardAccount) &&
            const DeepCollectionEquality().equals(other.owners, owners) &&
            const DeepCollectionEquality().equals(other.relays, relays) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      poolKey,
      vrfHashHex,
      pledge,
      cost,
      margin,
      rewardAccount,
      const DeepCollectionEquality().hash(owners),
      const DeepCollectionEquality().hash(relays),
      metadata);

  @override
  String toString() {
    return 'ParsedPoolParams(poolKey: $poolKey, vrfHashHex: $vrfHashHex, pledge: $pledge, cost: $cost, margin: $margin, rewardAccount: $rewardAccount, owners: $owners, relays: $relays, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $ParsedPoolParamsCopyWith<$Res> {
  factory $ParsedPoolParamsCopyWith(
          ParsedPoolParams value, $Res Function(ParsedPoolParams) _then) =
      _$ParsedPoolParamsCopyWithImpl;
  @useResult
  $Res call(
      {ParsedPoolKey poolKey,
      String vrfHashHex,
      BigInt pledge,
      BigInt cost,
      ParsedMargin margin,
      ParsedPoolRewardAccount rewardAccount,
      List<ParsedPoolOwner> owners,
      List<ParsedPoolRelay> relays,
      ParsedPoolMetadata? metadata});

  $ParsedPoolKeyCopyWith<$Res> get poolKey;
  $ParsedMarginCopyWith<$Res> get margin;
  $ParsedPoolRewardAccountCopyWith<$Res> get rewardAccount;
  $ParsedPoolMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$ParsedPoolParamsCopyWithImpl<$Res>
    implements $ParsedPoolParamsCopyWith<$Res> {
  _$ParsedPoolParamsCopyWithImpl(this._self, this._then);

  final ParsedPoolParams _self;
  final $Res Function(ParsedPoolParams) _then;

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolKey = null,
    Object? vrfHashHex = null,
    Object? pledge = null,
    Object? cost = null,
    Object? margin = null,
    Object? rewardAccount = null,
    Object? owners = null,
    Object? relays = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      poolKey: null == poolKey
          ? _self.poolKey
          : poolKey // ignore: cast_nullable_to_non_nullable
              as ParsedPoolKey,
      vrfHashHex: null == vrfHashHex
          ? _self.vrfHashHex
          : vrfHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      pledge: null == pledge
          ? _self.pledge
          : pledge // ignore: cast_nullable_to_non_nullable
              as BigInt,
      cost: null == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as BigInt,
      margin: null == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as ParsedMargin,
      rewardAccount: null == rewardAccount
          ? _self.rewardAccount
          : rewardAccount // ignore: cast_nullable_to_non_nullable
              as ParsedPoolRewardAccount,
      owners: null == owners
          ? _self.owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<ParsedPoolOwner>,
      relays: null == relays
          ? _self.relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<ParsedPoolRelay>,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ParsedPoolMetadata?,
    ));
  }

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolKeyCopyWith<$Res> get poolKey {
    return $ParsedPoolKeyCopyWith<$Res>(_self.poolKey, (value) {
      return _then(_self.copyWith(poolKey: value));
    });
  }

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedMarginCopyWith<$Res> get margin {
    return $ParsedMarginCopyWith<$Res>(_self.margin, (value) {
      return _then(_self.copyWith(margin: value));
    });
  }

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolRewardAccountCopyWith<$Res> get rewardAccount {
    return $ParsedPoolRewardAccountCopyWith<$Res>(_self.rewardAccount, (value) {
      return _then(_self.copyWith(rewardAccount: value));
    });
  }

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
      return null;
    }

    return $ParsedPoolMetadataCopyWith<$Res>(_self.metadata!, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// @nodoc

class _ParsedPoolParams extends ParsedPoolParams {
  _ParsedPoolParams(
      {required this.poolKey,
      required this.vrfHashHex,
      required this.pledge,
      required this.cost,
      required this.margin,
      required this.rewardAccount,
      required final List<ParsedPoolOwner> owners,
      required final List<ParsedPoolRelay> relays,
      required this.metadata})
      : _owners = owners,
        _relays = relays,
        super._();

  @override
  final ParsedPoolKey poolKey;
  @override
  final String vrfHashHex;
  @override
  final BigInt pledge;
  @override
  final BigInt cost;
  @override
  final ParsedMargin margin;
  @override
  final ParsedPoolRewardAccount rewardAccount;
  final List<ParsedPoolOwner> _owners;
  @override
  List<ParsedPoolOwner> get owners {
    if (_owners is EqualUnmodifiableListView) return _owners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_owners);
  }

  final List<ParsedPoolRelay> _relays;
  @override
  List<ParsedPoolRelay> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  @override
  final ParsedPoolMetadata? metadata;

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParsedPoolParamsCopyWith<_ParsedPoolParams> get copyWith =>
      __$ParsedPoolParamsCopyWithImpl<_ParsedPoolParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParsedPoolParams &&
            (identical(other.poolKey, poolKey) || other.poolKey == poolKey) &&
            (identical(other.vrfHashHex, vrfHashHex) ||
                other.vrfHashHex == vrfHashHex) &&
            (identical(other.pledge, pledge) || other.pledge == pledge) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.rewardAccount, rewardAccount) ||
                other.rewardAccount == rewardAccount) &&
            const DeepCollectionEquality().equals(other._owners, _owners) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      poolKey,
      vrfHashHex,
      pledge,
      cost,
      margin,
      rewardAccount,
      const DeepCollectionEquality().hash(_owners),
      const DeepCollectionEquality().hash(_relays),
      metadata);

  @override
  String toString() {
    return 'ParsedPoolParams(poolKey: $poolKey, vrfHashHex: $vrfHashHex, pledge: $pledge, cost: $cost, margin: $margin, rewardAccount: $rewardAccount, owners: $owners, relays: $relays, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$ParsedPoolParamsCopyWith<$Res>
    implements $ParsedPoolParamsCopyWith<$Res> {
  factory _$ParsedPoolParamsCopyWith(
          _ParsedPoolParams value, $Res Function(_ParsedPoolParams) _then) =
      __$ParsedPoolParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ParsedPoolKey poolKey,
      String vrfHashHex,
      BigInt pledge,
      BigInt cost,
      ParsedMargin margin,
      ParsedPoolRewardAccount rewardAccount,
      List<ParsedPoolOwner> owners,
      List<ParsedPoolRelay> relays,
      ParsedPoolMetadata? metadata});

  @override
  $ParsedPoolKeyCopyWith<$Res> get poolKey;
  @override
  $ParsedMarginCopyWith<$Res> get margin;
  @override
  $ParsedPoolRewardAccountCopyWith<$Res> get rewardAccount;
  @override
  $ParsedPoolMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$ParsedPoolParamsCopyWithImpl<$Res>
    implements _$ParsedPoolParamsCopyWith<$Res> {
  __$ParsedPoolParamsCopyWithImpl(this._self, this._then);

  final _ParsedPoolParams _self;
  final $Res Function(_ParsedPoolParams) _then;

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? poolKey = null,
    Object? vrfHashHex = null,
    Object? pledge = null,
    Object? cost = null,
    Object? margin = null,
    Object? rewardAccount = null,
    Object? owners = null,
    Object? relays = null,
    Object? metadata = freezed,
  }) {
    return _then(_ParsedPoolParams(
      poolKey: null == poolKey
          ? _self.poolKey
          : poolKey // ignore: cast_nullable_to_non_nullable
              as ParsedPoolKey,
      vrfHashHex: null == vrfHashHex
          ? _self.vrfHashHex
          : vrfHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      pledge: null == pledge
          ? _self.pledge
          : pledge // ignore: cast_nullable_to_non_nullable
              as BigInt,
      cost: null == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as BigInt,
      margin: null == margin
          ? _self.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as ParsedMargin,
      rewardAccount: null == rewardAccount
          ? _self.rewardAccount
          : rewardAccount // ignore: cast_nullable_to_non_nullable
              as ParsedPoolRewardAccount,
      owners: null == owners
          ? _self._owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<ParsedPoolOwner>,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<ParsedPoolRelay>,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ParsedPoolMetadata?,
    ));
  }

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolKeyCopyWith<$Res> get poolKey {
    return $ParsedPoolKeyCopyWith<$Res>(_self.poolKey, (value) {
      return _then(_self.copyWith(poolKey: value));
    });
  }

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedMarginCopyWith<$Res> get margin {
    return $ParsedMarginCopyWith<$Res>(_self.margin, (value) {
      return _then(_self.copyWith(margin: value));
    });
  }

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolRewardAccountCopyWith<$Res> get rewardAccount {
    return $ParsedPoolRewardAccountCopyWith<$Res>(_self.rewardAccount, (value) {
      return _then(_self.copyWith(rewardAccount: value));
    });
  }

  /// Create a copy of ParsedPoolParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
      return null;
    }

    return $ParsedPoolMetadataCopyWith<$Res>(_self.metadata!, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

// dart format on
