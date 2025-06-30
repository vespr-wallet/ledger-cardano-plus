// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressParamsBase {
  SpendingParams get spendingParams;

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressParamsBaseCopyWith<AddressParamsBase> get copyWith =>
      _$AddressParamsBaseCopyWithImpl<AddressParamsBase>(
          this as AddressParamsBase, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressParamsBase &&
            (identical(other.spendingParams, spendingParams) ||
                other.spendingParams == spendingParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spendingParams);

  @override
  String toString() {
    return 'AddressParamsBase(spendingParams: $spendingParams)';
  }
}

/// @nodoc
abstract mixin class $AddressParamsBaseCopyWith<$Res> {
  factory $AddressParamsBaseCopyWith(
          AddressParamsBase value, $Res Function(AddressParamsBase) _then) =
      _$AddressParamsBaseCopyWithImpl;
  @useResult
  $Res call({SpendingParams spendingParams});

  $SpendingParamsCopyWith<$Res> get spendingParams;
}

/// @nodoc
class _$AddressParamsBaseCopyWithImpl<$Res>
    implements $AddressParamsBaseCopyWith<$Res> {
  _$AddressParamsBaseCopyWithImpl(this._self, this._then);

  final AddressParamsBase _self;
  final $Res Function(AddressParamsBase) _then;

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingParams = null,
  }) {
    return _then(_self.copyWith(
      spendingParams: null == spendingParams
          ? _self.spendingParams
          : spendingParams // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
    ));
  }

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingParams {
    return $SpendingParamsCopyWith<$Res>(_self.spendingParams, (value) {
      return _then(_self.copyWith(spendingParams: value));
    });
  }
}

/// @nodoc

class AddressParamsBaseStakingPath extends AddressParamsBase {
  AddressParamsBaseStakingPath(
      {required this.spendingParams, required this.stakingPath})
      : super._();

  @override
  final SpendingParams spendingParams;
  final LedgerSigningPath stakingPath;

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressParamsBaseStakingPathCopyWith<AddressParamsBaseStakingPath>
      get copyWith => _$AddressParamsBaseStakingPathCopyWithImpl<
          AddressParamsBaseStakingPath>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressParamsBaseStakingPath &&
            (identical(other.spendingParams, spendingParams) ||
                other.spendingParams == spendingParams) &&
            (identical(other.stakingPath, stakingPath) ||
                other.stakingPath == stakingPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spendingParams, stakingPath);

  @override
  String toString() {
    return 'AddressParamsBase.stakingPath(spendingParams: $spendingParams, stakingPath: $stakingPath)';
  }
}

/// @nodoc
abstract mixin class $AddressParamsBaseStakingPathCopyWith<$Res>
    implements $AddressParamsBaseCopyWith<$Res> {
  factory $AddressParamsBaseStakingPathCopyWith(
          AddressParamsBaseStakingPath value,
          $Res Function(AddressParamsBaseStakingPath) _then) =
      _$AddressParamsBaseStakingPathCopyWithImpl;
  @override
  @useResult
  $Res call({SpendingParams spendingParams, LedgerSigningPath stakingPath});

  @override
  $SpendingParamsCopyWith<$Res> get spendingParams;
  $LedgerSigningPathCopyWith<$Res> get stakingPath;
}

/// @nodoc
class _$AddressParamsBaseStakingPathCopyWithImpl<$Res>
    implements $AddressParamsBaseStakingPathCopyWith<$Res> {
  _$AddressParamsBaseStakingPathCopyWithImpl(this._self, this._then);

  final AddressParamsBaseStakingPath _self;
  final $Res Function(AddressParamsBaseStakingPath) _then;

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spendingParams = null,
    Object? stakingPath = null,
  }) {
    return _then(AddressParamsBaseStakingPath(
      spendingParams: null == spendingParams
          ? _self.spendingParams
          : spendingParams // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
      stakingPath: null == stakingPath
          ? _self.stakingPath
          : stakingPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingParams {
    return $SpendingParamsCopyWith<$Res>(_self.spendingParams, (value) {
      return _then(_self.copyWith(spendingParams: value));
    });
  }

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get stakingPath {
    return $LedgerSigningPathCopyWith<$Res>(_self.stakingPath, (value) {
      return _then(_self.copyWith(stakingPath: value));
    });
  }
}

/// @nodoc

class AddressParamsBaseStakingKeyHash extends AddressParamsBase {
  AddressParamsBaseStakingKeyHash(
      {required this.spendingParams, required this.stakingKeyHashHex})
      : super._();

  @override
  final SpendingParams spendingParams;
  final String stakingKeyHashHex;

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressParamsBaseStakingKeyHashCopyWith<AddressParamsBaseStakingKeyHash>
      get copyWith => _$AddressParamsBaseStakingKeyHashCopyWithImpl<
          AddressParamsBaseStakingKeyHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressParamsBaseStakingKeyHash &&
            (identical(other.spendingParams, spendingParams) ||
                other.spendingParams == spendingParams) &&
            (identical(other.stakingKeyHashHex, stakingKeyHashHex) ||
                other.stakingKeyHashHex == stakingKeyHashHex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, spendingParams, stakingKeyHashHex);

  @override
  String toString() {
    return 'AddressParamsBase.stakingKeyHash(spendingParams: $spendingParams, stakingKeyHashHex: $stakingKeyHashHex)';
  }
}

/// @nodoc
abstract mixin class $AddressParamsBaseStakingKeyHashCopyWith<$Res>
    implements $AddressParamsBaseCopyWith<$Res> {
  factory $AddressParamsBaseStakingKeyHashCopyWith(
          AddressParamsBaseStakingKeyHash value,
          $Res Function(AddressParamsBaseStakingKeyHash) _then) =
      _$AddressParamsBaseStakingKeyHashCopyWithImpl;
  @override
  @useResult
  $Res call({SpendingParams spendingParams, String stakingKeyHashHex});

  @override
  $SpendingParamsCopyWith<$Res> get spendingParams;
}

/// @nodoc
class _$AddressParamsBaseStakingKeyHashCopyWithImpl<$Res>
    implements $AddressParamsBaseStakingKeyHashCopyWith<$Res> {
  _$AddressParamsBaseStakingKeyHashCopyWithImpl(this._self, this._then);

  final AddressParamsBaseStakingKeyHash _self;
  final $Res Function(AddressParamsBaseStakingKeyHash) _then;

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spendingParams = null,
    Object? stakingKeyHashHex = null,
  }) {
    return _then(AddressParamsBaseStakingKeyHash(
      spendingParams: null == spendingParams
          ? _self.spendingParams
          : spendingParams // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
      stakingKeyHashHex: null == stakingKeyHashHex
          ? _self.stakingKeyHashHex
          : stakingKeyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingParams {
    return $SpendingParamsCopyWith<$Res>(_self.spendingParams, (value) {
      return _then(_self.copyWith(spendingParams: value));
    });
  }
}

/// @nodoc

class AddressParamsBaseStakingScriptHash extends AddressParamsBase {
  AddressParamsBaseStakingScriptHash(
      {required this.spendingParams, required this.stakingScriptHashHex})
      : super._();

  @override
  final SpendingParams spendingParams;
  final String stakingScriptHashHex;

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressParamsBaseStakingScriptHashCopyWith<
          AddressParamsBaseStakingScriptHash>
      get copyWith => _$AddressParamsBaseStakingScriptHashCopyWithImpl<
          AddressParamsBaseStakingScriptHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressParamsBaseStakingScriptHash &&
            (identical(other.spendingParams, spendingParams) ||
                other.spendingParams == spendingParams) &&
            (identical(other.stakingScriptHashHex, stakingScriptHashHex) ||
                other.stakingScriptHashHex == stakingScriptHashHex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, spendingParams, stakingScriptHashHex);

  @override
  String toString() {
    return 'AddressParamsBase.stakingScriptHash(spendingParams: $spendingParams, stakingScriptHashHex: $stakingScriptHashHex)';
  }
}

/// @nodoc
abstract mixin class $AddressParamsBaseStakingScriptHashCopyWith<$Res>
    implements $AddressParamsBaseCopyWith<$Res> {
  factory $AddressParamsBaseStakingScriptHashCopyWith(
          AddressParamsBaseStakingScriptHash value,
          $Res Function(AddressParamsBaseStakingScriptHash) _then) =
      _$AddressParamsBaseStakingScriptHashCopyWithImpl;
  @override
  @useResult
  $Res call({SpendingParams spendingParams, String stakingScriptHashHex});

  @override
  $SpendingParamsCopyWith<$Res> get spendingParams;
}

/// @nodoc
class _$AddressParamsBaseStakingScriptHashCopyWithImpl<$Res>
    implements $AddressParamsBaseStakingScriptHashCopyWith<$Res> {
  _$AddressParamsBaseStakingScriptHashCopyWithImpl(this._self, this._then);

  final AddressParamsBaseStakingScriptHash _self;
  final $Res Function(AddressParamsBaseStakingScriptHash) _then;

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spendingParams = null,
    Object? stakingScriptHashHex = null,
  }) {
    return _then(AddressParamsBaseStakingScriptHash(
      spendingParams: null == spendingParams
          ? _self.spendingParams
          : spendingParams // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
      stakingScriptHashHex: null == stakingScriptHashHex
          ? _self.stakingScriptHashHex
          : stakingScriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AddressParamsBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingParams {
    return $SpendingParamsCopyWith<$Res>(_self.spendingParams, (value) {
      return _then(_self.copyWith(spendingParams: value));
    });
  }
}

// dart format on
