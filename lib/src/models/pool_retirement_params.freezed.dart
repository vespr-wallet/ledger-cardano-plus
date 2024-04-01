// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool_retirement_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PoolRetirementParams {
  List<int> get poolKeyPath => throw _privateConstructorUsedError;
  BigInt get retirementEpoch => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<int> poolKeyPath, BigInt retirementEpoch) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<int> poolKeyPath, BigInt retirementEpoch)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<int> poolKeyPath, BigInt retirementEpoch)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PoolRetirementParamsCopyWith<PoolRetirementParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolRetirementParamsCopyWith<$Res> {
  factory $PoolRetirementParamsCopyWith(PoolRetirementParams value,
          $Res Function(PoolRetirementParams) then) =
      _$PoolRetirementParamsCopyWithImpl<$Res, PoolRetirementParams>;
  @useResult
  $Res call({List<int> poolKeyPath, BigInt retirementEpoch});
}

/// @nodoc
class _$PoolRetirementParamsCopyWithImpl<$Res,
        $Val extends PoolRetirementParams>
    implements $PoolRetirementParamsCopyWith<$Res> {
  _$PoolRetirementParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolKeyPath = null,
    Object? retirementEpoch = null,
  }) {
    return _then(_value.copyWith(
      poolKeyPath: null == poolKeyPath
          ? _value.poolKeyPath
          : poolKeyPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
      retirementEpoch: null == retirementEpoch
          ? _value.retirementEpoch
          : retirementEpoch // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoolRetirementParamsImplCopyWith<$Res>
    implements $PoolRetirementParamsCopyWith<$Res> {
  factory _$$PoolRetirementParamsImplCopyWith(_$PoolRetirementParamsImpl value,
          $Res Function(_$PoolRetirementParamsImpl) then) =
      __$$PoolRetirementParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> poolKeyPath, BigInt retirementEpoch});
}

/// @nodoc
class __$$PoolRetirementParamsImplCopyWithImpl<$Res>
    extends _$PoolRetirementParamsCopyWithImpl<$Res, _$PoolRetirementParamsImpl>
    implements _$$PoolRetirementParamsImplCopyWith<$Res> {
  __$$PoolRetirementParamsImplCopyWithImpl(_$PoolRetirementParamsImpl _value,
      $Res Function(_$PoolRetirementParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poolKeyPath = null,
    Object? retirementEpoch = null,
  }) {
    return _then(_$PoolRetirementParamsImpl(
      poolKeyPath: null == poolKeyPath
          ? _value._poolKeyPath
          : poolKeyPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
      retirementEpoch: null == retirementEpoch
          ? _value.retirementEpoch
          : retirementEpoch // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$PoolRetirementParamsImpl extends _PoolRetirementParams {
  const _$PoolRetirementParamsImpl(
      {required final List<int> poolKeyPath, required this.retirementEpoch})
      : _poolKeyPath = poolKeyPath,
        super._();

  final List<int> _poolKeyPath;
  @override
  List<int> get poolKeyPath {
    if (_poolKeyPath is EqualUnmodifiableListView) return _poolKeyPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_poolKeyPath);
  }

  @override
  final BigInt retirementEpoch;

  @override
  String toString() {
    return 'PoolRetirementParams(poolKeyPath: $poolKeyPath, retirementEpoch: $retirementEpoch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolRetirementParamsImpl &&
            const DeepCollectionEquality()
                .equals(other._poolKeyPath, _poolKeyPath) &&
            (identical(other.retirementEpoch, retirementEpoch) ||
                other.retirementEpoch == retirementEpoch));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_poolKeyPath), retirementEpoch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolRetirementParamsImplCopyWith<_$PoolRetirementParamsImpl>
      get copyWith =>
          __$$PoolRetirementParamsImplCopyWithImpl<_$PoolRetirementParamsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<int> poolKeyPath, BigInt retirementEpoch) $default,
  ) {
    return $default(poolKeyPath, retirementEpoch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<int> poolKeyPath, BigInt retirementEpoch)? $default,
  ) {
    return $default?.call(poolKeyPath, retirementEpoch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<int> poolKeyPath, BigInt retirementEpoch)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(poolKeyPath, retirementEpoch);
    }
    return orElse();
  }
}

abstract class _PoolRetirementParams extends PoolRetirementParams {
  const factory _PoolRetirementParams(
      {required final List<int> poolKeyPath,
      required final BigInt retirementEpoch}) = _$PoolRetirementParamsImpl;
  const _PoolRetirementParams._() : super._();

  @override
  List<int> get poolKeyPath;
  @override
  BigInt get retirementEpoch;
  @override
  @JsonKey(ignore: true)
  _$$PoolRetirementParamsImplCopyWith<_$PoolRetirementParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
