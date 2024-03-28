// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_output_destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TxOutputDestination {
  Object get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThirdPartyAddressParams params) thirdParty,
    required TResult Function(DeviceOwnedAddress params) deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThirdPartyAddressParams params)? thirdParty,
    TResult? Function(DeviceOwnedAddress params)? deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThirdPartyAddressParams params)? thirdParty,
    TResult Function(DeviceOwnedAddress params)? deviceOwned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxOutputDestinationCopyWith<$Res> {
  factory $TxOutputDestinationCopyWith(
          TxOutputDestination value, $Res Function(TxOutputDestination) then) =
      _$TxOutputDestinationCopyWithImpl<$Res, TxOutputDestination>;
}

/// @nodoc
class _$TxOutputDestinationCopyWithImpl<$Res, $Val extends TxOutputDestination>
    implements $TxOutputDestinationCopyWith<$Res> {
  _$TxOutputDestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TxOutputDestinationThirdPartyImplCopyWith<$Res> {
  factory _$$TxOutputDestinationThirdPartyImplCopyWith(
          _$TxOutputDestinationThirdPartyImpl value,
          $Res Function(_$TxOutputDestinationThirdPartyImpl) then) =
      __$$TxOutputDestinationThirdPartyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThirdPartyAddressParams params});

  $ThirdPartyAddressParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$TxOutputDestinationThirdPartyImplCopyWithImpl<$Res>
    extends _$TxOutputDestinationCopyWithImpl<$Res,
        _$TxOutputDestinationThirdPartyImpl>
    implements _$$TxOutputDestinationThirdPartyImplCopyWith<$Res> {
  __$$TxOutputDestinationThirdPartyImplCopyWithImpl(
      _$TxOutputDestinationThirdPartyImpl _value,
      $Res Function(_$TxOutputDestinationThirdPartyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TxOutputDestinationThirdPartyImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ThirdPartyAddressParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ThirdPartyAddressParamsCopyWith<$Res> get params {
    return $ThirdPartyAddressParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$TxOutputDestinationThirdPartyImpl
    extends TxOutputDestinationThirdParty {
  _$TxOutputDestinationThirdPartyImpl({required this.params}) : super._();

  @override
  final ThirdPartyAddressParams params;

  @override
  String toString() {
    return 'TxOutputDestination.thirdParty(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxOutputDestinationThirdPartyImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxOutputDestinationThirdPartyImplCopyWith<
          _$TxOutputDestinationThirdPartyImpl>
      get copyWith => __$$TxOutputDestinationThirdPartyImplCopyWithImpl<
          _$TxOutputDestinationThirdPartyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThirdPartyAddressParams params) thirdParty,
    required TResult Function(DeviceOwnedAddress params) deviceOwned,
  }) {
    return thirdParty(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThirdPartyAddressParams params)? thirdParty,
    TResult? Function(DeviceOwnedAddress params)? deviceOwned,
  }) {
    return thirdParty?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThirdPartyAddressParams params)? thirdParty,
    TResult Function(DeviceOwnedAddress params)? deviceOwned,
    required TResult orElse(),
  }) {
    if (thirdParty != null) {
      return thirdParty(params);
    }
    return orElse();
  }
}

abstract class TxOutputDestinationThirdParty extends TxOutputDestination {
  factory TxOutputDestinationThirdParty(
          {required final ThirdPartyAddressParams params}) =
      _$TxOutputDestinationThirdPartyImpl;
  TxOutputDestinationThirdParty._() : super._();

  @override
  ThirdPartyAddressParams get params;
  @JsonKey(ignore: true)
  _$$TxOutputDestinationThirdPartyImplCopyWith<
          _$TxOutputDestinationThirdPartyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TxOutputDestinationDeviceOwnedImplCopyWith<$Res> {
  factory _$$TxOutputDestinationDeviceOwnedImplCopyWith(
          _$TxOutputDestinationDeviceOwnedImpl value,
          $Res Function(_$TxOutputDestinationDeviceOwnedImpl) then) =
      __$$TxOutputDestinationDeviceOwnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeviceOwnedAddress params});

  $DeviceOwnedAddressCopyWith<$Res> get params;
}

/// @nodoc
class __$$TxOutputDestinationDeviceOwnedImplCopyWithImpl<$Res>
    extends _$TxOutputDestinationCopyWithImpl<$Res,
        _$TxOutputDestinationDeviceOwnedImpl>
    implements _$$TxOutputDestinationDeviceOwnedImplCopyWith<$Res> {
  __$$TxOutputDestinationDeviceOwnedImplCopyWithImpl(
      _$TxOutputDestinationDeviceOwnedImpl _value,
      $Res Function(_$TxOutputDestinationDeviceOwnedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TxOutputDestinationDeviceOwnedImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as DeviceOwnedAddress,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceOwnedAddressCopyWith<$Res> get params {
    return $DeviceOwnedAddressCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$TxOutputDestinationDeviceOwnedImpl
    extends TxOutputDestinationDeviceOwned {
  _$TxOutputDestinationDeviceOwnedImpl({required this.params}) : super._();

  @override
  final DeviceOwnedAddress params;

  @override
  String toString() {
    return 'TxOutputDestination.deviceOwned(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxOutputDestinationDeviceOwnedImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxOutputDestinationDeviceOwnedImplCopyWith<
          _$TxOutputDestinationDeviceOwnedImpl>
      get copyWith => __$$TxOutputDestinationDeviceOwnedImplCopyWithImpl<
          _$TxOutputDestinationDeviceOwnedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThirdPartyAddressParams params) thirdParty,
    required TResult Function(DeviceOwnedAddress params) deviceOwned,
  }) {
    return deviceOwned(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThirdPartyAddressParams params)? thirdParty,
    TResult? Function(DeviceOwnedAddress params)? deviceOwned,
  }) {
    return deviceOwned?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThirdPartyAddressParams params)? thirdParty,
    TResult Function(DeviceOwnedAddress params)? deviceOwned,
    required TResult orElse(),
  }) {
    if (deviceOwned != null) {
      return deviceOwned(params);
    }
    return orElse();
  }
}

abstract class TxOutputDestinationDeviceOwned extends TxOutputDestination {
  factory TxOutputDestinationDeviceOwned(
          {required final DeviceOwnedAddress params}) =
      _$TxOutputDestinationDeviceOwnedImpl;
  TxOutputDestinationDeviceOwned._() : super._();

  @override
  DeviceOwnedAddress get params;
  @JsonKey(ignore: true)
  _$$TxOutputDestinationDeviceOwnedImplCopyWith<
          _$TxOutputDestinationDeviceOwnedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
