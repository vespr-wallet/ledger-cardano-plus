// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedPoolParams {
  ParsedPoolKey get poolKey => throw _privateConstructorUsedError;
  String get vrfHashHex => throw _privateConstructorUsedError;
  BigInt get pledge => throw _privateConstructorUsedError;
  BigInt get cost => throw _privateConstructorUsedError;
  ParsedMargin get margin => throw _privateConstructorUsedError;
  ParsedPoolRewardAccount get rewardAccount =>
      throw _privateConstructorUsedError;
  List<ParsedPoolOwner> get owners => throw _privateConstructorUsedError;
  List<ParsedPoolRelay> get relays => throw _privateConstructorUsedError;
  ParsedPoolMetadata? get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedPoolParamsCopyWith<ParsedPoolParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedPoolParamsCopyWith<$Res> {
  factory $ParsedPoolParamsCopyWith(
          ParsedPoolParams value, $Res Function(ParsedPoolParams) then) =
      _$ParsedPoolParamsCopyWithImpl<$Res, ParsedPoolParams>;
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
class _$ParsedPoolParamsCopyWithImpl<$Res, $Val extends ParsedPoolParams>
    implements $ParsedPoolParamsCopyWith<$Res> {
  _$ParsedPoolParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      poolKey: null == poolKey
          ? _value.poolKey
          : poolKey // ignore: cast_nullable_to_non_nullable
              as ParsedPoolKey,
      vrfHashHex: null == vrfHashHex
          ? _value.vrfHashHex
          : vrfHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      pledge: null == pledge
          ? _value.pledge
          : pledge // ignore: cast_nullable_to_non_nullable
              as BigInt,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as BigInt,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as ParsedMargin,
      rewardAccount: null == rewardAccount
          ? _value.rewardAccount
          : rewardAccount // ignore: cast_nullable_to_non_nullable
              as ParsedPoolRewardAccount,
      owners: null == owners
          ? _value.owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<ParsedPoolOwner>,
      relays: null == relays
          ? _value.relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<ParsedPoolRelay>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ParsedPoolMetadata?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolKeyCopyWith<$Res> get poolKey {
    return $ParsedPoolKeyCopyWith<$Res>(_value.poolKey, (value) {
      return _then(_value.copyWith(poolKey: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedMarginCopyWith<$Res> get margin {
    return $ParsedMarginCopyWith<$Res>(_value.margin, (value) {
      return _then(_value.copyWith(margin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolRewardAccountCopyWith<$Res> get rewardAccount {
    return $ParsedPoolRewardAccountCopyWith<$Res>(_value.rewardAccount,
        (value) {
      return _then(_value.copyWith(rewardAccount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedPoolMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $ParsedPoolMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedPoolParamsImplCopyWith<$Res>
    implements $ParsedPoolParamsCopyWith<$Res> {
  factory _$$ParsedPoolParamsImplCopyWith(_$ParsedPoolParamsImpl value,
          $Res Function(_$ParsedPoolParamsImpl) then) =
      __$$ParsedPoolParamsImplCopyWithImpl<$Res>;
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
class __$$ParsedPoolParamsImplCopyWithImpl<$Res>
    extends _$ParsedPoolParamsCopyWithImpl<$Res, _$ParsedPoolParamsImpl>
    implements _$$ParsedPoolParamsImplCopyWith<$Res> {
  __$$ParsedPoolParamsImplCopyWithImpl(_$ParsedPoolParamsImpl _value,
      $Res Function(_$ParsedPoolParamsImpl) _then)
      : super(_value, _then);

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
    return _then(_$ParsedPoolParamsImpl(
      poolKey: null == poolKey
          ? _value.poolKey
          : poolKey // ignore: cast_nullable_to_non_nullable
              as ParsedPoolKey,
      vrfHashHex: null == vrfHashHex
          ? _value.vrfHashHex
          : vrfHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      pledge: null == pledge
          ? _value.pledge
          : pledge // ignore: cast_nullable_to_non_nullable
              as BigInt,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as BigInt,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as ParsedMargin,
      rewardAccount: null == rewardAccount
          ? _value.rewardAccount
          : rewardAccount // ignore: cast_nullable_to_non_nullable
              as ParsedPoolRewardAccount,
      owners: null == owners
          ? _value._owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<ParsedPoolOwner>,
      relays: null == relays
          ? _value._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<ParsedPoolRelay>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as ParsedPoolMetadata?,
    ));
  }
}

/// @nodoc

class _$ParsedPoolParamsImpl extends _ParsedPoolParams {
  _$ParsedPoolParamsImpl(
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

  @override
  String toString() {
    return 'ParsedPoolParams(poolKey: $poolKey, vrfHashHex: $vrfHashHex, pledge: $pledge, cost: $cost, margin: $margin, rewardAccount: $rewardAccount, owners: $owners, relays: $relays, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedPoolParamsImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedPoolParamsImplCopyWith<_$ParsedPoolParamsImpl> get copyWith =>
      __$$ParsedPoolParamsImplCopyWithImpl<_$ParsedPoolParamsImpl>(
          this, _$identity);
}

abstract class _ParsedPoolParams extends ParsedPoolParams {
  factory _ParsedPoolParams(
      {required final ParsedPoolKey poolKey,
      required final String vrfHashHex,
      required final BigInt pledge,
      required final BigInt cost,
      required final ParsedMargin margin,
      required final ParsedPoolRewardAccount rewardAccount,
      required final List<ParsedPoolOwner> owners,
      required final List<ParsedPoolRelay> relays,
      required final ParsedPoolMetadata? metadata}) = _$ParsedPoolParamsImpl;
  _ParsedPoolParams._() : super._();

  @override
  ParsedPoolKey get poolKey;
  @override
  String get vrfHashHex;
  @override
  BigInt get pledge;
  @override
  BigInt get cost;
  @override
  ParsedMargin get margin;
  @override
  ParsedPoolRewardAccount get rewardAccount;
  @override
  List<ParsedPoolOwner> get owners;
  @override
  List<ParsedPoolRelay> get relays;
  @override
  ParsedPoolMetadata? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ParsedPoolParamsImplCopyWith<_$ParsedPoolParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
