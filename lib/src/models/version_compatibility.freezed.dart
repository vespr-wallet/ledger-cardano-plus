// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_compatibility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VersionCompatibility {
  bool get isCompatible => throw _privateConstructorUsedError;
  String? get recommendedVersion => throw _privateConstructorUsedError;
  bool get supportsNativeScriptHashDerivation =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isCompatible, String? recommendedVersion,
            bool supportsNativeScriptHashDerivation)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isCompatible, String? recommendedVersion,
            bool supportsNativeScriptHashDerivation)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isCompatible, String? recommendedVersion,
            bool supportsNativeScriptHashDerivation)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VersionCompatibilityCopyWith<VersionCompatibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionCompatibilityCopyWith<$Res> {
  factory $VersionCompatibilityCopyWith(VersionCompatibility value,
          $Res Function(VersionCompatibility) then) =
      _$VersionCompatibilityCopyWithImpl<$Res, VersionCompatibility>;
  @useResult
  $Res call(
      {bool isCompatible,
      String? recommendedVersion,
      bool supportsNativeScriptHashDerivation});
}

/// @nodoc
class _$VersionCompatibilityCopyWithImpl<$Res,
        $Val extends VersionCompatibility>
    implements $VersionCompatibilityCopyWith<$Res> {
  _$VersionCompatibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompatible = null,
    Object? recommendedVersion = freezed,
    Object? supportsNativeScriptHashDerivation = null,
  }) {
    return _then(_value.copyWith(
      isCompatible: null == isCompatible
          ? _value.isCompatible
          : isCompatible // ignore: cast_nullable_to_non_nullable
              as bool,
      recommendedVersion: freezed == recommendedVersion
          ? _value.recommendedVersion
          : recommendedVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      supportsNativeScriptHashDerivation: null ==
              supportsNativeScriptHashDerivation
          ? _value.supportsNativeScriptHashDerivation
          : supportsNativeScriptHashDerivation // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionCompatibilityImplCopyWith<$Res>
    implements $VersionCompatibilityCopyWith<$Res> {
  factory _$$VersionCompatibilityImplCopyWith(_$VersionCompatibilityImpl value,
          $Res Function(_$VersionCompatibilityImpl) then) =
      __$$VersionCompatibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCompatible,
      String? recommendedVersion,
      bool supportsNativeScriptHashDerivation});
}

/// @nodoc
class __$$VersionCompatibilityImplCopyWithImpl<$Res>
    extends _$VersionCompatibilityCopyWithImpl<$Res, _$VersionCompatibilityImpl>
    implements _$$VersionCompatibilityImplCopyWith<$Res> {
  __$$VersionCompatibilityImplCopyWithImpl(_$VersionCompatibilityImpl _value,
      $Res Function(_$VersionCompatibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompatible = null,
    Object? recommendedVersion = freezed,
    Object? supportsNativeScriptHashDerivation = null,
  }) {
    return _then(_$VersionCompatibilityImpl(
      isCompatible: null == isCompatible
          ? _value.isCompatible
          : isCompatible // ignore: cast_nullable_to_non_nullable
              as bool,
      recommendedVersion: freezed == recommendedVersion
          ? _value.recommendedVersion
          : recommendedVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      supportsNativeScriptHashDerivation: null ==
              supportsNativeScriptHashDerivation
          ? _value.supportsNativeScriptHashDerivation
          : supportsNativeScriptHashDerivation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VersionCompatibilityImpl extends _VersionCompatibility {
  const _$VersionCompatibilityImpl(
      {required this.isCompatible,
      required this.recommendedVersion,
      required this.supportsNativeScriptHashDerivation})
      : super._();

  @override
  final bool isCompatible;
  @override
  final String? recommendedVersion;
  @override
  final bool supportsNativeScriptHashDerivation;

  @override
  String toString() {
    return 'VersionCompatibility(isCompatible: $isCompatible, recommendedVersion: $recommendedVersion, supportsNativeScriptHashDerivation: $supportsNativeScriptHashDerivation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionCompatibilityImpl &&
            (identical(other.isCompatible, isCompatible) ||
                other.isCompatible == isCompatible) &&
            (identical(other.recommendedVersion, recommendedVersion) ||
                other.recommendedVersion == recommendedVersion) &&
            (identical(other.supportsNativeScriptHashDerivation,
                    supportsNativeScriptHashDerivation) ||
                other.supportsNativeScriptHashDerivation ==
                    supportsNativeScriptHashDerivation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCompatible, recommendedVersion,
      supportsNativeScriptHashDerivation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionCompatibilityImplCopyWith<_$VersionCompatibilityImpl>
      get copyWith =>
          __$$VersionCompatibilityImplCopyWithImpl<_$VersionCompatibilityImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isCompatible, String? recommendedVersion,
            bool supportsNativeScriptHashDerivation)
        $default,
  ) {
    return $default(
        isCompatible, recommendedVersion, supportsNativeScriptHashDerivation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isCompatible, String? recommendedVersion,
            bool supportsNativeScriptHashDerivation)?
        $default,
  ) {
    return $default?.call(
        isCompatible, recommendedVersion, supportsNativeScriptHashDerivation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isCompatible, String? recommendedVersion,
            bool supportsNativeScriptHashDerivation)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          isCompatible, recommendedVersion, supportsNativeScriptHashDerivation);
    }
    return orElse();
  }
}

abstract class _VersionCompatibility extends VersionCompatibility {
  const factory _VersionCompatibility(
          {required final bool isCompatible,
          required final String? recommendedVersion,
          required final bool supportsNativeScriptHashDerivation}) =
      _$VersionCompatibilityImpl;
  const _VersionCompatibility._() : super._();

  @override
  bool get isCompatible;
  @override
  String? get recommendedVersion;
  @override
  bool get supportsNativeScriptHashDerivation;
  @override
  @JsonKey(ignore: true)
  _$$VersionCompatibilityImplCopyWith<_$VersionCompatibilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
