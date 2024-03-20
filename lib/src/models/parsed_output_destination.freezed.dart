// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_output_destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedOutputDestination {
  TxOutputDestinationType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxOutputDestinationType type, String addressHex)
        thirdParty,
    required TResult Function(
            TxOutputDestinationType type, ParsedAddressParams addressParams)
        deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxOutputDestinationType type, String addressHex)?
        thirdParty,
    TResult? Function(
            TxOutputDestinationType type, ParsedAddressParams addressParams)?
        deviceOwned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxOutputDestinationType type, String addressHex)?
        thirdParty,
    TResult Function(
            TxOutputDestinationType type, ParsedAddressParams addressParams)?
        deviceOwned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedOutputDestinationCopyWith<ParsedOutputDestination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedOutputDestinationCopyWith<$Res> {
  factory $ParsedOutputDestinationCopyWith(ParsedOutputDestination value,
          $Res Function(ParsedOutputDestination) then) =
      _$ParsedOutputDestinationCopyWithImpl<$Res, ParsedOutputDestination>;
  @useResult
  $Res call({TxOutputDestinationType type});
}

/// @nodoc
class _$ParsedOutputDestinationCopyWithImpl<$Res,
        $Val extends ParsedOutputDestination>
    implements $ParsedOutputDestinationCopyWith<$Res> {
  _$ParsedOutputDestinationCopyWithImpl(this._value, this._then);

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
              as TxOutputDestinationType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThirdPartyImplCopyWith<$Res>
    implements $ParsedOutputDestinationCopyWith<$Res> {
  factory _$$ThirdPartyImplCopyWith(
          _$ThirdPartyImpl value, $Res Function(_$ThirdPartyImpl) then) =
      __$$ThirdPartyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TxOutputDestinationType type, String addressHex});
}

/// @nodoc
class __$$ThirdPartyImplCopyWithImpl<$Res>
    extends _$ParsedOutputDestinationCopyWithImpl<$Res, _$ThirdPartyImpl>
    implements _$$ThirdPartyImplCopyWith<$Res> {
  __$$ThirdPartyImplCopyWithImpl(
      _$ThirdPartyImpl _value, $Res Function(_$ThirdPartyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? addressHex = null,
  }) {
    return _then(_$ThirdPartyImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TxOutputDestinationType,
      addressHex: null == addressHex
          ? _value.addressHex
          : addressHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThirdPartyImpl extends ThirdParty {
  const _$ThirdPartyImpl({required this.type, required this.addressHex})
      : super._();

  @override
  final TxOutputDestinationType type;
  @override
  final String addressHex;

  @override
  String toString() {
    return 'ParsedOutputDestination.thirdParty(type: $type, addressHex: $addressHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThirdPartyImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.addressHex, addressHex) ||
                other.addressHex == addressHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, addressHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThirdPartyImplCopyWith<_$ThirdPartyImpl> get copyWith =>
      __$$ThirdPartyImplCopyWithImpl<_$ThirdPartyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxOutputDestinationType type, String addressHex)
        thirdParty,
    required TResult Function(
            TxOutputDestinationType type, ParsedAddressParams addressParams)
        deviceOwned,
  }) {
    return thirdParty(type, addressHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxOutputDestinationType type, String addressHex)?
        thirdParty,
    TResult? Function(
            TxOutputDestinationType type, ParsedAddressParams addressParams)?
        deviceOwned,
  }) {
    return thirdParty?.call(type, addressHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxOutputDestinationType type, String addressHex)?
        thirdParty,
    TResult Function(
            TxOutputDestinationType type, ParsedAddressParams addressParams)?
        deviceOwned,
    required TResult orElse(),
  }) {
    if (thirdParty != null) {
      return thirdParty(type, addressHex);
    }
    return orElse();
  }
}

abstract class ThirdParty extends ParsedOutputDestination {
  const factory ThirdParty(
      {required final TxOutputDestinationType type,
      required final String addressHex}) = _$ThirdPartyImpl;
  const ThirdParty._() : super._();

  @override
  TxOutputDestinationType get type;
  String get addressHex;
  @override
  @JsonKey(ignore: true)
  _$$ThirdPartyImplCopyWith<_$ThirdPartyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceOwnedImplCopyWith<$Res>
    implements $ParsedOutputDestinationCopyWith<$Res> {
  factory _$$DeviceOwnedImplCopyWith(
          _$DeviceOwnedImpl value, $Res Function(_$DeviceOwnedImpl) then) =
      __$$DeviceOwnedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TxOutputDestinationType type, ParsedAddressParams addressParams});

  $ParsedAddressParamsCopyWith<$Res> get addressParams;
}

/// @nodoc
class __$$DeviceOwnedImplCopyWithImpl<$Res>
    extends _$ParsedOutputDestinationCopyWithImpl<$Res, _$DeviceOwnedImpl>
    implements _$$DeviceOwnedImplCopyWith<$Res> {
  __$$DeviceOwnedImplCopyWithImpl(
      _$DeviceOwnedImpl _value, $Res Function(_$DeviceOwnedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? addressParams = null,
  }) {
    return _then(_$DeviceOwnedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TxOutputDestinationType,
      addressParams: null == addressParams
          ? _value.addressParams
          : addressParams // ignore: cast_nullable_to_non_nullable
              as ParsedAddressParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedAddressParamsCopyWith<$Res> get addressParams {
    return $ParsedAddressParamsCopyWith<$Res>(_value.addressParams, (value) {
      return _then(_value.copyWith(addressParams: value));
    });
  }
}

/// @nodoc

class _$DeviceOwnedImpl extends DeviceOwned {
  const _$DeviceOwnedImpl({required this.type, required this.addressParams})
      : super._();

  @override
  final TxOutputDestinationType type;
  @override
  final ParsedAddressParams addressParams;

  @override
  String toString() {
    return 'ParsedOutputDestination.deviceOwned(type: $type, addressParams: $addressParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceOwnedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.addressParams, addressParams) ||
                other.addressParams == addressParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, addressParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceOwnedImplCopyWith<_$DeviceOwnedImpl> get copyWith =>
      __$$DeviceOwnedImplCopyWithImpl<_$DeviceOwnedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxOutputDestinationType type, String addressHex)
        thirdParty,
    required TResult Function(
            TxOutputDestinationType type, ParsedAddressParams addressParams)
        deviceOwned,
  }) {
    return deviceOwned(type, addressParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxOutputDestinationType type, String addressHex)?
        thirdParty,
    TResult? Function(
            TxOutputDestinationType type, ParsedAddressParams addressParams)?
        deviceOwned,
  }) {
    return deviceOwned?.call(type, addressParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxOutputDestinationType type, String addressHex)?
        thirdParty,
    TResult Function(
            TxOutputDestinationType type, ParsedAddressParams addressParams)?
        deviceOwned,
    required TResult orElse(),
  }) {
    if (deviceOwned != null) {
      return deviceOwned(type, addressParams);
    }
    return orElse();
  }
}

abstract class DeviceOwned extends ParsedOutputDestination {
  const factory DeviceOwned(
      {required final TxOutputDestinationType type,
      required final ParsedAddressParams addressParams}) = _$DeviceOwnedImpl;
  const DeviceOwned._() : super._();

  @override
  TxOutputDestinationType get type;
  ParsedAddressParams get addressParams;
  @override
  @JsonKey(ignore: true)
  _$$DeviceOwnedImplCopyWith<_$DeviceOwnedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
