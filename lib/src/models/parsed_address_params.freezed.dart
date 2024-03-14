// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedAddressParams {
  AddressType get type => throw _privateConstructorUsedError;
  SpendingDataSource get spendingDataSource =>
      throw _privateConstructorUsedError;
  StakingDataSource get stakingDataSource => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressType type,
            int protocolMagic,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)
        byron,
    required TResult Function(
            AddressType type,
            int networkId,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)
        shelley,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AddressType type,
            int protocolMagic,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        byron,
    TResult? Function(
            AddressType type,
            int networkId,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        shelley,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AddressType type,
            int protocolMagic,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        byron,
    TResult Function(
            AddressType type,
            int networkId,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        shelley,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedAddressParamsCopyWith<ParsedAddressParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedAddressParamsCopyWith<$Res> {
  factory $ParsedAddressParamsCopyWith(
          ParsedAddressParams value, $Res Function(ParsedAddressParams) then) =
      _$ParsedAddressParamsCopyWithImpl<$Res, ParsedAddressParams>;
  @useResult
  $Res call(
      {AddressType type,
      SpendingDataSource spendingDataSource,
      StakingDataSource stakingDataSource});

  $SpendingDataSourceCopyWith<$Res> get spendingDataSource;
  $StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class _$ParsedAddressParamsCopyWithImpl<$Res, $Val extends ParsedAddressParams>
    implements $ParsedAddressParamsCopyWith<$Res> {
  _$ParsedAddressParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? spendingDataSource = null,
    Object? stakingDataSource = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      spendingDataSource: null == spendingDataSource
          ? _value.spendingDataSource
          : spendingDataSource // ignore: cast_nullable_to_non_nullable
              as SpendingDataSource,
      stakingDataSource: null == stakingDataSource
          ? _value.stakingDataSource
          : stakingDataSource // ignore: cast_nullable_to_non_nullable
              as StakingDataSource,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpendingDataSourceCopyWith<$Res> get spendingDataSource {
    return $SpendingDataSourceCopyWith<$Res>(_value.spendingDataSource,
        (value) {
      return _then(_value.copyWith(spendingDataSource: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StakingDataSourceCopyWith<$Res> get stakingDataSource {
    return $StakingDataSourceCopyWith<$Res>(_value.stakingDataSource, (value) {
      return _then(_value.copyWith(stakingDataSource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ByronAddressParamsImplCopyWith<$Res>
    implements $ParsedAddressParamsCopyWith<$Res> {
  factory _$$ByronAddressParamsImplCopyWith(_$ByronAddressParamsImpl value,
          $Res Function(_$ByronAddressParamsImpl) then) =
      __$$ByronAddressParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddressType type,
      int protocolMagic,
      SpendingDataSource spendingDataSource,
      StakingDataSource stakingDataSource});

  @override
  $SpendingDataSourceCopyWith<$Res> get spendingDataSource;
  @override
  $StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class __$$ByronAddressParamsImplCopyWithImpl<$Res>
    extends _$ParsedAddressParamsCopyWithImpl<$Res, _$ByronAddressParamsImpl>
    implements _$$ByronAddressParamsImplCopyWith<$Res> {
  __$$ByronAddressParamsImplCopyWithImpl(_$ByronAddressParamsImpl _value,
      $Res Function(_$ByronAddressParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? protocolMagic = null,
    Object? spendingDataSource = null,
    Object? stakingDataSource = null,
  }) {
    return _then(_$ByronAddressParamsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      protocolMagic: null == protocolMagic
          ? _value.protocolMagic
          : protocolMagic // ignore: cast_nullable_to_non_nullable
              as int,
      spendingDataSource: null == spendingDataSource
          ? _value.spendingDataSource
          : spendingDataSource // ignore: cast_nullable_to_non_nullable
              as SpendingDataSource,
      stakingDataSource: null == stakingDataSource
          ? _value.stakingDataSource
          : stakingDataSource // ignore: cast_nullable_to_non_nullable
              as StakingDataSource,
    ));
  }
}

/// @nodoc

class _$ByronAddressParamsImpl extends ByronAddressParams {
  const _$ByronAddressParamsImpl(
      {required this.type,
      required this.protocolMagic,
      required this.spendingDataSource,
      required this.stakingDataSource})
      : super._();

  @override
  final AddressType type;
  @override
  final int protocolMagic;
  @override
  final SpendingDataSource spendingDataSource;
  @override
  final StakingDataSource stakingDataSource;

  @override
  String toString() {
    return 'ParsedAddressParams.byron(type: $type, protocolMagic: $protocolMagic, spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ByronAddressParamsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.protocolMagic, protocolMagic) ||
                other.protocolMagic == protocolMagic) &&
            (identical(other.spendingDataSource, spendingDataSource) ||
                other.spendingDataSource == spendingDataSource) &&
            (identical(other.stakingDataSource, stakingDataSource) ||
                other.stakingDataSource == stakingDataSource));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, protocolMagic, spendingDataSource, stakingDataSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ByronAddressParamsImplCopyWith<_$ByronAddressParamsImpl> get copyWith =>
      __$$ByronAddressParamsImplCopyWithImpl<_$ByronAddressParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressType type,
            int protocolMagic,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)
        byron,
    required TResult Function(
            AddressType type,
            int networkId,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)
        shelley,
  }) {
    return byron(type, protocolMagic, spendingDataSource, stakingDataSource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AddressType type,
            int protocolMagic,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        byron,
    TResult? Function(
            AddressType type,
            int networkId,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        shelley,
  }) {
    return byron?.call(
        type, protocolMagic, spendingDataSource, stakingDataSource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AddressType type,
            int protocolMagic,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        byron,
    TResult Function(
            AddressType type,
            int networkId,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        shelley,
    required TResult orElse(),
  }) {
    if (byron != null) {
      return byron(type, protocolMagic, spendingDataSource, stakingDataSource);
    }
    return orElse();
  }
}

abstract class ByronAddressParams extends ParsedAddressParams {
  const factory ByronAddressParams(
          {required final AddressType type,
          required final int protocolMagic,
          required final SpendingDataSource spendingDataSource,
          required final StakingDataSource stakingDataSource}) =
      _$ByronAddressParamsImpl;
  const ByronAddressParams._() : super._();

  @override
  AddressType get type;
  int get protocolMagic;
  @override
  SpendingDataSource get spendingDataSource;
  @override
  StakingDataSource get stakingDataSource;
  @override
  @JsonKey(ignore: true)
  _$$ByronAddressParamsImplCopyWith<_$ByronAddressParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShelleyAddressParamsImplCopyWith<$Res>
    implements $ParsedAddressParamsCopyWith<$Res> {
  factory _$$ShelleyAddressParamsImplCopyWith(_$ShelleyAddressParamsImpl value,
          $Res Function(_$ShelleyAddressParamsImpl) then) =
      __$$ShelleyAddressParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddressType type,
      int networkId,
      SpendingDataSource spendingDataSource,
      StakingDataSource stakingDataSource});

  @override
  $SpendingDataSourceCopyWith<$Res> get spendingDataSource;
  @override
  $StakingDataSourceCopyWith<$Res> get stakingDataSource;
}

/// @nodoc
class __$$ShelleyAddressParamsImplCopyWithImpl<$Res>
    extends _$ParsedAddressParamsCopyWithImpl<$Res, _$ShelleyAddressParamsImpl>
    implements _$$ShelleyAddressParamsImplCopyWith<$Res> {
  __$$ShelleyAddressParamsImplCopyWithImpl(_$ShelleyAddressParamsImpl _value,
      $Res Function(_$ShelleyAddressParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? networkId = null,
    Object? spendingDataSource = null,
    Object? stakingDataSource = null,
  }) {
    return _then(_$ShelleyAddressParamsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      networkId: null == networkId
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as int,
      spendingDataSource: null == spendingDataSource
          ? _value.spendingDataSource
          : spendingDataSource // ignore: cast_nullable_to_non_nullable
              as SpendingDataSource,
      stakingDataSource: null == stakingDataSource
          ? _value.stakingDataSource
          : stakingDataSource // ignore: cast_nullable_to_non_nullable
              as StakingDataSource,
    ));
  }
}

/// @nodoc

class _$ShelleyAddressParamsImpl extends ShelleyAddressParams {
  const _$ShelleyAddressParamsImpl(
      {required this.type,
      required this.networkId,
      required this.spendingDataSource,
      required this.stakingDataSource})
      : super._();

  @override
  final AddressType type;
  @override
  final int networkId;
  @override
  final SpendingDataSource spendingDataSource;
  @override
  final StakingDataSource stakingDataSource;

  @override
  String toString() {
    return 'ParsedAddressParams.shelley(type: $type, networkId: $networkId, spendingDataSource: $spendingDataSource, stakingDataSource: $stakingDataSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShelleyAddressParamsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.networkId, networkId) ||
                other.networkId == networkId) &&
            (identical(other.spendingDataSource, spendingDataSource) ||
                other.spendingDataSource == spendingDataSource) &&
            (identical(other.stakingDataSource, stakingDataSource) ||
                other.stakingDataSource == stakingDataSource));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, networkId, spendingDataSource, stakingDataSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShelleyAddressParamsImplCopyWith<_$ShelleyAddressParamsImpl>
      get copyWith =>
          __$$ShelleyAddressParamsImplCopyWithImpl<_$ShelleyAddressParamsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressType type,
            int protocolMagic,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)
        byron,
    required TResult Function(
            AddressType type,
            int networkId,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)
        shelley,
  }) {
    return shelley(type, networkId, spendingDataSource, stakingDataSource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AddressType type,
            int protocolMagic,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        byron,
    TResult? Function(
            AddressType type,
            int networkId,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        shelley,
  }) {
    return shelley?.call(
        type, networkId, spendingDataSource, stakingDataSource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AddressType type,
            int protocolMagic,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        byron,
    TResult Function(
            AddressType type,
            int networkId,
            SpendingDataSource spendingDataSource,
            StakingDataSource stakingDataSource)?
        shelley,
    required TResult orElse(),
  }) {
    if (shelley != null) {
      return shelley(type, networkId, spendingDataSource, stakingDataSource);
    }
    return orElse();
  }
}

abstract class ShelleyAddressParams extends ParsedAddressParams {
  const factory ShelleyAddressParams(
          {required final AddressType type,
          required final int networkId,
          required final SpendingDataSource spendingDataSource,
          required final StakingDataSource stakingDataSource}) =
      _$ShelleyAddressParamsImpl;
  const ShelleyAddressParams._() : super._();

  @override
  AddressType get type;
  int get networkId;
  @override
  SpendingDataSource get spendingDataSource;
  @override
  StakingDataSource get stakingDataSource;
  @override
  @JsonKey(ignore: true)
  _$$ShelleyAddressParamsImplCopyWith<_$ShelleyAddressParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
