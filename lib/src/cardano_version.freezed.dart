// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cardano_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardanoVersion {
  bool get testMode => throw _privateConstructorUsedError;
  int get versionMajor => throw _privateConstructorUsedError;
  int get versionMinor => throw _privateConstructorUsedError;
  int get versionPatch => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;
  Flags_mode get flags => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool testMode, int versionMajor, int versionMinor,
            int versionPatch, bool locked, Flags_mode flags)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool testMode, int versionMajor, int versionMinor,
            int versionPatch, bool locked, Flags_mode flags)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool testMode, int versionMajor, int versionMinor,
            int versionPatch, bool locked, Flags_mode flags)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardanoVersionCopyWith<CardanoVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardanoVersionCopyWith<$Res> {
  factory $CardanoVersionCopyWith(
          CardanoVersion value, $Res Function(CardanoVersion) then) =
      _$CardanoVersionCopyWithImpl<$Res, CardanoVersion>;
  @useResult
  $Res call(
      {bool testMode,
      int versionMajor,
      int versionMinor,
      int versionPatch,
      bool locked,
      Flags_mode flags});
}

/// @nodoc
class _$CardanoVersionCopyWithImpl<$Res, $Val extends CardanoVersion>
    implements $CardanoVersionCopyWith<$Res> {
  _$CardanoVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testMode = null,
    Object? versionMajor = null,
    Object? versionMinor = null,
    Object? versionPatch = null,
    Object? locked = null,
    Object? flags = freezed,
  }) {
    return _then(_value.copyWith(
      testMode: null == testMode
          ? _value.testMode
          : testMode // ignore: cast_nullable_to_non_nullable
              as bool,
      versionMajor: null == versionMajor
          ? _value.versionMajor
          : versionMajor // ignore: cast_nullable_to_non_nullable
              as int,
      versionMinor: null == versionMinor
          ? _value.versionMinor
          : versionMinor // ignore: cast_nullable_to_non_nullable
              as int,
      versionPatch: null == versionPatch
          ? _value.versionPatch
          : versionPatch // ignore: cast_nullable_to_non_nullable
              as int,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags_mode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardanoVersionImplCopyWith<$Res>
    implements $CardanoVersionCopyWith<$Res> {
  factory _$$CardanoVersionImplCopyWith(_$CardanoVersionImpl value,
          $Res Function(_$CardanoVersionImpl) then) =
      __$$CardanoVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool testMode,
      int versionMajor,
      int versionMinor,
      int versionPatch,
      bool locked,
      Flags_mode flags});
}

/// @nodoc
class __$$CardanoVersionImplCopyWithImpl<$Res>
    extends _$CardanoVersionCopyWithImpl<$Res, _$CardanoVersionImpl>
    implements _$$CardanoVersionImplCopyWith<$Res> {
  __$$CardanoVersionImplCopyWithImpl(
      _$CardanoVersionImpl _value, $Res Function(_$CardanoVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testMode = null,
    Object? versionMajor = null,
    Object? versionMinor = null,
    Object? versionPatch = null,
    Object? locked = null,
    Object? flags = freezed,
  }) {
    return _then(_$CardanoVersionImpl(
      testMode: null == testMode
          ? _value.testMode
          : testMode // ignore: cast_nullable_to_non_nullable
              as bool,
      versionMajor: null == versionMajor
          ? _value.versionMajor
          : versionMajor // ignore: cast_nullable_to_non_nullable
              as int,
      versionMinor: null == versionMinor
          ? _value.versionMinor
          : versionMinor // ignore: cast_nullable_to_non_nullable
              as int,
      versionPatch: null == versionPatch
          ? _value.versionPatch
          : versionPatch // ignore: cast_nullable_to_non_nullable
              as int,
      locked: null == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags_mode,
    ));
  }
}

/// @nodoc

class _$CardanoVersionImpl extends _CardanoVersion
    with DiagnosticableTreeMixin {
  _$CardanoVersionImpl(
      {required this.testMode,
      required this.versionMajor,
      required this.versionMinor,
      required this.versionPatch,
      required this.locked,
      required this.flags})
      : super._();

  @override
  final bool testMode;
  @override
  final int versionMajor;
  @override
  final int versionMinor;
  @override
  final int versionPatch;
  @override
  final bool locked;
  @override
  final Flags_mode flags;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardanoVersion(testMode: $testMode, versionMajor: $versionMajor, versionMinor: $versionMinor, versionPatch: $versionPatch, locked: $locked, flags: $flags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardanoVersion'))
      ..add(DiagnosticsProperty('testMode', testMode))
      ..add(DiagnosticsProperty('versionMajor', versionMajor))
      ..add(DiagnosticsProperty('versionMinor', versionMinor))
      ..add(DiagnosticsProperty('versionPatch', versionPatch))
      ..add(DiagnosticsProperty('locked', locked))
      ..add(DiagnosticsProperty('flags', flags));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardanoVersionImpl &&
            (identical(other.testMode, testMode) ||
                other.testMode == testMode) &&
            (identical(other.versionMajor, versionMajor) ||
                other.versionMajor == versionMajor) &&
            (identical(other.versionMinor, versionMinor) ||
                other.versionMinor == versionMinor) &&
            (identical(other.versionPatch, versionPatch) ||
                other.versionPatch == versionPatch) &&
            (identical(other.locked, locked) || other.locked == locked) &&
            const DeepCollectionEquality().equals(other.flags, flags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      testMode,
      versionMajor,
      versionMinor,
      versionPatch,
      locked,
      const DeepCollectionEquality().hash(flags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardanoVersionImplCopyWith<_$CardanoVersionImpl> get copyWith =>
      __$$CardanoVersionImplCopyWithImpl<_$CardanoVersionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool testMode, int versionMajor, int versionMinor,
            int versionPatch, bool locked, Flags_mode flags)
        $default,
  ) {
    return $default(
        testMode, versionMajor, versionMinor, versionPatch, locked, flags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool testMode, int versionMajor, int versionMinor,
            int versionPatch, bool locked, Flags_mode flags)?
        $default,
  ) {
    return $default?.call(
        testMode, versionMajor, versionMinor, versionPatch, locked, flags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool testMode, int versionMajor, int versionMinor,
            int versionPatch, bool locked, Flags_mode flags)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          testMode, versionMajor, versionMinor, versionPatch, locked, flags);
    }
    return orElse();
  }
}

abstract class _CardanoVersion extends CardanoVersion {
  factory _CardanoVersion(
      {required final bool testMode,
      required final int versionMajor,
      required final int versionMinor,
      required final int versionPatch,
      required final bool locked,
      required final Flags_mode flags}) = _$CardanoVersionImpl;
  _CardanoVersion._() : super._();

  @override
  bool get testMode;
  @override
  int get versionMajor;
  @override
  int get versionMinor;
  @override
  int get versionPatch;
  @override
  bool get locked;
  @override
  Flags_mode get flags;
  @override
  @JsonKey(ignore: true)
  _$$CardanoVersionImplCopyWith<_$CardanoVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
