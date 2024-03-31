// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drep_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DRepParams {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    TResult Function()? abstain,
    TResult Function()? noConfidence,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DRepParamsCopyWith<$Res> {
  factory $DRepParamsCopyWith(
          DRepParams value, $Res Function(DRepParams) then) =
      _$DRepParamsCopyWithImpl<$Res, DRepParams>;
}

/// @nodoc
class _$DRepParamsCopyWithImpl<$Res, $Val extends DRepParams>
    implements $DRepParamsCopyWith<$Res> {
  _$DRepParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$KeyPathDRepParamsImplCopyWith<$Res> {
  factory _$$KeyPathDRepParamsImplCopyWith(_$KeyPathDRepParamsImpl value,
          $Res Function(_$KeyPathDRepParamsImpl) then) =
      __$$KeyPathDRepParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyPath});
}

/// @nodoc
class __$$KeyPathDRepParamsImplCopyWithImpl<$Res>
    extends _$DRepParamsCopyWithImpl<$Res, _$KeyPathDRepParamsImpl>
    implements _$$KeyPathDRepParamsImplCopyWith<$Res> {
  __$$KeyPathDRepParamsImplCopyWithImpl(_$KeyPathDRepParamsImpl _value,
      $Res Function(_$KeyPathDRepParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyPath = null,
  }) {
    return _then(_$KeyPathDRepParamsImpl(
      keyPath: null == keyPath
          ? _value.keyPath
          : keyPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KeyPathDRepParamsImpl extends KeyPathDRepParams {
  _$KeyPathDRepParamsImpl({required this.keyPath}) : super._();

  @override
  final String keyPath;

  @override
  String toString() {
    return 'DRepParams.keyPath(keyPath: $keyPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyPathDRepParamsImpl &&
            (identical(other.keyPath, keyPath) || other.keyPath == keyPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyPathDRepParamsImplCopyWith<_$KeyPathDRepParamsImpl> get copyWith =>
      __$$KeyPathDRepParamsImplCopyWithImpl<_$KeyPathDRepParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) {
    return keyPath(this.keyPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) {
    return keyPath?.call(this.keyPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    TResult Function()? abstain,
    TResult Function()? noConfidence,
    required TResult orElse(),
  }) {
    if (keyPath != null) {
      return keyPath(this.keyPath);
    }
    return orElse();
  }
}

abstract class KeyPathDRepParams extends DRepParams {
  factory KeyPathDRepParams({required final String keyPath}) =
      _$KeyPathDRepParamsImpl;
  KeyPathDRepParams._() : super._();

  String get keyPath;
  @JsonKey(ignore: true)
  _$$KeyPathDRepParamsImplCopyWith<_$KeyPathDRepParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KeyHashDRepParamsImplCopyWith<$Res> {
  factory _$$KeyHashDRepParamsImplCopyWith(_$KeyHashDRepParamsImpl value,
          $Res Function(_$KeyHashDRepParamsImpl) then) =
      __$$KeyHashDRepParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class __$$KeyHashDRepParamsImplCopyWithImpl<$Res>
    extends _$DRepParamsCopyWithImpl<$Res, _$KeyHashDRepParamsImpl>
    implements _$$KeyHashDRepParamsImplCopyWith<$Res> {
  __$$KeyHashDRepParamsImplCopyWithImpl(_$KeyHashDRepParamsImpl _value,
      $Res Function(_$KeyHashDRepParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(_$KeyHashDRepParamsImpl(
      keyHashHex: null == keyHashHex
          ? _value.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KeyHashDRepParamsImpl extends KeyHashDRepParams {
  _$KeyHashDRepParamsImpl({required this.keyHashHex}) : super._();

  @override
  final String keyHashHex;

  @override
  String toString() {
    return 'DRepParams.keyHash(keyHashHex: $keyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyHashDRepParamsImpl &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyHashDRepParamsImplCopyWith<_$KeyHashDRepParamsImpl> get copyWith =>
      __$$KeyHashDRepParamsImplCopyWithImpl<_$KeyHashDRepParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) {
    return keyHash(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) {
    return keyHash?.call(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    TResult Function()? abstain,
    TResult Function()? noConfidence,
    required TResult orElse(),
  }) {
    if (keyHash != null) {
      return keyHash(keyHashHex);
    }
    return orElse();
  }
}

abstract class KeyHashDRepParams extends DRepParams {
  factory KeyHashDRepParams({required final String keyHashHex}) =
      _$KeyHashDRepParamsImpl;
  KeyHashDRepParams._() : super._();

  String get keyHashHex;
  @JsonKey(ignore: true)
  _$$KeyHashDRepParamsImplCopyWith<_$KeyHashDRepParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScriptHashDRepParamsImplCopyWith<$Res> {
  factory _$$ScriptHashDRepParamsImplCopyWith(_$ScriptHashDRepParamsImpl value,
          $Res Function(_$ScriptHashDRepParamsImpl) then) =
      __$$ScriptHashDRepParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String scriptHashHex});
}

/// @nodoc
class __$$ScriptHashDRepParamsImplCopyWithImpl<$Res>
    extends _$DRepParamsCopyWithImpl<$Res, _$ScriptHashDRepParamsImpl>
    implements _$$ScriptHashDRepParamsImplCopyWith<$Res> {
  __$$ScriptHashDRepParamsImplCopyWithImpl(_$ScriptHashDRepParamsImpl _value,
      $Res Function(_$ScriptHashDRepParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptHashHex = null,
  }) {
    return _then(_$ScriptHashDRepParamsImpl(
      scriptHashHex: null == scriptHashHex
          ? _value.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScriptHashDRepParamsImpl extends ScriptHashDRepParams {
  _$ScriptHashDRepParamsImpl({required this.scriptHashHex}) : super._();

  @override
  final String scriptHashHex;

  @override
  String toString() {
    return 'DRepParams.scriptHash(scriptHashHex: $scriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScriptHashDRepParamsImpl &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScriptHashDRepParamsImplCopyWith<_$ScriptHashDRepParamsImpl>
      get copyWith =>
          __$$ScriptHashDRepParamsImplCopyWithImpl<_$ScriptHashDRepParamsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) {
    return scriptHash(scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) {
    return scriptHash?.call(scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    TResult Function()? abstain,
    TResult Function()? noConfidence,
    required TResult orElse(),
  }) {
    if (scriptHash != null) {
      return scriptHash(scriptHashHex);
    }
    return orElse();
  }
}

abstract class ScriptHashDRepParams extends DRepParams {
  factory ScriptHashDRepParams({required final String scriptHashHex}) =
      _$ScriptHashDRepParamsImpl;
  ScriptHashDRepParams._() : super._();

  String get scriptHashHex;
  @JsonKey(ignore: true)
  _$$ScriptHashDRepParamsImplCopyWith<_$ScriptHashDRepParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AbstainDRepParamsImplCopyWith<$Res> {
  factory _$$AbstainDRepParamsImplCopyWith(_$AbstainDRepParamsImpl value,
          $Res Function(_$AbstainDRepParamsImpl) then) =
      __$$AbstainDRepParamsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AbstainDRepParamsImplCopyWithImpl<$Res>
    extends _$DRepParamsCopyWithImpl<$Res, _$AbstainDRepParamsImpl>
    implements _$$AbstainDRepParamsImplCopyWith<$Res> {
  __$$AbstainDRepParamsImplCopyWithImpl(_$AbstainDRepParamsImpl _value,
      $Res Function(_$AbstainDRepParamsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AbstainDRepParamsImpl extends AbstainDRepParams {
  _$AbstainDRepParamsImpl() : super._();

  @override
  String toString() {
    return 'DRepParams.abstain()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AbstainDRepParamsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) {
    return abstain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) {
    return abstain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    TResult Function()? abstain,
    TResult Function()? noConfidence,
    required TResult orElse(),
  }) {
    if (abstain != null) {
      return abstain();
    }
    return orElse();
  }
}

abstract class AbstainDRepParams extends DRepParams {
  factory AbstainDRepParams() = _$AbstainDRepParamsImpl;
  AbstainDRepParams._() : super._();
}

/// @nodoc
abstract class _$$NoConfidenceParamsImplCopyWith<$Res> {
  factory _$$NoConfidenceParamsImplCopyWith(_$NoConfidenceParamsImpl value,
          $Res Function(_$NoConfidenceParamsImpl) then) =
      __$$NoConfidenceParamsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConfidenceParamsImplCopyWithImpl<$Res>
    extends _$DRepParamsCopyWithImpl<$Res, _$NoConfidenceParamsImpl>
    implements _$$NoConfidenceParamsImplCopyWith<$Res> {
  __$$NoConfidenceParamsImplCopyWithImpl(_$NoConfidenceParamsImpl _value,
      $Res Function(_$NoConfidenceParamsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoConfidenceParamsImpl extends NoConfidenceParams {
  _$NoConfidenceParamsImpl() : super._();

  @override
  String toString() {
    return 'DRepParams.noConfidence()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConfidenceParamsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) {
    return noConfidence();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) {
    return noConfidence?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    TResult Function()? abstain,
    TResult Function()? noConfidence,
    required TResult orElse(),
  }) {
    if (noConfidence != null) {
      return noConfidence();
    }
    return orElse();
  }
}

abstract class NoConfidenceParams extends DRepParams {
  factory NoConfidenceParams() = _$NoConfidenceParamsImpl;
  NoConfidenceParams._() : super._();
}
