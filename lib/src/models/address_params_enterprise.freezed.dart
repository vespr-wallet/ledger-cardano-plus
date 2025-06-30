// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_enterprise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressParamsEnterprise {
  SpendingParams get spendingPath;

  /// Create a copy of AddressParamsEnterprise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressParamsEnterpriseCopyWith<AddressParamsEnterprise> get copyWith =>
      _$AddressParamsEnterpriseCopyWithImpl<AddressParamsEnterprise>(
          this as AddressParamsEnterprise, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressParamsEnterprise &&
            (identical(other.spendingPath, spendingPath) ||
                other.spendingPath == spendingPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spendingPath);

  @override
  String toString() {
    return 'AddressParamsEnterprise(spendingPath: $spendingPath)';
  }
}

/// @nodoc
abstract mixin class $AddressParamsEnterpriseCopyWith<$Res> {
  factory $AddressParamsEnterpriseCopyWith(AddressParamsEnterprise value,
          $Res Function(AddressParamsEnterprise) _then) =
      _$AddressParamsEnterpriseCopyWithImpl;
  @useResult
  $Res call({SpendingParams spendingPath});

  $SpendingParamsCopyWith<$Res> get spendingPath;
}

/// @nodoc
class _$AddressParamsEnterpriseCopyWithImpl<$Res>
    implements $AddressParamsEnterpriseCopyWith<$Res> {
  _$AddressParamsEnterpriseCopyWithImpl(this._self, this._then);

  final AddressParamsEnterprise _self;
  final $Res Function(AddressParamsEnterprise) _then;

  /// Create a copy of AddressParamsEnterprise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingPath = null,
  }) {
    return _then(_self.copyWith(
      spendingPath: null == spendingPath
          ? _self.spendingPath
          : spendingPath // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
    ));
  }

  /// Create a copy of AddressParamsEnterprise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingPath {
    return $SpendingParamsCopyWith<$Res>(_self.spendingPath, (value) {
      return _then(_self.copyWith(spendingPath: value));
    });
  }
}

/// @nodoc

class _AddressParamsEnterprise extends AddressParamsEnterprise {
  _AddressParamsEnterprise({required this.spendingPath}) : super._();

  @override
  final SpendingParams spendingPath;

  /// Create a copy of AddressParamsEnterprise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressParamsEnterpriseCopyWith<_AddressParamsEnterprise> get copyWith =>
      __$AddressParamsEnterpriseCopyWithImpl<_AddressParamsEnterprise>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressParamsEnterprise &&
            (identical(other.spendingPath, spendingPath) ||
                other.spendingPath == spendingPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spendingPath);

  @override
  String toString() {
    return 'AddressParamsEnterprise(spendingPath: $spendingPath)';
  }
}

/// @nodoc
abstract mixin class _$AddressParamsEnterpriseCopyWith<$Res>
    implements $AddressParamsEnterpriseCopyWith<$Res> {
  factory _$AddressParamsEnterpriseCopyWith(_AddressParamsEnterprise value,
          $Res Function(_AddressParamsEnterprise) _then) =
      __$AddressParamsEnterpriseCopyWithImpl;
  @override
  @useResult
  $Res call({SpendingParams spendingPath});

  @override
  $SpendingParamsCopyWith<$Res> get spendingPath;
}

/// @nodoc
class __$AddressParamsEnterpriseCopyWithImpl<$Res>
    implements _$AddressParamsEnterpriseCopyWith<$Res> {
  __$AddressParamsEnterpriseCopyWithImpl(this._self, this._then);

  final _AddressParamsEnterprise _self;
  final $Res Function(_AddressParamsEnterprise) _then;

  /// Create a copy of AddressParamsEnterprise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spendingPath = null,
  }) {
    return _then(_AddressParamsEnterprise(
      spendingPath: null == spendingPath
          ? _self.spendingPath
          : spendingPath // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
    ));
  }

  /// Create a copy of AddressParamsEnterprise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingPath {
    return $SpendingParamsCopyWith<$Res>(_self.spendingPath, (value) {
      return _then(_self.copyWith(spendingPath: value));
    });
  }
}

// dart format on
