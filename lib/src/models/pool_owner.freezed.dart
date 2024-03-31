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
  String get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String params) thirdParty,
    required TResult Function(String params) deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String params)? thirdParty,
    TResult? Function(String params)? deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String params)? thirdParty,
    TResult Function(String params)? deviceOwned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PoolOwnerCopyWith<PoolOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolOwnerCopyWith<$Res> {
  factory $PoolOwnerCopyWith(PoolOwner value, $Res Function(PoolOwner) then) =
      _$PoolOwnerCopyWithImpl<$Res, PoolOwner>;
  @useResult
  $Res call({String params});
}

/// @nodoc
class _$PoolOwnerCopyWithImpl<$Res, $Val extends PoolOwner>
    implements $PoolOwnerCopyWith<$Res> {
  _$PoolOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoolOwnerThirdPartyImplCopyWith<$Res>
    implements $PoolOwnerCopyWith<$Res> {
  factory _$$PoolOwnerThirdPartyImplCopyWith(_$PoolOwnerThirdPartyImpl value,
          $Res Function(_$PoolOwnerThirdPartyImpl) then) =
      __$$PoolOwnerThirdPartyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String params});
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
    Object? params = null,
  }) {
    return _then(_$PoolOwnerThirdPartyImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PoolOwnerThirdPartyImpl extends PoolOwnerThirdParty {
  _$PoolOwnerThirdPartyImpl({required this.params}) : super._();

  @override
  final String params;

  @override
  String toString() {
    return 'PoolOwner.thirdParty(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolOwnerThirdPartyImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoolOwnerThirdPartyImplCopyWith<_$PoolOwnerThirdPartyImpl> get copyWith =>
      __$$PoolOwnerThirdPartyImplCopyWithImpl<_$PoolOwnerThirdPartyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String params) thirdParty,
    required TResult Function(String params) deviceOwned,
  }) {
    return thirdParty(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String params)? thirdParty,
    TResult? Function(String params)? deviceOwned,
  }) {
    return thirdParty?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String params)? thirdParty,
    TResult Function(String params)? deviceOwned,
    required TResult orElse(),
  }) {
    if (thirdParty != null) {
      return thirdParty(params);
    }
    return orElse();
  }
}

abstract class PoolOwnerThirdParty extends PoolOwner {
  factory PoolOwnerThirdParty({required final String params}) =
      _$PoolOwnerThirdPartyImpl;
  PoolOwnerThirdParty._() : super._();

  @override
  String get params;
  @override
  @JsonKey(ignore: true)
  _$$PoolOwnerThirdPartyImplCopyWith<_$PoolOwnerThirdPartyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PoolOwnerDeviceOwnedImplCopyWith<$Res>
    implements $PoolOwnerCopyWith<$Res> {
  factory _$$PoolOwnerDeviceOwnedImplCopyWith(_$PoolOwnerDeviceOwnedImpl value,
          $Res Function(_$PoolOwnerDeviceOwnedImpl) then) =
      __$$PoolOwnerDeviceOwnedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String params});
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
    Object? params = null,
  }) {
    return _then(_$PoolOwnerDeviceOwnedImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PoolOwnerDeviceOwnedImpl extends PoolOwnerDeviceOwned {
  _$PoolOwnerDeviceOwnedImpl({required this.params}) : super._();

  @override
  final String params;

  @override
  String toString() {
    return 'PoolOwner.deviceOwned(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoolOwnerDeviceOwnedImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

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
    required TResult Function(String params) thirdParty,
    required TResult Function(String params) deviceOwned,
  }) {
    return deviceOwned(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String params)? thirdParty,
    TResult? Function(String params)? deviceOwned,
  }) {
    return deviceOwned?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String params)? thirdParty,
    TResult Function(String params)? deviceOwned,
    required TResult orElse(),
  }) {
    if (deviceOwned != null) {
      return deviceOwned(params);
    }
    return orElse();
  }
}

abstract class PoolOwnerDeviceOwned extends PoolOwner {
  factory PoolOwnerDeviceOwned({required final String params}) =
      _$PoolOwnerDeviceOwnedImpl;
  PoolOwnerDeviceOwned._() : super._();

  @override
  String get params;
  @override
  @JsonKey(ignore: true)
  _$$PoolOwnerDeviceOwnedImplCopyWith<_$PoolOwnerDeviceOwnedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
