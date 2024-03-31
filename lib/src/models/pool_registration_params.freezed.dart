// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool_registration_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PoolRegistrationParams {
  PoolKey get poolKey => throw _privateConstructorUsedError;
  String get vrfKeyHashHex => throw _privateConstructorUsedError;
  BigInt get pledge => throw _privateConstructorUsedError;
  BigInt get cost => throw _privateConstructorUsedError;
  Margin get margin => throw _privateConstructorUsedError;
  PoolRewardAccount get rewardAccount => throw _privateConstructorUsedError;
  List<PoolOwner> get poolOwners => throw _privateConstructorUsedError;
  List<Relay> get relays => throw _privateConstructorUsedError;
  PoolMetadataParams? get metadata => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            PoolKey poolKey,
            String vrfKeyHashHex,
            BigInt pledge,
            BigInt cost,
            Margin margin,
            PoolRewardAccount rewardAccount,
            List<PoolOwner> poolOwners,
            List<Relay> relays,
            PoolMetadataParams? metadata)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            PoolKey poolKey,
            String vrfKeyHashHex,
            BigInt pledge,
            BigInt cost,
            Margin margin,
            PoolRewardAccount rewardAccount,
            List<PoolOwner> poolOwners,
            List<Relay> relays,
            PoolMetadataParams? metadata)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            PoolKey poolKey,
            String vrfKeyHashHex,
            BigInt pledge,
            BigInt cost,
            Margin margin,
            PoolRewardAccount rewardAccount,
            List<PoolOwner> poolOwners,
            List<Relay> relays,
            PoolMetadataParams? metadata)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PoolRegistrationParamsCopyWith<PoolRegistrationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolRegistrationParamsCopyWith<$Res> {
  factory $PoolRegistrationParamsCopyWith(PoolRegistrationParams value,
          $Res Function(PoolRegistrationParams) then) =
      _$PoolRegistrationParamsCopyWithImpl<$Res, PoolRegistrationParams>;
  @useResult
  $Res call(
      {PoolKey poolKey,
      String vrfKeyHashHex,
      BigInt pledge,
      BigInt cost,
      Margin margin,
      PoolRewardAccount rewardAccount,
      List<PoolOwner> poolOwners,
      List<Relay> relays,
      PoolMetadataParams? metadata});

  $PoolKeyCopyWith<$Res> get poolKey;
  $MarginCopyWith<$Res> get margin;
  $PoolRewardAccountCopyWith<$Res> get rewardAccount;
  $PoolMetadataParamsCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$PoolRegistrationParamsCopyWithImpl<$Res,
        $Val extends PoolRegistrationParams>
    implements $PoolRegistrationParamsCopyWith<$Res> {
  _$PoolRegistrationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolKey = null,
    Object? vrfKeyHashHex = null,
    Object? pledge = null,
    Object? cost = null,
    Object? margin = null,
    Object? rewardAccount = null,
    Object? poolOwners = null,
    Object? relays = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      poolKey: null == poolKey
          ? _value.poolKey
          : poolKey // ignore: cast_nullable_to_non_nullable
              as PoolKey,
      vrfKeyHashHex: null == vrfKeyHashHex
          ? _value.vrfKeyHashHex
          : vrfKeyHashHex // ignore: cast_nullable_to_non_nullable
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
              as Margin,
      rewardAccount: null == rewardAccount
          ? _value.rewardAccount
          : rewardAccount // ignore: cast_nullable_to_non_nullable
              as PoolRewardAccount,
      poolOwners: null == poolOwners
          ? _value.poolOwners
          : poolOwners // ignore: cast_nullable_to_non_nullable
              as List<PoolOwner>,
      relays: null == relays
          ? _value.relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<Relay>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PoolMetadataParams?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PoolKeyCopyWith<$Res> get poolKey {
    return $PoolKeyCopyWith<$Res>(_value.poolKey, (value) {
      return _then(_value.copyWith(poolKey: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MarginCopyWith<$Res> get margin {
    return $MarginCopyWith<$Res>(_value.margin, (value) {
      return _then(_value.copyWith(margin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PoolRewardAccountCopyWith<$Res> get rewardAccount {
    return $PoolRewardAccountCopyWith<$Res>(_value.rewardAccount, (value) {
      return _then(_value.copyWith(rewardAccount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PoolMetadataParamsCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $PoolMetadataParamsCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PoolRegistrationParamsImplCopyWith<$Res>
    implements $PoolRegistrationParamsCopyWith<$Res> {
  factory _$$PoolRegistrationParamsImplCopyWith(
          _$PoolRegistrationParamsImpl value,
          $Res Function(_$PoolRegistrationParamsImpl) then) =
      __$$PoolRegistrationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PoolKey poolKey,
      String vrfKeyHashHex,
      BigInt pledge,
      BigInt cost,
      Margin margin,
      PoolRewardAccount rewardAccount,
      List<PoolOwner> poolOwners,
      List<Relay> relays,
      PoolMetadataParams? metadata});

  @override
  $PoolKeyCopyWith<$Res> get poolKey;
  @override
  $MarginCopyWith<$Res> get margin;
  @override
  $PoolRewardAccountCopyWith<$Res> get rewardAccount;
  @override
  $PoolMetadataParamsCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$PoolRegistrationParamsImplCopyWithImpl<$Res>
    extends _$PoolRegistrationParamsCopyWithImpl<$Res,
        _$PoolRegistrationParamsImpl>
    implements _$$PoolRegistrationParamsImplCopyWith<$Res> {
  __$$PoolRegistrationParamsImplCopyWithImpl(
      _$PoolRegistrationParamsImpl _value,
      $Res Function(_$PoolRegistrationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolKey = null,
    Object? vrfKeyHashHex = null,
    Object? pledge = null,
    Object? cost = null,
    Object? margin = null,
    Object? rewardAccount = null,
    Object? poolOwners = null,
    Object? relays = null,
    Object? metadata = freezed,
  }) {
    return _then(_$PoolRegistrationParamsImpl(
      poolKey: null == poolKey
          ? _value.poolKey
          : poolKey // ignore: cast_nullable_to_non_nullable
              as PoolKey,
      vrfKeyHashHex: null == vrfKeyHashHex
          ? _value.vrfKeyHashHex
          : vrfKeyHashHex // ignore: cast_nullable_to_non_nullable
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
              as Margin,
      rewardAccount: null == rewardAccount
          ? _value.rewardAccount
          : rewardAccount // ignore: cast_nullable_to_non_nullable
              as PoolRewardAccount,
      poolOwners: null == poolOwners
          ? _value._poolOwners
          : poolOwners // ignore: cast_nullable_to_non_nullable
              as List<PoolOwner>,
      relays: null == relays
          ? _value._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<Relay>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PoolMetadataParams?,
    ));
  }
}

/// @nodoc

class _$PoolRegistrationParamsImpl extends _PoolRegistrationParams {
  const _$PoolRegistrationParamsImpl(
      {required this.poolKey,
      required this.vrfKeyHashHex,
      required this.pledge,
      required this.cost,
      required this.margin,
      required this.rewardAccount,
      required final List<PoolOwner> poolOwners,
      required final List<Relay> relays,
      this.metadata})
      : _poolOwners = poolOwners,
        _relays = relays,
        super._();

  @override
  final PoolKey poolKey;
  @override
  final String vrfKeyHashHex;
  @override
  final BigInt pledge;
  @override
  final BigInt cost;
  @override
  final Margin margin;
  @override
  final PoolRewardAccount rewardAccount;
  final List<PoolOwner> _poolOwners;
  @override
  List<PoolOwner> get poolOwners {
    if (_poolOwners is EqualUnmodifiableListView) return _poolOwners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_poolOwners);
  }

  final List<Relay> _relays;
  @override
  List<Relay> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  @override
  final PoolMetadataParams? metadata;

  @override
  String toString() {
    return 'PoolRegistrationParams(poolKey: $poolKey, vrfKeyHashHex: $vrfKeyHashHex, pledge: $pledge, cost: $cost, margin: $margin, rewardAccount: $rewardAccount, poolOwners: $poolOwners, relays: $relays, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolRegistrationParamsImpl &&
            (identical(other.poolKey, poolKey) || other.poolKey == poolKey) &&
            (identical(other.vrfKeyHashHex, vrfKeyHashHex) ||
                other.vrfKeyHashHex == vrfKeyHashHex) &&
            (identical(other.pledge, pledge) || other.pledge == pledge) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.rewardAccount, rewardAccount) ||
                other.rewardAccount == rewardAccount) &&
            const DeepCollectionEquality()
                .equals(other._poolOwners, _poolOwners) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      poolKey,
      vrfKeyHashHex,
      pledge,
      cost,
      margin,
      rewardAccount,
      const DeepCollectionEquality().hash(_poolOwners),
      const DeepCollectionEquality().hash(_relays),
      metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolRegistrationParamsImplCopyWith<_$PoolRegistrationParamsImpl>
      get copyWith => __$$PoolRegistrationParamsImplCopyWithImpl<
          _$PoolRegistrationParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            PoolKey poolKey,
            String vrfKeyHashHex,
            BigInt pledge,
            BigInt cost,
            Margin margin,
            PoolRewardAccount rewardAccount,
            List<PoolOwner> poolOwners,
            List<Relay> relays,
            PoolMetadataParams? metadata)
        $default,
  ) {
    return $default(poolKey, vrfKeyHashHex, pledge, cost, margin, rewardAccount,
        poolOwners, relays, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            PoolKey poolKey,
            String vrfKeyHashHex,
            BigInt pledge,
            BigInt cost,
            Margin margin,
            PoolRewardAccount rewardAccount,
            List<PoolOwner> poolOwners,
            List<Relay> relays,
            PoolMetadataParams? metadata)?
        $default,
  ) {
    return $default?.call(poolKey, vrfKeyHashHex, pledge, cost, margin,
        rewardAccount, poolOwners, relays, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            PoolKey poolKey,
            String vrfKeyHashHex,
            BigInt pledge,
            BigInt cost,
            Margin margin,
            PoolRewardAccount rewardAccount,
            List<PoolOwner> poolOwners,
            List<Relay> relays,
            PoolMetadataParams? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(poolKey, vrfKeyHashHex, pledge, cost, margin,
          rewardAccount, poolOwners, relays, metadata);
    }
    return orElse();
  }
}

abstract class _PoolRegistrationParams extends PoolRegistrationParams {
  const factory _PoolRegistrationParams(
      {required final PoolKey poolKey,
      required final String vrfKeyHashHex,
      required final BigInt pledge,
      required final BigInt cost,
      required final Margin margin,
      required final PoolRewardAccount rewardAccount,
      required final List<PoolOwner> poolOwners,
      required final List<Relay> relays,
      final PoolMetadataParams? metadata}) = _$PoolRegistrationParamsImpl;
  const _PoolRegistrationParams._() : super._();

  @override
  PoolKey get poolKey;
  @override
  String get vrfKeyHashHex;
  @override
  BigInt get pledge;
  @override
  BigInt get cost;
  @override
  Margin get margin;
  @override
  PoolRewardAccount get rewardAccount;
  @override
  List<PoolOwner> get poolOwners;
  @override
  List<Relay> get relays;
  @override
  PoolMetadataParams? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PoolRegistrationParamsImplCopyWith<_$PoolRegistrationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
