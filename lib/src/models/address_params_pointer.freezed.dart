// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_pointer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressParamsPointer {
  SpendingParams get spendingParams;
  BlockchainPointer get stakingBlockchainPointer;

  /// Create a copy of AddressParamsPointer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressParamsPointerCopyWith<AddressParamsPointer> get copyWith =>
      _$AddressParamsPointerCopyWithImpl<AddressParamsPointer>(
          this as AddressParamsPointer, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressParamsPointer &&
            (identical(other.spendingParams, spendingParams) ||
                other.spendingParams == spendingParams) &&
            (identical(
                    other.stakingBlockchainPointer, stakingBlockchainPointer) ||
                other.stakingBlockchainPointer == stakingBlockchainPointer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, spendingParams, stakingBlockchainPointer);

  @override
  String toString() {
    return 'AddressParamsPointer(spendingParams: $spendingParams, stakingBlockchainPointer: $stakingBlockchainPointer)';
  }
}

/// @nodoc
abstract mixin class $AddressParamsPointerCopyWith<$Res> {
  factory $AddressParamsPointerCopyWith(AddressParamsPointer value,
          $Res Function(AddressParamsPointer) _then) =
      _$AddressParamsPointerCopyWithImpl;
  @useResult
  $Res call(
      {SpendingParams spendingParams,
      BlockchainPointer stakingBlockchainPointer});

  $SpendingParamsCopyWith<$Res> get spendingParams;
  $BlockchainPointerCopyWith<$Res> get stakingBlockchainPointer;
}

/// @nodoc
class _$AddressParamsPointerCopyWithImpl<$Res>
    implements $AddressParamsPointerCopyWith<$Res> {
  _$AddressParamsPointerCopyWithImpl(this._self, this._then);

  final AddressParamsPointer _self;
  final $Res Function(AddressParamsPointer) _then;

  /// Create a copy of AddressParamsPointer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingParams = null,
    Object? stakingBlockchainPointer = null,
  }) {
    return _then(_self.copyWith(
      spendingParams: null == spendingParams
          ? _self.spendingParams
          : spendingParams // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
      stakingBlockchainPointer: null == stakingBlockchainPointer
          ? _self.stakingBlockchainPointer
          : stakingBlockchainPointer // ignore: cast_nullable_to_non_nullable
              as BlockchainPointer,
    ));
  }

  /// Create a copy of AddressParamsPointer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingParams {
    return $SpendingParamsCopyWith<$Res>(_self.spendingParams, (value) {
      return _then(_self.copyWith(spendingParams: value));
    });
  }

  /// Create a copy of AddressParamsPointer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockchainPointerCopyWith<$Res> get stakingBlockchainPointer {
    return $BlockchainPointerCopyWith<$Res>(_self.stakingBlockchainPointer,
        (value) {
      return _then(_self.copyWith(stakingBlockchainPointer: value));
    });
  }
}

/// @nodoc

class _AddressParamsPointer extends AddressParamsPointer {
  _AddressParamsPointer(
      {required this.spendingParams, required this.stakingBlockchainPointer})
      : super._();

  @override
  final SpendingParams spendingParams;
  @override
  final BlockchainPointer stakingBlockchainPointer;

  /// Create a copy of AddressParamsPointer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressParamsPointerCopyWith<_AddressParamsPointer> get copyWith =>
      __$AddressParamsPointerCopyWithImpl<_AddressParamsPointer>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressParamsPointer &&
            (identical(other.spendingParams, spendingParams) ||
                other.spendingParams == spendingParams) &&
            (identical(
                    other.stakingBlockchainPointer, stakingBlockchainPointer) ||
                other.stakingBlockchainPointer == stakingBlockchainPointer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, spendingParams, stakingBlockchainPointer);

  @override
  String toString() {
    return 'AddressParamsPointer(spendingParams: $spendingParams, stakingBlockchainPointer: $stakingBlockchainPointer)';
  }
}

/// @nodoc
abstract mixin class _$AddressParamsPointerCopyWith<$Res>
    implements $AddressParamsPointerCopyWith<$Res> {
  factory _$AddressParamsPointerCopyWith(_AddressParamsPointer value,
          $Res Function(_AddressParamsPointer) _then) =
      __$AddressParamsPointerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SpendingParams spendingParams,
      BlockchainPointer stakingBlockchainPointer});

  @override
  $SpendingParamsCopyWith<$Res> get spendingParams;
  @override
  $BlockchainPointerCopyWith<$Res> get stakingBlockchainPointer;
}

/// @nodoc
class __$AddressParamsPointerCopyWithImpl<$Res>
    implements _$AddressParamsPointerCopyWith<$Res> {
  __$AddressParamsPointerCopyWithImpl(this._self, this._then);

  final _AddressParamsPointer _self;
  final $Res Function(_AddressParamsPointer) _then;

  /// Create a copy of AddressParamsPointer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spendingParams = null,
    Object? stakingBlockchainPointer = null,
  }) {
    return _then(_AddressParamsPointer(
      spendingParams: null == spendingParams
          ? _self.spendingParams
          : spendingParams // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
      stakingBlockchainPointer: null == stakingBlockchainPointer
          ? _self.stakingBlockchainPointer
          : stakingBlockchainPointer // ignore: cast_nullable_to_non_nullable
              as BlockchainPointer,
    ));
  }

  /// Create a copy of AddressParamsPointer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingParams {
    return $SpendingParamsCopyWith<$Res>(_self.spendingParams, (value) {
      return _then(_self.copyWith(spendingParams: value));
    });
  }

  /// Create a copy of AddressParamsPointer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockchainPointerCopyWith<$Res> get stakingBlockchainPointer {
    return $BlockchainPointerCopyWith<$Res>(_self.stakingBlockchainPointer,
        (value) {
      return _then(_self.copyWith(stakingBlockchainPointer: value));
    });
  }
}

// dart format on
