// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedPoolOwner {
  PoolOwnerType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PoolOwnerType type, List<int> path) deviceOwned,
    required TResult Function(PoolOwnerType type, String hashHex) thirdParty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PoolOwnerType type, List<int> path)? deviceOwned,
    TResult? Function(PoolOwnerType type, String hashHex)? thirdParty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PoolOwnerType type, List<int> path)? deviceOwned,
    TResult Function(PoolOwnerType type, String hashHex)? thirdParty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedPoolOwnerCopyWith<ParsedPoolOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedPoolOwnerCopyWith<$Res> {
  factory $ParsedPoolOwnerCopyWith(
          ParsedPoolOwner value, $Res Function(ParsedPoolOwner) then) =
      _$ParsedPoolOwnerCopyWithImpl<$Res, ParsedPoolOwner>;
  @useResult
  $Res call({PoolOwnerType type});
}

/// @nodoc
class _$ParsedPoolOwnerCopyWithImpl<$Res, $Val extends ParsedPoolOwner>
    implements $ParsedPoolOwnerCopyWith<$Res> {
  _$ParsedPoolOwnerCopyWithImpl(this._value, this._then);

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
              as PoolOwnerType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceOwnedPoolOwnerImplCopyWith<$Res>
    implements $ParsedPoolOwnerCopyWith<$Res> {
  factory _$$DeviceOwnedPoolOwnerImplCopyWith(_$DeviceOwnedPoolOwnerImpl value,
          $Res Function(_$DeviceOwnedPoolOwnerImpl) then) =
      __$$DeviceOwnedPoolOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PoolOwnerType type, List<int> path});
}

/// @nodoc
class __$$DeviceOwnedPoolOwnerImplCopyWithImpl<$Res>
    extends _$ParsedPoolOwnerCopyWithImpl<$Res, _$DeviceOwnedPoolOwnerImpl>
    implements _$$DeviceOwnedPoolOwnerImplCopyWith<$Res> {
  __$$DeviceOwnedPoolOwnerImplCopyWithImpl(_$DeviceOwnedPoolOwnerImpl _value,
      $Res Function(_$DeviceOwnedPoolOwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? path = null,
  }) {
    return _then(_$DeviceOwnedPoolOwnerImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PoolOwnerType,
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DeviceOwnedPoolOwnerImpl extends DeviceOwnedPoolOwner {
  const _$DeviceOwnedPoolOwnerImpl(
      {required this.type, required final List<int> path})
      : _path = path,
        super._();

  @override
  final PoolOwnerType type;
  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'ParsedPoolOwner.deviceOwned(type: $type, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceOwnedPoolOwnerImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceOwnedPoolOwnerImplCopyWith<_$DeviceOwnedPoolOwnerImpl>
      get copyWith =>
          __$$DeviceOwnedPoolOwnerImplCopyWithImpl<_$DeviceOwnedPoolOwnerImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PoolOwnerType type, List<int> path) deviceOwned,
    required TResult Function(PoolOwnerType type, String hashHex) thirdParty,
  }) {
    return deviceOwned(type, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PoolOwnerType type, List<int> path)? deviceOwned,
    TResult? Function(PoolOwnerType type, String hashHex)? thirdParty,
  }) {
    return deviceOwned?.call(type, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PoolOwnerType type, List<int> path)? deviceOwned,
    TResult Function(PoolOwnerType type, String hashHex)? thirdParty,
    required TResult orElse(),
  }) {
    if (deviceOwned != null) {
      return deviceOwned(type, path);
    }
    return orElse();
  }
}

abstract class DeviceOwnedPoolOwner extends ParsedPoolOwner {
  const factory DeviceOwnedPoolOwner(
      {required final PoolOwnerType type,
      required final List<int> path}) = _$DeviceOwnedPoolOwnerImpl;
  const DeviceOwnedPoolOwner._() : super._();

  @override
  PoolOwnerType get type;
  List<int> get path;
  @override
  @JsonKey(ignore: true)
  _$$DeviceOwnedPoolOwnerImplCopyWith<_$DeviceOwnedPoolOwnerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThirdPartyPoolOwnerImplCopyWith<$Res>
    implements $ParsedPoolOwnerCopyWith<$Res> {
  factory _$$ThirdPartyPoolOwnerImplCopyWith(_$ThirdPartyPoolOwnerImpl value,
          $Res Function(_$ThirdPartyPoolOwnerImpl) then) =
      __$$ThirdPartyPoolOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PoolOwnerType type, String hashHex});
}

/// @nodoc
class __$$ThirdPartyPoolOwnerImplCopyWithImpl<$Res>
    extends _$ParsedPoolOwnerCopyWithImpl<$Res, _$ThirdPartyPoolOwnerImpl>
    implements _$$ThirdPartyPoolOwnerImplCopyWith<$Res> {
  __$$ThirdPartyPoolOwnerImplCopyWithImpl(_$ThirdPartyPoolOwnerImpl _value,
      $Res Function(_$ThirdPartyPoolOwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? hashHex = null,
  }) {
    return _then(_$ThirdPartyPoolOwnerImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PoolOwnerType,
      hashHex: null == hashHex
          ? _value.hashHex
          : hashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThirdPartyPoolOwnerImpl extends ThirdPartyPoolOwner {
  const _$ThirdPartyPoolOwnerImpl({required this.type, required this.hashHex})
      : super._();

  @override
  final PoolOwnerType type;
  @override
  final String hashHex;

  @override
  String toString() {
    return 'ParsedPoolOwner.thirdParty(type: $type, hashHex: $hashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThirdPartyPoolOwnerImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hashHex, hashHex) || other.hashHex == hashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, hashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThirdPartyPoolOwnerImplCopyWith<_$ThirdPartyPoolOwnerImpl> get copyWith =>
      __$$ThirdPartyPoolOwnerImplCopyWithImpl<_$ThirdPartyPoolOwnerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PoolOwnerType type, List<int> path) deviceOwned,
    required TResult Function(PoolOwnerType type, String hashHex) thirdParty,
  }) {
    return thirdParty(type, hashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PoolOwnerType type, List<int> path)? deviceOwned,
    TResult? Function(PoolOwnerType type, String hashHex)? thirdParty,
  }) {
    return thirdParty?.call(type, hashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PoolOwnerType type, List<int> path)? deviceOwned,
    TResult Function(PoolOwnerType type, String hashHex)? thirdParty,
    required TResult orElse(),
  }) {
    if (thirdParty != null) {
      return thirdParty(type, hashHex);
    }
    return orElse();
  }
}

abstract class ThirdPartyPoolOwner extends ParsedPoolOwner {
  const factory ThirdPartyPoolOwner(
      {required final PoolOwnerType type,
      required final String hashHex}) = _$ThirdPartyPoolOwnerImpl;
  const ThirdPartyPoolOwner._() : super._();

  @override
  PoolOwnerType get type;
  String get hashHex;
  @override
  @JsonKey(ignore: true)
  _$$ThirdPartyPoolOwnerImplCopyWith<_$ThirdPartyPoolOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
