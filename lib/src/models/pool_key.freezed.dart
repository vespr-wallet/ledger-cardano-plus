// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PoolKey {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyHashHex) thirdParty,
    required TResult Function(List<int> path) deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyHashHex)? thirdParty,
    TResult? Function(List<int> path)? deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyHashHex)? thirdParty,
    TResult Function(List<int> path)? deviceOwned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolKeyCopyWith<$Res> {
  factory $PoolKeyCopyWith(PoolKey value, $Res Function(PoolKey) then) =
      _$PoolKeyCopyWithImpl<$Res, PoolKey>;
}

/// @nodoc
class _$PoolKeyCopyWithImpl<$Res, $Val extends PoolKey>
    implements $PoolKeyCopyWith<$Res> {
  _$PoolKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PoolKeyThirdPartyImplCopyWith<$Res> {
  factory _$$PoolKeyThirdPartyImplCopyWith(_$PoolKeyThirdPartyImpl value,
          $Res Function(_$PoolKeyThirdPartyImpl) then) =
      __$$PoolKeyThirdPartyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class __$$PoolKeyThirdPartyImplCopyWithImpl<$Res>
    extends _$PoolKeyCopyWithImpl<$Res, _$PoolKeyThirdPartyImpl>
    implements _$$PoolKeyThirdPartyImplCopyWith<$Res> {
  __$$PoolKeyThirdPartyImplCopyWithImpl(_$PoolKeyThirdPartyImpl _value,
      $Res Function(_$PoolKeyThirdPartyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(_$PoolKeyThirdPartyImpl(
      keyHashHex: null == keyHashHex
          ? _value.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PoolKeyThirdPartyImpl extends PoolKeyThirdParty {
  _$PoolKeyThirdPartyImpl({required this.keyHashHex}) : super._();

  @override
  final String keyHashHex;

  @override
  String toString() {
    return 'PoolKey.thirdParty(keyHashHex: $keyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolKeyThirdPartyImpl &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolKeyThirdPartyImplCopyWith<_$PoolKeyThirdPartyImpl> get copyWith =>
      __$$PoolKeyThirdPartyImplCopyWithImpl<_$PoolKeyThirdPartyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyHashHex) thirdParty,
    required TResult Function(List<int> path) deviceOwned,
  }) {
    return thirdParty(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyHashHex)? thirdParty,
    TResult? Function(List<int> path)? deviceOwned,
  }) {
    return thirdParty?.call(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyHashHex)? thirdParty,
    TResult Function(List<int> path)? deviceOwned,
    required TResult orElse(),
  }) {
    if (thirdParty != null) {
      return thirdParty(keyHashHex);
    }
    return orElse();
  }
}

abstract class PoolKeyThirdParty extends PoolKey {
  factory PoolKeyThirdParty({required final String keyHashHex}) =
      _$PoolKeyThirdPartyImpl;
  PoolKeyThirdParty._() : super._();

  String get keyHashHex;
  @JsonKey(ignore: true)
  _$$PoolKeyThirdPartyImplCopyWith<_$PoolKeyThirdPartyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PoolKeyDeviceOwnedImplCopyWith<$Res> {
  factory _$$PoolKeyDeviceOwnedImplCopyWith(_$PoolKeyDeviceOwnedImpl value,
          $Res Function(_$PoolKeyDeviceOwnedImpl) then) =
      __$$PoolKeyDeviceOwnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> path});
}

/// @nodoc
class __$$PoolKeyDeviceOwnedImplCopyWithImpl<$Res>
    extends _$PoolKeyCopyWithImpl<$Res, _$PoolKeyDeviceOwnedImpl>
    implements _$$PoolKeyDeviceOwnedImplCopyWith<$Res> {
  __$$PoolKeyDeviceOwnedImplCopyWithImpl(_$PoolKeyDeviceOwnedImpl _value,
      $Res Function(_$PoolKeyDeviceOwnedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$PoolKeyDeviceOwnedImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$PoolKeyDeviceOwnedImpl extends PoolKeyDeviceOwned {
  _$PoolKeyDeviceOwnedImpl({required final List<int> path})
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
    return 'PoolKey.deviceOwned(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolKeyDeviceOwnedImpl &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolKeyDeviceOwnedImplCopyWith<_$PoolKeyDeviceOwnedImpl> get copyWith =>
      __$$PoolKeyDeviceOwnedImplCopyWithImpl<_$PoolKeyDeviceOwnedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyHashHex) thirdParty,
    required TResult Function(List<int> path) deviceOwned,
  }) {
    return deviceOwned(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyHashHex)? thirdParty,
    TResult? Function(List<int> path)? deviceOwned,
  }) {
    return deviceOwned?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyHashHex)? thirdParty,
    TResult Function(List<int> path)? deviceOwned,
    required TResult orElse(),
  }) {
    if (deviceOwned != null) {
      return deviceOwned(path);
    }
    return orElse();
  }
}

abstract class PoolKeyDeviceOwned extends PoolKey {
  factory PoolKeyDeviceOwned({required final List<int> path}) =
      _$PoolKeyDeviceOwnedImpl;
  PoolKeyDeviceOwned._() : super._();

  List<int> get path;
  @JsonKey(ignore: true)
  _$$PoolKeyDeviceOwnedImplCopyWith<_$PoolKeyDeviceOwnedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
