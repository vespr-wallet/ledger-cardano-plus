// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool_metadata_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PoolMetadataParams {
  String get metadataUrl => throw _privateConstructorUsedError;
  String get metadataHashHex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String metadataUrl, String metadataHashHex) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String metadataUrl, String metadataHashHex)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String metadataUrl, String metadataHashHex)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PoolMetadataParamsCopyWith<PoolMetadataParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolMetadataParamsCopyWith<$Res> {
  factory $PoolMetadataParamsCopyWith(
          PoolMetadataParams value, $Res Function(PoolMetadataParams) then) =
      _$PoolMetadataParamsCopyWithImpl<$Res, PoolMetadataParams>;
  @useResult
  $Res call({String metadataUrl, String metadataHashHex});
}

/// @nodoc
class _$PoolMetadataParamsCopyWithImpl<$Res, $Val extends PoolMetadataParams>
    implements $PoolMetadataParamsCopyWith<$Res> {
  _$PoolMetadataParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadataUrl = null,
    Object? metadataHashHex = null,
  }) {
    return _then(_value.copyWith(
      metadataUrl: null == metadataUrl
          ? _value.metadataUrl
          : metadataUrl // ignore: cast_nullable_to_non_nullable
              as String,
      metadataHashHex: null == metadataHashHex
          ? _value.metadataHashHex
          : metadataHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoolMetadataParamsImplCopyWith<$Res>
    implements $PoolMetadataParamsCopyWith<$Res> {
  factory _$$PoolMetadataParamsImplCopyWith(_$PoolMetadataParamsImpl value,
          $Res Function(_$PoolMetadataParamsImpl) then) =
      __$$PoolMetadataParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String metadataUrl, String metadataHashHex});
}

/// @nodoc
class __$$PoolMetadataParamsImplCopyWithImpl<$Res>
    extends _$PoolMetadataParamsCopyWithImpl<$Res, _$PoolMetadataParamsImpl>
    implements _$$PoolMetadataParamsImplCopyWith<$Res> {
  __$$PoolMetadataParamsImplCopyWithImpl(_$PoolMetadataParamsImpl _value,
      $Res Function(_$PoolMetadataParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadataUrl = null,
    Object? metadataHashHex = null,
  }) {
    return _then(_$PoolMetadataParamsImpl(
      metadataUrl: null == metadataUrl
          ? _value.metadataUrl
          : metadataUrl // ignore: cast_nullable_to_non_nullable
              as String,
      metadataHashHex: null == metadataHashHex
          ? _value.metadataHashHex
          : metadataHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PoolMetadataParamsImpl extends _PoolMetadataParams {
  const _$PoolMetadataParamsImpl(
      {required this.metadataUrl, required this.metadataHashHex})
      : super._();

  @override
  final String metadataUrl;
  @override
  final String metadataHashHex;

  @override
  String toString() {
    return 'PoolMetadataParams(metadataUrl: $metadataUrl, metadataHashHex: $metadataHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolMetadataParamsImpl &&
            (identical(other.metadataUrl, metadataUrl) ||
                other.metadataUrl == metadataUrl) &&
            (identical(other.metadataHashHex, metadataHashHex) ||
                other.metadataHashHex == metadataHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metadataUrl, metadataHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolMetadataParamsImplCopyWith<_$PoolMetadataParamsImpl> get copyWith =>
      __$$PoolMetadataParamsImplCopyWithImpl<_$PoolMetadataParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String metadataUrl, String metadataHashHex) $default,
  ) {
    return $default(metadataUrl, metadataHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String metadataUrl, String metadataHashHex)? $default,
  ) {
    return $default?.call(metadataUrl, metadataHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String metadataUrl, String metadataHashHex)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(metadataUrl, metadataHashHex);
    }
    return orElse();
  }
}

abstract class _PoolMetadataParams extends PoolMetadataParams {
  const factory _PoolMetadataParams(
      {required final String metadataUrl,
      required final String metadataHashHex}) = _$PoolMetadataParamsImpl;
  const _PoolMetadataParams._() : super._();

  @override
  String get metadataUrl;
  @override
  String get metadataHashHex;
  @override
  @JsonKey(ignore: true)
  _$$PoolMetadataParamsImplCopyWith<_$PoolMetadataParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
