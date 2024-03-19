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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) keyPath,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? keyPath,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? keyPath,
    TResult Function()? abstain,
    TResult Function()? noConfidence,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedDRepCopyWith<$Res> {
  factory $ParsedDRepCopyWith(
          ParsedDRep value, $Res Function(ParsedDRep) then) =
      _$ParsedDRepCopyWithImpl<$Res, ParsedDRep>;
}

/// @nodoc
class _$ParsedDRepCopyWithImpl<$Res, $Val extends ParsedDRep>
    implements $ParsedDRepCopyWith<$Res> {
  _$ParsedDRepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DRepKeyPathImplCopyWith<$Res> {
  factory _$$DRepKeyPathImplCopyWith(
          _$DRepKeyPathImpl value, $Res Function(_$DRepKeyPathImpl) then) =
      __$$DRepKeyPathImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> path});
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
    Object? path = null,
  }) {
    return _then(_$DRepKeyPathImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DRepKeyPathImpl extends DRepKeyPath {
  _$DRepKeyPathImpl({required final List<int> path})
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
    return 'ParsedDRep.keyPath(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepKeyPathImpl &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepKeyPathImplCopyWith<_$DRepKeyPathImpl> get copyWith =>
      __$$DRepKeyPathImplCopyWithImpl<_$DRepKeyPathImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) keyPath,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) {
    return keyPath(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? keyPath,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) {
    return keyPath?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? keyPath,
    TResult Function()? abstain,
    TResult Function()? noConfidence,
    required TResult orElse(),
  }) {
    if (keyPath != null) {
      return keyPath(path);
    }
    return orElse();
  }
}

abstract class DRepKeyPath extends ParsedDRep {
  factory DRepKeyPath({required final List<int> path}) = _$DRepKeyPathImpl;
  DRepKeyPath._() : super._();

  List<int> get path;
  @JsonKey(ignore: true)
  _$$DRepKeyPathImplCopyWith<_$DRepKeyPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DRepAbstainImplCopyWith<$Res> {
  factory _$$DRepAbstainImplCopyWith(
          _$DRepAbstainImpl value, $Res Function(_$DRepAbstainImpl) then) =
      __$$DRepAbstainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DRepAbstainImplCopyWithImpl<$Res>
    extends _$ParsedDRepCopyWithImpl<$Res, _$DRepAbstainImpl>
    implements _$$DRepAbstainImplCopyWith<$Res> {
  __$$DRepAbstainImplCopyWithImpl(
      _$DRepAbstainImpl _value, $Res Function(_$DRepAbstainImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DRepAbstainImpl extends DRepAbstain {
  _$DRepAbstainImpl() : super._();

  @override
  String toString() {
    return 'ParsedDRep.abstain()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DRepAbstainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) keyPath,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) {
    return abstain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? keyPath,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) {
    return abstain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? keyPath,
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

abstract class DRepAbstain extends ParsedDRep {
  factory DRepAbstain() = _$DRepAbstainImpl;
  DRepAbstain._() : super._();
}

/// @nodoc
abstract class _$$DRepNoConfidenceImplCopyWith<$Res> {
  factory _$$DRepNoConfidenceImplCopyWith(_$DRepNoConfidenceImpl value,
          $Res Function(_$DRepNoConfidenceImpl) then) =
      __$$DRepNoConfidenceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DRepNoConfidenceImplCopyWithImpl<$Res>
    extends _$ParsedDRepCopyWithImpl<$Res, _$DRepNoConfidenceImpl>
    implements _$$DRepNoConfidenceImplCopyWith<$Res> {
  __$$DRepNoConfidenceImplCopyWithImpl(_$DRepNoConfidenceImpl _value,
      $Res Function(_$DRepNoConfidenceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DRepNoConfidenceImpl extends DRepNoConfidence {
  _$DRepNoConfidenceImpl() : super._();

  @override
  String toString() {
    return 'ParsedDRep.noConfidence()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DRepNoConfidenceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) keyPath,
    required TResult Function() abstain,
    required TResult Function() noConfidence,
  }) {
    return noConfidence();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? keyPath,
    TResult? Function()? abstain,
    TResult? Function()? noConfidence,
  }) {
    return noConfidence?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? keyPath,
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

abstract class DRepNoConfidence extends ParsedDRep {
  factory DRepNoConfidence() = _$DRepNoConfidenceImpl;
  DRepNoConfidence._() : super._();
}
