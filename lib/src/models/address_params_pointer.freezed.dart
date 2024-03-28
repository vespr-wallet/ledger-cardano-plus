// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_pointer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressParamsPointer {
  SpendingParams get spendingParams => throw _privateConstructorUsedError;
  BlockchainPointer get stakingBlockchainPointer =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SpendingParams spendingParams,
            BlockchainPointer stakingBlockchainPointer)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SpendingParams spendingParams,
            BlockchainPointer stakingBlockchainPointer)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SpendingParams spendingParams,
            BlockchainPointer stakingBlockchainPointer)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressParamsPointerCopyWith<AddressParamsPointer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressParamsPointerCopyWith<$Res> {
  factory $AddressParamsPointerCopyWith(AddressParamsPointer value,
          $Res Function(AddressParamsPointer) then) =
      _$AddressParamsPointerCopyWithImpl<$Res, AddressParamsPointer>;
  @useResult
  $Res call(
      {SpendingParams spendingParams,
      BlockchainPointer stakingBlockchainPointer});

  $SpendingParamsCopyWith<$Res> get spendingParams;
  $BlockchainPointerCopyWith<$Res> get stakingBlockchainPointer;
}

/// @nodoc
class _$AddressParamsPointerCopyWithImpl<$Res,
        $Val extends AddressParamsPointer>
    implements $AddressParamsPointerCopyWith<$Res> {
  _$AddressParamsPointerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingParams = null,
    Object? stakingBlockchainPointer = null,
  }) {
    return _then(_value.copyWith(
      spendingParams: null == spendingParams
          ? _value.spendingParams
          : spendingParams // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
      stakingBlockchainPointer: null == stakingBlockchainPointer
          ? _value.stakingBlockchainPointer
          : stakingBlockchainPointer // ignore: cast_nullable_to_non_nullable
              as BlockchainPointer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpendingParamsCopyWith<$Res> get spendingParams {
    return $SpendingParamsCopyWith<$Res>(_value.spendingParams, (value) {
      return _then(_value.copyWith(spendingParams: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BlockchainPointerCopyWith<$Res> get stakingBlockchainPointer {
    return $BlockchainPointerCopyWith<$Res>(_value.stakingBlockchainPointer,
        (value) {
      return _then(_value.copyWith(stakingBlockchainPointer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressParamsPointerImplCopyWith<$Res>
    implements $AddressParamsPointerCopyWith<$Res> {
  factory _$$AddressParamsPointerImplCopyWith(_$AddressParamsPointerImpl value,
          $Res Function(_$AddressParamsPointerImpl) then) =
      __$$AddressParamsPointerImplCopyWithImpl<$Res>;
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
class __$$AddressParamsPointerImplCopyWithImpl<$Res>
    extends _$AddressParamsPointerCopyWithImpl<$Res, _$AddressParamsPointerImpl>
    implements _$$AddressParamsPointerImplCopyWith<$Res> {
  __$$AddressParamsPointerImplCopyWithImpl(_$AddressParamsPointerImpl _value,
      $Res Function(_$AddressParamsPointerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingParams = null,
    Object? stakingBlockchainPointer = null,
  }) {
    return _then(_$AddressParamsPointerImpl(
      spendingParams: null == spendingParams
          ? _value.spendingParams
          : spendingParams // ignore: cast_nullable_to_non_nullable
              as SpendingParams,
      stakingBlockchainPointer: null == stakingBlockchainPointer
          ? _value.stakingBlockchainPointer
          : stakingBlockchainPointer // ignore: cast_nullable_to_non_nullable
              as BlockchainPointer,
    ));
  }
}

/// @nodoc

class _$AddressParamsPointerImpl extends _AddressParamsPointer {
  _$AddressParamsPointerImpl(
      {required this.spendingParams, required this.stakingBlockchainPointer})
      : super._();

  @override
  final SpendingParams spendingParams;
  @override
  final BlockchainPointer stakingBlockchainPointer;

  @override
  String toString() {
    return 'AddressParamsPointer(spendingParams: $spendingParams, stakingBlockchainPointer: $stakingBlockchainPointer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressParamsPointerImpl &&
            (identical(other.spendingParams, spendingParams) ||
                other.spendingParams == spendingParams) &&
            (identical(
                    other.stakingBlockchainPointer, stakingBlockchainPointer) ||
                other.stakingBlockchainPointer == stakingBlockchainPointer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, spendingParams, stakingBlockchainPointer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressParamsPointerImplCopyWith<_$AddressParamsPointerImpl>
      get copyWith =>
          __$$AddressParamsPointerImplCopyWithImpl<_$AddressParamsPointerImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SpendingParams spendingParams,
            BlockchainPointer stakingBlockchainPointer)
        $default,
  ) {
    return $default(spendingParams, stakingBlockchainPointer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SpendingParams spendingParams,
            BlockchainPointer stakingBlockchainPointer)?
        $default,
  ) {
    return $default?.call(spendingParams, stakingBlockchainPointer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SpendingParams spendingParams,
            BlockchainPointer stakingBlockchainPointer)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(spendingParams, stakingBlockchainPointer);
    }
    return orElse();
  }
}

abstract class _AddressParamsPointer extends AddressParamsPointer {
  factory _AddressParamsPointer(
          {required final SpendingParams spendingParams,
          required final BlockchainPointer stakingBlockchainPointer}) =
      _$AddressParamsPointerImpl;
  _AddressParamsPointer._() : super._();

  @override
  SpendingParams get spendingParams;
  @override
  BlockchainPointer get stakingBlockchainPointer;
  @override
  @JsonKey(ignore: true)
  _$$AddressParamsPointerImplCopyWith<_$AddressParamsPointerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
