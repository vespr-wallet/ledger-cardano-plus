// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedCredential {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedCredentialCopyWith<$Res> {
  factory $ParsedCredentialCopyWith(
          ParsedCredential value, $Res Function(ParsedCredential) then) =
      _$ParsedCredentialCopyWithImpl<$Res, ParsedCredential>;
}

/// @nodoc
class _$ParsedCredentialCopyWithImpl<$Res, $Val extends ParsedCredential>
    implements $ParsedCredentialCopyWith<$Res> {
  _$ParsedCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CredentialKeyPathImplCopyWith<$Res> {
  factory _$$CredentialKeyPathImplCopyWith(_$CredentialKeyPathImpl value,
          $Res Function(_$CredentialKeyPathImpl) then) =
      __$$CredentialKeyPathImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> path});
}

/// @nodoc
class __$$CredentialKeyPathImplCopyWithImpl<$Res>
    extends _$ParsedCredentialCopyWithImpl<$Res, _$CredentialKeyPathImpl>
    implements _$$CredentialKeyPathImplCopyWith<$Res> {
  __$$CredentialKeyPathImplCopyWithImpl(_$CredentialKeyPathImpl _value,
      $Res Function(_$CredentialKeyPathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$CredentialKeyPathImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$CredentialKeyPathImpl extends CredentialKeyPath {
  _$CredentialKeyPathImpl({required final List<int> path})
      : _path = path,
        super._();

  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'ParsedCredential.keyPath(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialKeyPathImpl &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialKeyPathImplCopyWith<_$CredentialKeyPathImpl> get copyWith =>
      __$$CredentialKeyPathImplCopyWithImpl<_$CredentialKeyPathImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return keyPath(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return keyPath?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? keyPath,
    TResult Function(String keyHashHex)? keyHash,
    TResult Function(String scriptHashHex)? scriptHash,
    required TResult orElse(),
  }) {
    if (keyPath != null) {
      return keyPath(path);
    }
    return orElse();
  }
}

abstract class CredentialKeyPath extends ParsedCredential {
  factory CredentialKeyPath({required final List<int> path}) =
      _$CredentialKeyPathImpl;
  CredentialKeyPath._() : super._();

  List<int> get path;
  @JsonKey(ignore: true)
  _$$CredentialKeyPathImplCopyWith<_$CredentialKeyPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CredentialKeyHashImplCopyWith<$Res> {
  factory _$$CredentialKeyHashImplCopyWith(_$CredentialKeyHashImpl value,
          $Res Function(_$CredentialKeyHashImpl) then) =
      __$$CredentialKeyHashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class __$$CredentialKeyHashImplCopyWithImpl<$Res>
    extends _$ParsedCredentialCopyWithImpl<$Res, _$CredentialKeyHashImpl>
    implements _$$CredentialKeyHashImplCopyWith<$Res> {
  __$$CredentialKeyHashImplCopyWithImpl(_$CredentialKeyHashImpl _value,
      $Res Function(_$CredentialKeyHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(_$CredentialKeyHashImpl(
      keyHashHex: null == keyHashHex
          ? _value.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CredentialKeyHashImpl extends CredentialKeyHash {
  _$CredentialKeyHashImpl({required this.keyHashHex}) : super._();

  @override
  final String keyHashHex;

  @override
  String toString() {
    return 'ParsedCredential.keyHash(keyHashHex: $keyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialKeyHashImpl &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialKeyHashImplCopyWith<_$CredentialKeyHashImpl> get copyWith =>
      __$$CredentialKeyHashImplCopyWithImpl<_$CredentialKeyHashImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return keyHash(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return keyHash?.call(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? keyPath,
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

abstract class CredentialKeyHash extends ParsedCredential {
  factory CredentialKeyHash({required final String keyHashHex}) =
      _$CredentialKeyHashImpl;
  CredentialKeyHash._() : super._();

  String get keyHashHex;
  @JsonKey(ignore: true)
  _$$CredentialKeyHashImplCopyWith<_$CredentialKeyHashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CredentialScriptHashImplCopyWith<$Res> {
  factory _$$CredentialScriptHashImplCopyWith(_$CredentialScriptHashImpl value,
          $Res Function(_$CredentialScriptHashImpl) then) =
      __$$CredentialScriptHashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String scriptHashHex});
}

/// @nodoc
class __$$CredentialScriptHashImplCopyWithImpl<$Res>
    extends _$ParsedCredentialCopyWithImpl<$Res, _$CredentialScriptHashImpl>
    implements _$$CredentialScriptHashImplCopyWith<$Res> {
  __$$CredentialScriptHashImplCopyWithImpl(_$CredentialScriptHashImpl _value,
      $Res Function(_$CredentialScriptHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptHashHex = null,
  }) {
    return _then(_$CredentialScriptHashImpl(
      scriptHashHex: null == scriptHashHex
          ? _value.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CredentialScriptHashImpl extends CredentialScriptHash {
  _$CredentialScriptHashImpl({required this.scriptHashHex}) : super._();

  @override
  final String scriptHashHex;

  @override
  String toString() {
    return 'ParsedCredential.scriptHash(scriptHashHex: $scriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialScriptHashImpl &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialScriptHashImplCopyWith<_$CredentialScriptHashImpl>
      get copyWith =>
          __$$CredentialScriptHashImplCopyWithImpl<_$CredentialScriptHashImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) keyPath,
    required TResult Function(String keyHashHex) keyHash,
    required TResult Function(String scriptHashHex) scriptHash,
  }) {
    return scriptHash(scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? keyPath,
    TResult? Function(String keyHashHex)? keyHash,
    TResult? Function(String scriptHashHex)? scriptHash,
  }) {
    return scriptHash?.call(scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? keyPath,
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

abstract class CredentialScriptHash extends ParsedCredential {
  factory CredentialScriptHash({required final String scriptHashHex}) =
      _$CredentialScriptHashImpl;
  CredentialScriptHash._() : super._();

  String get scriptHashHex;
  @JsonKey(ignore: true)
  _$$CredentialScriptHashImplCopyWith<_$CredentialScriptHashImpl>
      get copyWith => throw _privateConstructorUsedError;
}
