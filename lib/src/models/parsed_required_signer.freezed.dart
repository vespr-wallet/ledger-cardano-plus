// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_required_signer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedRequiredSigner {
  RequiredSignerType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequiredSignerType type, String hashHex) hash,
    required TResult Function(RequiredSignerType type, List<int> path) path,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequiredSignerType type, String hashHex)? hash,
    TResult? Function(RequiredSignerType type, List<int> path)? path,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequiredSignerType type, String hashHex)? hash,
    TResult Function(RequiredSignerType type, List<int> path)? path,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedRequiredSignerCopyWith<ParsedRequiredSigner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedRequiredSignerCopyWith<$Res> {
  factory $ParsedRequiredSignerCopyWith(ParsedRequiredSigner value,
          $Res Function(ParsedRequiredSigner) then) =
      _$ParsedRequiredSignerCopyWithImpl<$Res, ParsedRequiredSigner>;
  @useResult
  $Res call({RequiredSignerType type});
}

/// @nodoc
class _$ParsedRequiredSignerCopyWithImpl<$Res,
        $Val extends ParsedRequiredSigner>
    implements $ParsedRequiredSignerCopyWith<$Res> {
  _$ParsedRequiredSignerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RequiredSignerType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequiredSignerHashImplCopyWith<$Res>
    implements $ParsedRequiredSignerCopyWith<$Res> {
  factory _$$RequiredSignerHashImplCopyWith(_$RequiredSignerHashImpl value,
          $Res Function(_$RequiredSignerHashImpl) then) =
      __$$RequiredSignerHashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequiredSignerType type, String hashHex});
}

/// @nodoc
class __$$RequiredSignerHashImplCopyWithImpl<$Res>
    extends _$ParsedRequiredSignerCopyWithImpl<$Res, _$RequiredSignerHashImpl>
    implements _$$RequiredSignerHashImplCopyWith<$Res> {
  __$$RequiredSignerHashImplCopyWithImpl(_$RequiredSignerHashImpl _value,
      $Res Function(_$RequiredSignerHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? hashHex = null,
  }) {
    return _then(_$RequiredSignerHashImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RequiredSignerType,
      hashHex: null == hashHex
          ? _value.hashHex
          : hashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequiredSignerHashImpl extends RequiredSignerHash {
  const _$RequiredSignerHashImpl({required this.type, required this.hashHex})
      : super._();

  @override
  final RequiredSignerType type;
  @override
  final String hashHex;

  @override
  String toString() {
    return 'ParsedRequiredSigner.hash(type: $type, hashHex: $hashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredSignerHashImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hashHex, hashHex) || other.hashHex == hashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, hashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredSignerHashImplCopyWith<_$RequiredSignerHashImpl> get copyWith =>
      __$$RequiredSignerHashImplCopyWithImpl<_$RequiredSignerHashImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequiredSignerType type, String hashHex) hash,
    required TResult Function(RequiredSignerType type, List<int> path) path,
  }) {
    return hash(type, hashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequiredSignerType type, String hashHex)? hash,
    TResult? Function(RequiredSignerType type, List<int> path)? path,
  }) {
    return hash?.call(type, hashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequiredSignerType type, String hashHex)? hash,
    TResult Function(RequiredSignerType type, List<int> path)? path,
    required TResult orElse(),
  }) {
    if (hash != null) {
      return hash(type, hashHex);
    }
    return orElse();
  }
}

abstract class RequiredSignerHash extends ParsedRequiredSigner {
  const factory RequiredSignerHash(
      {required final RequiredSignerType type,
      required final String hashHex}) = _$RequiredSignerHashImpl;
  const RequiredSignerHash._() : super._();

  @override
  RequiredSignerType get type;
  String get hashHex;
  @override
  @JsonKey(ignore: true)
  _$$RequiredSignerHashImplCopyWith<_$RequiredSignerHashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequiredSignerPathImplCopyWith<$Res>
    implements $ParsedRequiredSignerCopyWith<$Res> {
  factory _$$RequiredSignerPathImplCopyWith(_$RequiredSignerPathImpl value,
          $Res Function(_$RequiredSignerPathImpl) then) =
      __$$RequiredSignerPathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequiredSignerType type, List<int> path});
}

/// @nodoc
class __$$RequiredSignerPathImplCopyWithImpl<$Res>
    extends _$ParsedRequiredSignerCopyWithImpl<$Res, _$RequiredSignerPathImpl>
    implements _$$RequiredSignerPathImplCopyWith<$Res> {
  __$$RequiredSignerPathImplCopyWithImpl(_$RequiredSignerPathImpl _value,
      $Res Function(_$RequiredSignerPathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? path = null,
  }) {
    return _then(_$RequiredSignerPathImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RequiredSignerType,
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$RequiredSignerPathImpl extends RequiredSignerPath {
  const _$RequiredSignerPathImpl(
      {required this.type, required final List<int> path})
      : _path = path,
        super._();

  @override
  final RequiredSignerType type;
  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'ParsedRequiredSigner.path(type: $type, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredSignerPathImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredSignerPathImplCopyWith<_$RequiredSignerPathImpl> get copyWith =>
      __$$RequiredSignerPathImplCopyWithImpl<_$RequiredSignerPathImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequiredSignerType type, String hashHex) hash,
    required TResult Function(RequiredSignerType type, List<int> path) path,
  }) {
    return path(type, this.path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequiredSignerType type, String hashHex)? hash,
    TResult? Function(RequiredSignerType type, List<int> path)? path,
  }) {
    return path?.call(type, this.path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequiredSignerType type, String hashHex)? hash,
    TResult Function(RequiredSignerType type, List<int> path)? path,
    required TResult orElse(),
  }) {
    if (path != null) {
      return path(type, this.path);
    }
    return orElse();
  }
}

abstract class RequiredSignerPath extends ParsedRequiredSigner {
  const factory RequiredSignerPath(
      {required final RequiredSignerType type,
      required final List<int> path}) = _$RequiredSignerPathImpl;
  const RequiredSignerPath._() : super._();

  @override
  RequiredSignerType get type;
  List<int> get path;
  @override
  @JsonKey(ignore: true)
  _$$RequiredSignerPathImplCopyWith<_$RequiredSignerPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
