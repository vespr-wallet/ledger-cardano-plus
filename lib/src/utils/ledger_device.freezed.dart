// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerDevice {
  String get id;
  String get name;
  LedgerConnectionType get connectionType;
  int get rssi;
  LedgerDeviceType get deviceInfo;

  /// Create a copy of LedgerDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerDeviceCopyWith<LedgerDevice> get copyWith =>
      _$LedgerDeviceCopyWithImpl<LedgerDevice>(
          this as LedgerDevice, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerDevice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.connectionType, connectionType) ||
                other.connectionType == connectionType) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, connectionType, rssi, deviceInfo);

  @override
  String toString() {
    return 'LedgerDevice(id: $id, name: $name, connectionType: $connectionType, rssi: $rssi, deviceInfo: $deviceInfo)';
  }
}

/// @nodoc
abstract mixin class $LedgerDeviceCopyWith<$Res> {
  factory $LedgerDeviceCopyWith(
          LedgerDevice value, $Res Function(LedgerDevice) _then) =
      _$LedgerDeviceCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      LedgerConnectionType connectionType,
      int rssi,
      LedgerDeviceType deviceInfo});
}

/// @nodoc
class _$LedgerDeviceCopyWithImpl<$Res> implements $LedgerDeviceCopyWith<$Res> {
  _$LedgerDeviceCopyWithImpl(this._self, this._then);

  final LedgerDevice _self;
  final $Res Function(LedgerDevice) _then;

  /// Create a copy of LedgerDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? connectionType = null,
    Object? rssi = null,
    Object? deviceInfo = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      connectionType: null == connectionType
          ? _self.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as LedgerConnectionType,
      rssi: null == rssi
          ? _self.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
      deviceInfo: null == deviceInfo
          ? _self.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as LedgerDeviceType,
    ));
  }
}

/// @nodoc

class _LedgerDevice extends LedgerDevice {
  const _LedgerDevice(
      {required this.id,
      required this.name,
      required this.connectionType,
      required this.rssi,
      required this.deviceInfo})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final LedgerConnectionType connectionType;
  @override
  final int rssi;
  @override
  final LedgerDeviceType deviceInfo;

  /// Create a copy of LedgerDevice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerDeviceCopyWith<_LedgerDevice> get copyWith =>
      __$LedgerDeviceCopyWithImpl<_LedgerDevice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerDevice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.connectionType, connectionType) ||
                other.connectionType == connectionType) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, connectionType, rssi, deviceInfo);

  @override
  String toString() {
    return 'LedgerDevice(id: $id, name: $name, connectionType: $connectionType, rssi: $rssi, deviceInfo: $deviceInfo)';
  }
}

/// @nodoc
abstract mixin class _$LedgerDeviceCopyWith<$Res>
    implements $LedgerDeviceCopyWith<$Res> {
  factory _$LedgerDeviceCopyWith(
          _LedgerDevice value, $Res Function(_LedgerDevice) _then) =
      __$LedgerDeviceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      LedgerConnectionType connectionType,
      int rssi,
      LedgerDeviceType deviceInfo});
}

/// @nodoc
class __$LedgerDeviceCopyWithImpl<$Res>
    implements _$LedgerDeviceCopyWith<$Res> {
  __$LedgerDeviceCopyWithImpl(this._self, this._then);

  final _LedgerDevice _self;
  final $Res Function(_LedgerDevice) _then;

  /// Create a copy of LedgerDevice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? connectionType = null,
    Object? rssi = null,
    Object? deviceInfo = null,
  }) {
    return _then(_LedgerDevice(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      connectionType: null == connectionType
          ? _self.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as LedgerConnectionType,
      rssi: null == rssi
          ? _self.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as int,
      deviceInfo: null == deviceInfo
          ? _self.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as LedgerDeviceType,
    ));
  }
}

// dart format on
