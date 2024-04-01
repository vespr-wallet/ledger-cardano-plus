// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credential_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CredentialParams {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialParamsCopyWith<$Res> {
  factory $CredentialParamsCopyWith(
          CredentialParams value, $Res Function(CredentialParams) then) =
      _$CredentialParamsCopyWithImpl<$Res, CredentialParams>;
}

/// @nodoc
class _$CredentialParamsCopyWithImpl<$Res, $Val extends CredentialParams>
    implements $CredentialParamsCopyWith<$Res> {
  _$CredentialParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$KeyPathCredentialParamsImplCopyWith<$Res> {
  factory _$$KeyPathCredentialParamsImplCopyWith(
          _$KeyPathCredentialParamsImpl value,
          $Res Function(_$KeyPathCredentialParamsImpl) then) =
      __$$KeyPathCredentialParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> keyPath});
}

/// @nodoc
class __$$KeyPathCredentialParamsImplCopyWithImpl<$Res>
    extends _$CredentialParamsCopyWithImpl<$Res, _$KeyPathCredentialParamsImpl>
    implements _$$KeyPathCredentialParamsImplCopyWith<$Res> {
  __$$KeyPathCredentialParamsImplCopyWithImpl(
      _$KeyPathCredentialParamsImpl _value,
      $Res Function(_$KeyPathCredentialParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyPath = null,
  }) {
    return _then(_$KeyPathCredentialParamsImpl(
      keyPath: null == keyPath
          ? _value._keyPath
          : keyPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$KeyPathCredentialParamsImpl extends KeyPathCredentialParams {
  _$KeyPathCredentialParamsImpl({required final List<int> keyPath})
      : _keyPath = keyPath,
        super._();

  final List<int> _keyPath;
  @override
  List<int> get keyPath {
    if (_keyPath is EqualUnmodifiableListView) return _keyPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyPath);
  }

  @override
  String toString() {
    return 'CredentialParams.keyPath(keyPath: $keyPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyPathCredentialParamsImpl &&
            const DeepCollectionEquality().equals(other._keyPath, _keyPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_keyPath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyPathCredentialParamsImplCopyWith<_$KeyPathCredentialParamsImpl>
      get copyWith => __$$KeyPathCredentialParamsImplCopyWithImpl<
          _$KeyPathCredentialParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return keyPath(this.keyPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return keyPath?.call(this.keyPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (keyPath != null) {
      return keyPath(this.keyPath);
    }
    return orElse();
  }
}

abstract class KeyPathCredentialParams extends CredentialParams {
  factory KeyPathCredentialParams({required final List<int> keyPath}) =
      _$KeyPathCredentialParamsImpl;
  KeyPathCredentialParams._() : super._();

  List<int> get keyPath;
  @JsonKey(ignore: true)
  _$$KeyPathCredentialParamsImplCopyWith<_$KeyPathCredentialParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KeyHashCredentialParamsImplCopyWith<$Res> {
  factory _$$KeyHashCredentialParamsImplCopyWith(
          _$KeyHashCredentialParamsImpl value,
          $Res Function(_$KeyHashCredentialParamsImpl) then) =
      __$$KeyHashCredentialParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class __$$KeyHashCredentialParamsImplCopyWithImpl<$Res>
    extends _$CredentialParamsCopyWithImpl<$Res, _$KeyHashCredentialParamsImpl>
    implements _$$KeyHashCredentialParamsImplCopyWith<$Res> {
  __$$KeyHashCredentialParamsImplCopyWithImpl(
      _$KeyHashCredentialParamsImpl _value,
      $Res Function(_$KeyHashCredentialParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(_$KeyHashCredentialParamsImpl(
      keyHashHex: null == keyHashHex
          ? _value.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KeyHashCredentialParamsImpl extends KeyHashCredentialParams {
  _$KeyHashCredentialParamsImpl({required this.keyHashHex}) : super._();

  @override
  final String keyHashHex;

  @override
  String toString() {
    return 'CredentialParams.keyHash(keyHashHex: $keyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyHashCredentialParamsImpl &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyHashCredentialParamsImplCopyWith<_$KeyHashCredentialParamsImpl>
      get copyWith => __$$KeyHashCredentialParamsImplCopyWithImpl<
          _$KeyHashCredentialParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return keyHash(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return keyHash?.call(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (keyHash != null) {
      return keyHash(keyHashHex);
    }
    return orElse();
  }
}

abstract class KeyHashCredentialParams extends CredentialParams {
  factory KeyHashCredentialParams({required final String keyHashHex}) =
      _$KeyHashCredentialParamsImpl;
  KeyHashCredentialParams._() : super._();

  String get keyHashHex;
  @JsonKey(ignore: true)
  _$$KeyHashCredentialParamsImplCopyWith<_$KeyHashCredentialParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScriptHashCredentialParamsImplCopyWith<$Res> {
  factory _$$ScriptHashCredentialParamsImplCopyWith(
          _$ScriptHashCredentialParamsImpl value,
          $Res Function(_$ScriptHashCredentialParamsImpl) then) =
      __$$ScriptHashCredentialParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String scriptHashHex});
}

/// @nodoc
class __$$ScriptHashCredentialParamsImplCopyWithImpl<$Res>
    extends _$CredentialParamsCopyWithImpl<$Res,
        _$ScriptHashCredentialParamsImpl>
    implements _$$ScriptHashCredentialParamsImplCopyWith<$Res> {
  __$$ScriptHashCredentialParamsImplCopyWithImpl(
      _$ScriptHashCredentialParamsImpl _value,
      $Res Function(_$ScriptHashCredentialParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptHashHex = null,
  }) {
    return _then(_$ScriptHashCredentialParamsImpl(
      scriptHashHex: null == scriptHashHex
          ? _value.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScriptHashCredentialParamsImpl extends ScriptHashCredentialParams {
  _$ScriptHashCredentialParamsImpl({required this.scriptHashHex}) : super._();

  @override
  final String scriptHashHex;

  @override
  String toString() {
    return 'CredentialParams.scriptHash(scriptHashHex: $scriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScriptHashCredentialParamsImpl &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScriptHashCredentialParamsImplCopyWith<_$ScriptHashCredentialParamsImpl>
      get copyWith => __$$ScriptHashCredentialParamsImplCopyWithImpl<
          _$ScriptHashCredentialParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> keyPath) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return scriptHash(scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> keyPath)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return scriptHash?.call(scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> keyPath)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (scriptHash != null) {
      return scriptHash(scriptHashHex);
    }
    return orElse();
  }
}

abstract class ScriptHashCredentialParams extends CredentialParams {
  factory ScriptHashCredentialParams({required final String scriptHashHex}) =
      _$ScriptHashCredentialParamsImpl;
  ScriptHashCredentialParams._() : super._();

  String get scriptHashHex;
  @JsonKey(ignore: true)
  _$$ScriptHashCredentialParamsImplCopyWith<_$ScriptHashCredentialParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
