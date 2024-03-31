// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_enterprise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressParamsEnterprise {
  SpendingParams get spendingPath => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SpendingParams spendingPath) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SpendingParams spendingPath)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SpendingParams spendingPath)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressParamsEnterpriseCopyWith<AddressParamsEnterprise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressParamsEnterpriseCopyWith<$Res> {
  factory $AddressParamsEnterpriseCopyWith(AddressParamsEnterprise value,
          $Res Function(AddressParamsEnterprise) then) =
      _$AddressParamsEnterpriseCopyWithImpl<$Res, AddressParamsEnterprise>;
  @useResult
  $Res call({SpendingParams spendingPath});

  $SpendingParamsCopyWith<$Res> get spendingPath;
}

/// @nodoc
class _$AddressParamsEnterpriseCopyWithImpl<$Res,
        $Val extends AddressParamsEnterprise>
    implements $AddressParamsEnterpriseCopyWith<$Res> {
  _$AddressParamsEnterpriseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingPath = null,
  }) {
    return _then(_value.copyWith(
      spendingPath: null == spendingPath
          ? _value.spendingPath
          : spendingPath // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingPath {
    return $SpendingParamsCopyWith<$Res>(_value.spendingPath, (value) {
      return _then(_value.copyWith(spendingPath: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressParamsEnterpriseImplCopyWith<$Res>
    implements $AddressParamsEnterpriseCopyWith<$Res> {
  factory _$$AddressParamsEnterpriseImplCopyWith(
          _$AddressParamsEnterpriseImpl value,
          $Res Function(_$AddressParamsEnterpriseImpl) then) =
      __$$AddressParamsEnterpriseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SpendingParams spendingPath});

  @override
  $SpendingParamsCopyWith<$Res> get spendingPath;
}

/// @nodoc
class __$$AddressParamsEnterpriseImplCopyWithImpl<$Res>
    extends _$AddressParamsEnterpriseCopyWithImpl<$Res,
        _$AddressParamsEnterpriseImpl>
    implements _$$AddressParamsEnterpriseImplCopyWith<$Res> {
  __$$AddressParamsEnterpriseImplCopyWithImpl(
      _$AddressParamsEnterpriseImpl _value,
      $Res Function(_$AddressParamsEnterpriseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingPath = null,
  }) {
    return _then(_$AddressParamsEnterpriseImpl(
      spendingPath: null == spendingPath
          ? _value.spendingPath
          : spendingPath // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
    ));
  }
}

/// @nodoc

class _$AddressParamsEnterpriseImpl extends _AddressParamsEnterprise {
  const _$AddressParamsEnterpriseImpl({required this.spendingPath}) : super._();

  @override
  final SpendingParams spendingPath;

  @override
  String toString() {
    return 'AddressParamsEnterprise(spendingPath: $spendingPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressParamsEnterpriseImpl &&
            (identical(other.spendingPath, spendingPath) ||
                other.spendingPath == spendingPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spendingPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressParamsEnterpriseImplCopyWith<_$AddressParamsEnterpriseImpl>
      get copyWith => __$$AddressParamsEnterpriseImplCopyWithImpl<
          _$AddressParamsEnterpriseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SpendingParams spendingPath) $default,
  ) {
    return $default(spendingPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SpendingParams spendingPath)? $default,
  ) {
    return $default?.call(spendingPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SpendingParams spendingPath)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(spendingPath);
    }
    return orElse();
  }
}

abstract class _AddressParamsEnterprise extends AddressParamsEnterprise {
  const factory _AddressParamsEnterprise(
          {required final SpendingParams spendingPath}) =
      _$AddressParamsEnterpriseImpl;
  const _AddressParamsEnterprise._() : super._();

  @override
  SpendingParams get spendingPath;
  @override
  @JsonKey(ignore: true)
  _$$AddressParamsEnterpriseImplCopyWith<_$AddressParamsEnterpriseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
