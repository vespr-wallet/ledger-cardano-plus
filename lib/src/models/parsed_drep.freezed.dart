// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_drep.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedDRep {
  DRepType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DRepType type, List<int> path) keyPath,
    required TResult Function(DRepType type, String keyHashHex) keyHash,
    required TResult Function(DRepType type, String scriptHashHex) scriptHash,
    required TResult Function(DRepType type) abstain,
    required TResult Function(DRepType type) noConfidence,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DRepType type, List<int> path)? keyPath,
    TResult? Function(DRepType type, String keyHashHex)? keyHash,
    TResult? Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult? Function(DRepType type)? abstain,
    TResult? Function(DRepType type)? noConfidence,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DRepType type, List<int> path)? keyPath,
    TResult Function(DRepType type, String keyHashHex)? keyHash,
    TResult Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult Function(DRepType type)? abstain,
    TResult Function(DRepType type)? noConfidence,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedDRepCopyWith<ParsedDRep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedDRepCopyWith<$Res> {
  factory $ParsedDRepCopyWith(
          ParsedDRep value, $Res Function(ParsedDRep) then) =
      _$ParsedDRepCopyWithImpl<$Res, ParsedDRep>;
  @useResult
  $Res call({DRepType type});
}

/// @nodoc
class _$ParsedDRepCopyWithImpl<$Res, $Val extends ParsedDRep>
    implements $ParsedDRepCopyWith<$Res> {
  _$ParsedDRepCopyWithImpl(this._value, this._then);

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
              as DRepType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DRepKeyPathImplCopyWith<$Res>
    implements $ParsedDRepCopyWith<$Res> {
  factory _$$DRepKeyPathImplCopyWith(
          _$DRepKeyPathImpl value, $Res Function(_$DRepKeyPathImpl) then) =
      __$$DRepKeyPathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DRepType type, List<int> path});
}

/// @nodoc
class __$$DRepKeyPathImplCopyWithImpl<$Res>
    extends _$ParsedDRepCopyWithImpl<$Res, _$DRepKeyPathImpl>
    implements _$$DRepKeyPathImplCopyWith<$Res> {
  __$$DRepKeyPathImplCopyWithImpl(
      _$DRepKeyPathImpl _value, $Res Function(_$DRepKeyPathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? path = null,
  }) {
    return _then(_$DRepKeyPathImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DRepType,
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DRepKeyPathImpl extends DRepKeyPath {
  _$DRepKeyPathImpl({required this.type, required final List<int> path})
      : _path = path,
        super._();

  @override
  final DRepType type;
  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'ParsedDRep.keyPath(type: $type, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepKeyPathImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepKeyPathImplCopyWith<_$DRepKeyPathImpl> get copyWith =>
      __$$DRepKeyPathImplCopyWithImpl<_$DRepKeyPathImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DRepType type, List<int> path) keyPath,
    required TResult Function(DRepType type, String keyHashHex) keyHash,
    required TResult Function(DRepType type, String scriptHashHex) scriptHash,
    required TResult Function(DRepType type) abstain,
    required TResult Function(DRepType type) noConfidence,
  }) {
    return keyPath(type, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DRepType type, List<int> path)? keyPath,
    TResult? Function(DRepType type, String keyHashHex)? keyHash,
    TResult? Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult? Function(DRepType type)? abstain,
    TResult? Function(DRepType type)? noConfidence,
  }) {
    return keyPath?.call(type, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DRepType type, List<int> path)? keyPath,
    TResult Function(DRepType type, String keyHashHex)? keyHash,
    TResult Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult Function(DRepType type)? abstain,
    TResult Function(DRepType type)? noConfidence,
    required TResult orElse(),
  }) {
    if (keyPath != null) {
      return keyPath(type, path);
    }
    return orElse();
  }
}

abstract class DRepKeyPath extends ParsedDRep {
  factory DRepKeyPath(
      {required final DRepType type,
      required final List<int> path}) = _$DRepKeyPathImpl;
  DRepKeyPath._() : super._();

  @override
  DRepType get type;
  List<int> get path;
  @override
  @JsonKey(ignore: true)
  _$$DRepKeyPathImplCopyWith<_$DRepKeyPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepKeyHashImplCopyWith<$Res>
    implements $ParsedDRepCopyWith<$Res> {
  factory _$$DRepKeyHashImplCopyWith(
          _$DRepKeyHashImpl value, $Res Function(_$DRepKeyHashImpl) then) =
      __$$DRepKeyHashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DRepType type, String keyHashHex});
}

/// @nodoc
class __$$DRepKeyHashImplCopyWithImpl<$Res>
    extends _$ParsedDRepCopyWithImpl<$Res, _$DRepKeyHashImpl>
    implements _$$DRepKeyHashImplCopyWith<$Res> {
  __$$DRepKeyHashImplCopyWithImpl(
      _$DRepKeyHashImpl _value, $Res Function(_$DRepKeyHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? keyHashHex = null,
  }) {
    return _then(_$DRepKeyHashImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DRepType,
      keyHashHex: null == keyHashHex
          ? _value.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DRepKeyHashImpl extends DRepKeyHash {
  _$DRepKeyHashImpl({required this.type, required this.keyHashHex}) : super._();

  @override
  final DRepType type;
  @override
  final String keyHashHex;

  @override
  String toString() {
    return 'ParsedDRep.keyHash(type: $type, keyHashHex: $keyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepKeyHashImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, keyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepKeyHashImplCopyWith<_$DRepKeyHashImpl> get copyWith =>
      __$$DRepKeyHashImplCopyWithImpl<_$DRepKeyHashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DRepType type, List<int> path) keyPath,
    required TResult Function(DRepType type, String keyHashHex) keyHash,
    required TResult Function(DRepType type, String scriptHashHex) scriptHash,
    required TResult Function(DRepType type) abstain,
    required TResult Function(DRepType type) noConfidence,
  }) {
    return keyHash(type, keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DRepType type, List<int> path)? keyPath,
    TResult? Function(DRepType type, String keyHashHex)? keyHash,
    TResult? Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult? Function(DRepType type)? abstain,
    TResult? Function(DRepType type)? noConfidence,
  }) {
    return keyHash?.call(type, keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DRepType type, List<int> path)? keyPath,
    TResult Function(DRepType type, String keyHashHex)? keyHash,
    TResult Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult Function(DRepType type)? abstain,
    TResult Function(DRepType type)? noConfidence,
    required TResult orElse(),
  }) {
    if (keyHash != null) {
      return keyHash(type, keyHashHex);
    }
    return orElse();
  }
}

abstract class DRepKeyHash extends ParsedDRep {
  factory DRepKeyHash(
      {required final DRepType type,
      required final String keyHashHex}) = _$DRepKeyHashImpl;
  DRepKeyHash._() : super._();

  @override
  DRepType get type;
  String get keyHashHex;
  @override
  @JsonKey(ignore: true)
  _$$DRepKeyHashImplCopyWith<_$DRepKeyHashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepScriptHashImplCopyWith<$Res>
    implements $ParsedDRepCopyWith<$Res> {
  factory _$$DRepScriptHashImplCopyWith(_$DRepScriptHashImpl value,
          $Res Function(_$DRepScriptHashImpl) then) =
      __$$DRepScriptHashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DRepType type, String scriptHashHex});
}

/// @nodoc
class __$$DRepScriptHashImplCopyWithImpl<$Res>
    extends _$ParsedDRepCopyWithImpl<$Res, _$DRepScriptHashImpl>
    implements _$$DRepScriptHashImplCopyWith<$Res> {
  __$$DRepScriptHashImplCopyWithImpl(
      _$DRepScriptHashImpl _value, $Res Function(_$DRepScriptHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? scriptHashHex = null,
  }) {
    return _then(_$DRepScriptHashImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DRepType,
      scriptHashHex: null == scriptHashHex
          ? _value.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DRepScriptHashImpl extends DRepScriptHash {
  _$DRepScriptHashImpl({required this.type, required this.scriptHashHex})
      : super._();

  @override
  final DRepType type;
  @override
  final String scriptHashHex;

  @override
  String toString() {
    return 'ParsedDRep.scriptHash(type: $type, scriptHashHex: $scriptHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepScriptHashImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, scriptHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepScriptHashImplCopyWith<_$DRepScriptHashImpl> get copyWith =>
      __$$DRepScriptHashImplCopyWithImpl<_$DRepScriptHashImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DRepType type, List<int> path) keyPath,
    required TResult Function(DRepType type, String keyHashHex) keyHash,
    required TResult Function(DRepType type, String scriptHashHex) scriptHash,
    required TResult Function(DRepType type) abstain,
    required TResult Function(DRepType type) noConfidence,
  }) {
    return scriptHash(type, scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DRepType type, List<int> path)? keyPath,
    TResult? Function(DRepType type, String keyHashHex)? keyHash,
    TResult? Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult? Function(DRepType type)? abstain,
    TResult? Function(DRepType type)? noConfidence,
  }) {
    return scriptHash?.call(type, scriptHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DRepType type, List<int> path)? keyPath,
    TResult Function(DRepType type, String keyHashHex)? keyHash,
    TResult Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult Function(DRepType type)? abstain,
    TResult Function(DRepType type)? noConfidence,
    required TResult orElse(),
  }) {
    if (scriptHash != null) {
      return scriptHash(type, scriptHashHex);
    }
    return orElse();
  }
}

abstract class DRepScriptHash extends ParsedDRep {
  factory DRepScriptHash(
      {required final DRepType type,
      required final String scriptHashHex}) = _$DRepScriptHashImpl;
  DRepScriptHash._() : super._();

  @override
  DRepType get type;
  String get scriptHashHex;
  @override
  @JsonKey(ignore: true)
  _$$DRepScriptHashImplCopyWith<_$DRepScriptHashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepAbstainImplCopyWith<$Res>
    implements $ParsedDRepCopyWith<$Res> {
  factory _$$DRepAbstainImplCopyWith(
          _$DRepAbstainImpl value, $Res Function(_$DRepAbstainImpl) then) =
      __$$DRepAbstainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DRepType type});
}

/// @nodoc
class __$$DRepAbstainImplCopyWithImpl<$Res>
    extends _$ParsedDRepCopyWithImpl<$Res, _$DRepAbstainImpl>
    implements _$$DRepAbstainImplCopyWith<$Res> {
  __$$DRepAbstainImplCopyWithImpl(
      _$DRepAbstainImpl _value, $Res Function(_$DRepAbstainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$DRepAbstainImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DRepType,
    ));
  }
}

/// @nodoc

class _$DRepAbstainImpl extends DRepAbstain {
  _$DRepAbstainImpl({required this.type}) : super._();

  @override
  final DRepType type;

  @override
  String toString() {
    return 'ParsedDRep.abstain(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepAbstainImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepAbstainImplCopyWith<_$DRepAbstainImpl> get copyWith =>
      __$$DRepAbstainImplCopyWithImpl<_$DRepAbstainImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DRepType type, List<int> path) keyPath,
    required TResult Function(DRepType type, String keyHashHex) keyHash,
    required TResult Function(DRepType type, String scriptHashHex) scriptHash,
    required TResult Function(DRepType type) abstain,
    required TResult Function(DRepType type) noConfidence,
  }) {
    return abstain(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DRepType type, List<int> path)? keyPath,
    TResult? Function(DRepType type, String keyHashHex)? keyHash,
    TResult? Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult? Function(DRepType type)? abstain,
    TResult? Function(DRepType type)? noConfidence,
  }) {
    return abstain?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DRepType type, List<int> path)? keyPath,
    TResult Function(DRepType type, String keyHashHex)? keyHash,
    TResult Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult Function(DRepType type)? abstain,
    TResult Function(DRepType type)? noConfidence,
    required TResult orElse(),
  }) {
    if (abstain != null) {
      return abstain(type);
    }
    return orElse();
  }
}

abstract class DRepAbstain extends ParsedDRep {
  factory DRepAbstain({required final DRepType type}) = _$DRepAbstainImpl;
  DRepAbstain._() : super._();

  @override
  DRepType get type;
  @override
  @JsonKey(ignore: true)
  _$$DRepAbstainImplCopyWith<_$DRepAbstainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepNoConfidenceImplCopyWith<$Res>
    implements $ParsedDRepCopyWith<$Res> {
  factory _$$DRepNoConfidenceImplCopyWith(_$DRepNoConfidenceImpl value,
          $Res Function(_$DRepNoConfidenceImpl) then) =
      __$$DRepNoConfidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DRepType type});
}

/// @nodoc
class __$$DRepNoConfidenceImplCopyWithImpl<$Res>
    extends _$ParsedDRepCopyWithImpl<$Res, _$DRepNoConfidenceImpl>
    implements _$$DRepNoConfidenceImplCopyWith<$Res> {
  __$$DRepNoConfidenceImplCopyWithImpl(_$DRepNoConfidenceImpl _value,
      $Res Function(_$DRepNoConfidenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$DRepNoConfidenceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DRepType,
    ));
  }
}

/// @nodoc

class _$DRepNoConfidenceImpl extends DRepNoConfidence {
  _$DRepNoConfidenceImpl({required this.type}) : super._();

  @override
  final DRepType type;

  @override
  String toString() {
    return 'ParsedDRep.noConfidence(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepNoConfidenceImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepNoConfidenceImplCopyWith<_$DRepNoConfidenceImpl> get copyWith =>
      __$$DRepNoConfidenceImplCopyWithImpl<_$DRepNoConfidenceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DRepType type, List<int> path) keyPath,
    required TResult Function(DRepType type, String keyHashHex) keyHash,
    required TResult Function(DRepType type, String scriptHashHex) scriptHash,
    required TResult Function(DRepType type) abstain,
    required TResult Function(DRepType type) noConfidence,
  }) {
    return noConfidence(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DRepType type, List<int> path)? keyPath,
    TResult? Function(DRepType type, String keyHashHex)? keyHash,
    TResult? Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult? Function(DRepType type)? abstain,
    TResult? Function(DRepType type)? noConfidence,
  }) {
    return noConfidence?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DRepType type, List<int> path)? keyPath,
    TResult Function(DRepType type, String keyHashHex)? keyHash,
    TResult Function(DRepType type, String scriptHashHex)? scriptHash,
    TResult Function(DRepType type)? abstain,
    TResult Function(DRepType type)? noConfidence,
    required TResult orElse(),
  }) {
    if (noConfidence != null) {
      return noConfidence(type);
    }
    return orElse();
  }
}

abstract class DRepNoConfidence extends ParsedDRep {
  factory DRepNoConfidence({required final DRepType type}) =
      _$DRepNoConfidenceImpl;
  DRepNoConfidence._() : super._();

  @override
  DRepType get type;
  @override
  @JsonKey(ignore: true)
  _$$DRepNoConfidenceImplCopyWith<_$DRepNoConfidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
