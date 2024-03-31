// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PoolOwner {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stakingKeyHashHex) thirdParty,
    required TResult Function(List<int> stakingPath) deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stakingKeyHashHex)? thirdParty,
    TResult? Function(List<int> stakingPath)? deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stakingKeyHashHex)? thirdParty,
    TResult Function(List<int> stakingPath)? deviceOwned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolOwnerCopyWith<$Res> {
  factory $PoolOwnerCopyWith(PoolOwner value, $Res Function(PoolOwner) then) =
      _$PoolOwnerCopyWithImpl<$Res, PoolOwner>;
}

/// @nodoc
class _$PoolOwnerCopyWithImpl<$Res, $Val extends PoolOwner>
    implements $PoolOwnerCopyWith<$Res> {
  _$PoolOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PoolOwnerThirdPartyImplCopyWith<$Res> {
  factory _$$PoolOwnerThirdPartyImplCopyWith(_$PoolOwnerThirdPartyImpl value,
          $Res Function(_$PoolOwnerThirdPartyImpl) then) =
      __$$PoolOwnerThirdPartyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String stakingKeyHashHex});
}

/// @nodoc
class __$$PoolOwnerThirdPartyImplCopyWithImpl<$Res>
    extends _$PoolOwnerCopyWithImpl<$Res, _$PoolOwnerThirdPartyImpl>
    implements _$$PoolOwnerThirdPartyImplCopyWith<$Res> {
  __$$PoolOwnerThirdPartyImplCopyWithImpl(_$PoolOwnerThirdPartyImpl _value,
      $Res Function(_$PoolOwnerThirdPartyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingKeyHashHex = null,
  }) {
    return _then(_$PoolOwnerThirdPartyImpl(
      stakingKeyHashHex: null == stakingKeyHashHex
          ? _value.stakingKeyHashHex
          : stakingKeyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PoolOwnerThirdPartyImpl extends PoolOwnerThirdParty {
  _$PoolOwnerThirdPartyImpl({required this.stakingKeyHashHex}) : super._();

  @override
  final String stakingKeyHashHex;

  @override
  String toString() {
    return 'PoolOwner.thirdParty(stakingKeyHashHex: $stakingKeyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolOwnerThirdPartyImpl &&
            (identical(other.stakingKeyHashHex, stakingKeyHashHex) ||
                other.stakingKeyHashHex == stakingKeyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stakingKeyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolOwnerThirdPartyImplCopyWith<_$PoolOwnerThirdPartyImpl> get copyWith =>
      __$$PoolOwnerThirdPartyImplCopyWithImpl<_$PoolOwnerThirdPartyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stakingKeyHashHex) thirdParty,
    required TResult Function(List<int> stakingPath) deviceOwned,
  }) {
    return thirdParty(stakingKeyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stakingKeyHashHex)? thirdParty,
    TResult? Function(List<int> stakingPath)? deviceOwned,
  }) {
    return thirdParty?.call(stakingKeyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stakingKeyHashHex)? thirdParty,
    TResult Function(List<int> stakingPath)? deviceOwned,
    required TResult orElse(),
  }) {
    if (thirdParty != null) {
      return thirdParty(stakingKeyHashHex);
    }
    return orElse();
  }
}

abstract class PoolOwnerThirdParty extends PoolOwner {
  factory PoolOwnerThirdParty({required final String stakingKeyHashHex}) =
      _$PoolOwnerThirdPartyImpl;
  PoolOwnerThirdParty._() : super._();

  String get stakingKeyHashHex;
  @JsonKey(ignore: true)
  _$$PoolOwnerThirdPartyImplCopyWith<_$PoolOwnerThirdPartyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PoolOwnerDeviceOwnedImplCopyWith<$Res> {
  factory _$$PoolOwnerDeviceOwnedImplCopyWith(_$PoolOwnerDeviceOwnedImpl value,
          $Res Function(_$PoolOwnerDeviceOwnedImpl) then) =
      __$$PoolOwnerDeviceOwnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> stakingPath});
}

/// @nodoc
class __$$PoolOwnerDeviceOwnedImplCopyWithImpl<$Res>
    extends _$PoolOwnerCopyWithImpl<$Res, _$PoolOwnerDeviceOwnedImpl>
    implements _$$PoolOwnerDeviceOwnedImplCopyWith<$Res> {
  __$$PoolOwnerDeviceOwnedImplCopyWithImpl(_$PoolOwnerDeviceOwnedImpl _value,
      $Res Function(_$PoolOwnerDeviceOwnedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stakingPath = null,
  }) {
    return _then(_$PoolOwnerDeviceOwnedImpl(
      stakingPath: null == stakingPath
          ? _value._stakingPath
          : stakingPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$PoolOwnerDeviceOwnedImpl extends PoolOwnerDeviceOwned {
  _$PoolOwnerDeviceOwnedImpl({required final List<int> stakingPath})
      : _stakingPath = stakingPath,
        super._();

  final List<int> _stakingPath;
  @override
  List<int> get stakingPath {
    if (_stakingPath is EqualUnmodifiableListView) return _stakingPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stakingPath);
  }

  @override
  String toString() {
    return 'PoolOwner.deviceOwned(stakingPath: $stakingPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolOwnerDeviceOwnedImpl &&
            const DeepCollectionEquality()
                .equals(other._stakingPath, _stakingPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_stakingPath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolOwnerDeviceOwnedImplCopyWith<_$PoolOwnerDeviceOwnedImpl>
      get copyWith =>
          __$$PoolOwnerDeviceOwnedImplCopyWithImpl<_$PoolOwnerDeviceOwnedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stakingKeyHashHex) thirdParty,
    required TResult Function(List<int> stakingPath) deviceOwned,
  }) {
    return deviceOwned(stakingPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String stakingKeyHashHex)? thirdParty,
    TResult? Function(List<int> stakingPath)? deviceOwned,
  }) {
    return deviceOwned?.call(stakingPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stakingKeyHashHex)? thirdParty,
    TResult Function(List<int> stakingPath)? deviceOwned,
    required TResult orElse(),
  }) {
    if (deviceOwned != null) {
      return deviceOwned(stakingPath);
    }
    return orElse();
  }
}

abstract class PoolOwnerDeviceOwned extends PoolOwner {
  factory PoolOwnerDeviceOwned({required final List<int> stakingPath}) =
      _$PoolOwnerDeviceOwnedImpl;
  PoolOwnerDeviceOwned._() : super._();

  List<int> get stakingPath;
  @JsonKey(ignore: true)
  _$$PoolOwnerDeviceOwnedImplCopyWith<_$PoolOwnerDeviceOwnedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
