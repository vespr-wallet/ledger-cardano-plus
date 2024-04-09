// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedPoolKey {}

/// @nodoc
abstract class $ParsedPoolKeyCopyWith<$Res> {
  factory $ParsedPoolKeyCopyWith(
          ParsedPoolKey value, $Res Function(ParsedPoolKey) then) =
      _$ParsedPoolKeyCopyWithImpl<$Res, ParsedPoolKey>;
}

/// @nodoc
class _$ParsedPoolKeyCopyWithImpl<$Res, $Val extends ParsedPoolKey>
    implements $ParsedPoolKeyCopyWith<$Res> {
  _$ParsedPoolKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeviceOwnedPoolKeyImplCopyWith<$Res> {
  factory _$$DeviceOwnedPoolKeyImplCopyWith(_$DeviceOwnedPoolKeyImpl value,
          $Res Function(_$DeviceOwnedPoolKeyImpl) then) =
      __$$DeviceOwnedPoolKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> path});
}

/// @nodoc
class __$$DeviceOwnedPoolKeyImplCopyWithImpl<$Res>
    extends _$ParsedPoolKeyCopyWithImpl<$Res, _$DeviceOwnedPoolKeyImpl>
    implements _$$DeviceOwnedPoolKeyImplCopyWith<$Res> {
  __$$DeviceOwnedPoolKeyImplCopyWithImpl(_$DeviceOwnedPoolKeyImpl _value,
      $Res Function(_$DeviceOwnedPoolKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$DeviceOwnedPoolKeyImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DeviceOwnedPoolKeyImpl extends DeviceOwnedPoolKey {
  _$DeviceOwnedPoolKeyImpl({required final List<int> path})
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
    return 'ParsedPoolKey.deviceOwned(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceOwnedPoolKeyImpl &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceOwnedPoolKeyImplCopyWith<_$DeviceOwnedPoolKeyImpl> get copyWith =>
      __$$DeviceOwnedPoolKeyImplCopyWithImpl<_$DeviceOwnedPoolKeyImpl>(
          this, _$identity);
}

abstract class DeviceOwnedPoolKey extends ParsedPoolKey {
  factory DeviceOwnedPoolKey({required final List<int> path}) =
      _$DeviceOwnedPoolKeyImpl;
  DeviceOwnedPoolKey._() : super._();

  List<int> get path;
  @JsonKey(ignore: true)
  _$$DeviceOwnedPoolKeyImplCopyWith<_$DeviceOwnedPoolKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThirdPartyPoolKeyImplCopyWith<$Res> {
  factory _$$ThirdPartyPoolKeyImplCopyWith(_$ThirdPartyPoolKeyImpl value,
          $Res Function(_$ThirdPartyPoolKeyImpl) then) =
      __$$ThirdPartyPoolKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String hashHex});
}

/// @nodoc
class __$$ThirdPartyPoolKeyImplCopyWithImpl<$Res>
    extends _$ParsedPoolKeyCopyWithImpl<$Res, _$ThirdPartyPoolKeyImpl>
    implements _$$ThirdPartyPoolKeyImplCopyWith<$Res> {
  __$$ThirdPartyPoolKeyImplCopyWithImpl(_$ThirdPartyPoolKeyImpl _value,
      $Res Function(_$ThirdPartyPoolKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashHex = null,
  }) {
    return _then(_$ThirdPartyPoolKeyImpl(
      hashHex: null == hashHex
          ? _value.hashHex
          : hashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThirdPartyPoolKeyImpl extends ThirdPartyPoolKey {
  _$ThirdPartyPoolKeyImpl({required this.hashHex}) : super._();

  @override
  final String hashHex;

  @override
  String toString() {
    return 'ParsedPoolKey.thirdParty(hashHex: $hashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThirdPartyPoolKeyImpl &&
            (identical(other.hashHex, hashHex) || other.hashHex == hashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThirdPartyPoolKeyImplCopyWith<_$ThirdPartyPoolKeyImpl> get copyWith =>
      __$$ThirdPartyPoolKeyImplCopyWithImpl<_$ThirdPartyPoolKeyImpl>(
          this, _$identity);
}

abstract class ThirdPartyPoolKey extends ParsedPoolKey {
  factory ThirdPartyPoolKey({required final String hashHex}) =
      _$ThirdPartyPoolKeyImpl;
  ThirdPartyPoolKey._() : super._();

  String get hashHex;
  @JsonKey(ignore: true)
  _$$ThirdPartyPoolKeyImplCopyWith<_$ThirdPartyPoolKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
