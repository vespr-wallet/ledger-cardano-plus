// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_owned_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceOwnedAddress {
  Object get type => throw _privateConstructorUsedError;
  Object get params => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceOwnedAddressCopyWith<$Res> {
  factory $DeviceOwnedAddressCopyWith(
          DeviceOwnedAddress value, $Res Function(DeviceOwnedAddress) then) =
      _$DeviceOwnedAddressCopyWithImpl<$Res, DeviceOwnedAddress>;
}

/// @nodoc
class _$DeviceOwnedAddressCopyWithImpl<$Res, $Val extends DeviceOwnedAddress>
    implements $DeviceOwnedAddressCopyWith<$Res> {
  _$DeviceOwnedAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeviceOwnedAddressByronImplCopyWith<$Res> {
  factory _$$DeviceOwnedAddressByronImplCopyWith(
          _$DeviceOwnedAddressByronImpl value,
          $Res Function(_$DeviceOwnedAddressByronImpl) then) =
      __$$DeviceOwnedAddressByronImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressByron type, AddressParamsByron params});

  $AddressParamsByronCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeviceOwnedAddressByronImplCopyWithImpl<$Res>
    extends _$DeviceOwnedAddressCopyWithImpl<$Res,
        _$DeviceOwnedAddressByronImpl>
    implements _$$DeviceOwnedAddressByronImplCopyWith<$Res> {
  __$$DeviceOwnedAddressByronImplCopyWithImpl(
      _$DeviceOwnedAddressByronImpl _value,
      $Res Function(_$DeviceOwnedAddressByronImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? params = null,
  }) {
    return _then(_$DeviceOwnedAddressByronImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressByron,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddressParamsByron,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressParamsByronCopyWith<$Res> get params {
    return $AddressParamsByronCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$DeviceOwnedAddressByronImpl extends DeviceOwnedAddressByron {
  _$DeviceOwnedAddressByronImpl({required this.type, required this.params})
      : super._();

  @override
  final AddressByron type;
  @override
  final AddressParamsByron params;

  @override
  String toString() {
    return 'DeviceOwnedAddress.byron(type: $type, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceOwnedAddressByronImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceOwnedAddressByronImplCopyWith<_$DeviceOwnedAddressByronImpl>
      get copyWith => __$$DeviceOwnedAddressByronImplCopyWithImpl<
          _$DeviceOwnedAddressByronImpl>(this, _$identity);
}

abstract class DeviceOwnedAddressByron extends DeviceOwnedAddress {
  factory DeviceOwnedAddressByron(
          {required final AddressByron type,
          required final AddressParamsByron params}) =
      _$DeviceOwnedAddressByronImpl;
  DeviceOwnedAddressByron._() : super._();

  @override
  AddressByron get type;
  @override
  AddressParamsByron get params;
  @JsonKey(ignore: true)
  _$$DeviceOwnedAddressByronImplCopyWith<_$DeviceOwnedAddressByronImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceOwnedAddressBaseImplCopyWith<$Res> {
  factory _$$DeviceOwnedAddressBaseImplCopyWith(
          _$DeviceOwnedAddressBaseImpl value,
          $Res Function(_$DeviceOwnedAddressBaseImpl) then) =
      __$$DeviceOwnedAddressBaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressBase type, AddressParamsBase params});

  $AddressParamsBaseCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeviceOwnedAddressBaseImplCopyWithImpl<$Res>
    extends _$DeviceOwnedAddressCopyWithImpl<$Res, _$DeviceOwnedAddressBaseImpl>
    implements _$$DeviceOwnedAddressBaseImplCopyWith<$Res> {
  __$$DeviceOwnedAddressBaseImplCopyWithImpl(
      _$DeviceOwnedAddressBaseImpl _value,
      $Res Function(_$DeviceOwnedAddressBaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? params = null,
  }) {
    return _then(_$DeviceOwnedAddressBaseImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressBase,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddressParamsBase,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressParamsBaseCopyWith<$Res> get params {
    return $AddressParamsBaseCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$DeviceOwnedAddressBaseImpl extends DeviceOwnedAddressBase {
  _$DeviceOwnedAddressBaseImpl({required this.type, required this.params})
      : super._();

  @override
  final AddressBase type;
  @override
  final AddressParamsBase params;

  @override
  String toString() {
    return 'DeviceOwnedAddress.base(type: $type, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceOwnedAddressBaseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceOwnedAddressBaseImplCopyWith<_$DeviceOwnedAddressBaseImpl>
      get copyWith => __$$DeviceOwnedAddressBaseImplCopyWithImpl<
          _$DeviceOwnedAddressBaseImpl>(this, _$identity);
}

abstract class DeviceOwnedAddressBase extends DeviceOwnedAddress {
  factory DeviceOwnedAddressBase(
      {required final AddressBase type,
      required final AddressParamsBase params}) = _$DeviceOwnedAddressBaseImpl;
  DeviceOwnedAddressBase._() : super._();

  @override
  AddressBase get type;
  @override
  AddressParamsBase get params;
  @JsonKey(ignore: true)
  _$$DeviceOwnedAddressBaseImplCopyWith<_$DeviceOwnedAddressBaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceOwnedAddressEnterpriseImplCopyWith<$Res> {
  factory _$$DeviceOwnedAddressEnterpriseImplCopyWith(
          _$DeviceOwnedAddressEnterpriseImpl value,
          $Res Function(_$DeviceOwnedAddressEnterpriseImpl) then) =
      __$$DeviceOwnedAddressEnterpriseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressEnterprise type, AddressParamsEnterprise params});

  $AddressParamsEnterpriseCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeviceOwnedAddressEnterpriseImplCopyWithImpl<$Res>
    extends _$DeviceOwnedAddressCopyWithImpl<$Res,
        _$DeviceOwnedAddressEnterpriseImpl>
    implements _$$DeviceOwnedAddressEnterpriseImplCopyWith<$Res> {
  __$$DeviceOwnedAddressEnterpriseImplCopyWithImpl(
      _$DeviceOwnedAddressEnterpriseImpl _value,
      $Res Function(_$DeviceOwnedAddressEnterpriseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? params = null,
  }) {
    return _then(_$DeviceOwnedAddressEnterpriseImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressEnterprise,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddressParamsEnterprise,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressParamsEnterpriseCopyWith<$Res> get params {
    return $AddressParamsEnterpriseCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$DeviceOwnedAddressEnterpriseImpl extends DeviceOwnedAddressEnterprise {
  _$DeviceOwnedAddressEnterpriseImpl({required this.type, required this.params})
      : super._();

  @override
  final AddressEnterprise type;
  @override
  final AddressParamsEnterprise params;

  @override
  String toString() {
    return 'DeviceOwnedAddress.enterprise(type: $type, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceOwnedAddressEnterpriseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceOwnedAddressEnterpriseImplCopyWith<
          _$DeviceOwnedAddressEnterpriseImpl>
      get copyWith => __$$DeviceOwnedAddressEnterpriseImplCopyWithImpl<
          _$DeviceOwnedAddressEnterpriseImpl>(this, _$identity);
}

abstract class DeviceOwnedAddressEnterprise extends DeviceOwnedAddress {
  factory DeviceOwnedAddressEnterprise(
          {required final AddressEnterprise type,
          required final AddressParamsEnterprise params}) =
      _$DeviceOwnedAddressEnterpriseImpl;
  DeviceOwnedAddressEnterprise._() : super._();

  @override
  AddressEnterprise get type;
  @override
  AddressParamsEnterprise get params;
  @JsonKey(ignore: true)
  _$$DeviceOwnedAddressEnterpriseImplCopyWith<
          _$DeviceOwnedAddressEnterpriseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceOwnedAddressPointerImplCopyWith<$Res> {
  factory _$$DeviceOwnedAddressPointerImplCopyWith(
          _$DeviceOwnedAddressPointerImpl value,
          $Res Function(_$DeviceOwnedAddressPointerImpl) then) =
      __$$DeviceOwnedAddressPointerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressPointer type, AddressParamsPointer params});

  $AddressParamsPointerCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeviceOwnedAddressPointerImplCopyWithImpl<$Res>
    extends _$DeviceOwnedAddressCopyWithImpl<$Res,
        _$DeviceOwnedAddressPointerImpl>
    implements _$$DeviceOwnedAddressPointerImplCopyWith<$Res> {
  __$$DeviceOwnedAddressPointerImplCopyWithImpl(
      _$DeviceOwnedAddressPointerImpl _value,
      $Res Function(_$DeviceOwnedAddressPointerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? params = null,
  }) {
    return _then(_$DeviceOwnedAddressPointerImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressPointer,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddressParamsPointer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressParamsPointerCopyWith<$Res> get params {
    return $AddressParamsPointerCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$DeviceOwnedAddressPointerImpl extends DeviceOwnedAddressPointer {
  _$DeviceOwnedAddressPointerImpl({required this.type, required this.params})
      : super._();

  @override
  final AddressPointer type;
  @override
  final AddressParamsPointer params;

  @override
  String toString() {
    return 'DeviceOwnedAddress.pointer(type: $type, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceOwnedAddressPointerImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceOwnedAddressPointerImplCopyWith<_$DeviceOwnedAddressPointerImpl>
      get copyWith => __$$DeviceOwnedAddressPointerImplCopyWithImpl<
          _$DeviceOwnedAddressPointerImpl>(this, _$identity);
}

abstract class DeviceOwnedAddressPointer extends DeviceOwnedAddress {
  factory DeviceOwnedAddressPointer(
          {required final AddressPointer type,
          required final AddressParamsPointer params}) =
      _$DeviceOwnedAddressPointerImpl;
  DeviceOwnedAddressPointer._() : super._();

  @override
  AddressPointer get type;
  @override
  AddressParamsPointer get params;
  @JsonKey(ignore: true)
  _$$DeviceOwnedAddressPointerImplCopyWith<_$DeviceOwnedAddressPointerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceOwnedAddressRewardImplCopyWith<$Res> {
  factory _$$DeviceOwnedAddressRewardImplCopyWith(
          _$DeviceOwnedAddressRewardImpl value,
          $Res Function(_$DeviceOwnedAddressRewardImpl) then) =
      __$$DeviceOwnedAddressRewardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressReward type, AddressParamsReward params});

  $AddressParamsRewardCopyWith<$Res> get params;
}

/// @nodoc
class __$$DeviceOwnedAddressRewardImplCopyWithImpl<$Res>
    extends _$DeviceOwnedAddressCopyWithImpl<$Res,
        _$DeviceOwnedAddressRewardImpl>
    implements _$$DeviceOwnedAddressRewardImplCopyWith<$Res> {
  __$$DeviceOwnedAddressRewardImplCopyWithImpl(
      _$DeviceOwnedAddressRewardImpl _value,
      $Res Function(_$DeviceOwnedAddressRewardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? params = null,
  }) {
    return _then(_$DeviceOwnedAddressRewardImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressReward,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddressParamsReward,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressParamsRewardCopyWith<$Res> get params {
    return $AddressParamsRewardCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$DeviceOwnedAddressRewardImpl extends DeviceOwnedAddressReward {
  _$DeviceOwnedAddressRewardImpl({required this.type, required this.params})
      : super._();

  @override
  final AddressReward type;
  @override
  final AddressParamsReward params;

  @override
  String toString() {
    return 'DeviceOwnedAddress.reward(type: $type, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceOwnedAddressRewardImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceOwnedAddressRewardImplCopyWith<_$DeviceOwnedAddressRewardImpl>
      get copyWith => __$$DeviceOwnedAddressRewardImplCopyWithImpl<
          _$DeviceOwnedAddressRewardImpl>(this, _$identity);
}

abstract class DeviceOwnedAddressReward extends DeviceOwnedAddress {
  factory DeviceOwnedAddressReward(
          {required final AddressReward type,
          required final AddressParamsReward params}) =
      _$DeviceOwnedAddressRewardImpl;
  DeviceOwnedAddressReward._() : super._();

  @override
  AddressReward get type;
  @override
  AddressParamsReward get params;
  @JsonKey(ignore: true)
  _$$DeviceOwnedAddressRewardImplCopyWith<_$DeviceOwnedAddressRewardImpl>
      get copyWith => throw _privateConstructorUsedError;
}
