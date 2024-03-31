// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Relay {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? portNumber, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(int? portNumber, String dnsName)
        singleHostHostname,
    required TResult Function(String dnsName) multiHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? portNumber, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult? Function(int? portNumber, String dnsName)? singleHostHostname,
    TResult? Function(String dnsName)? multiHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? portNumber, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult Function(int? portNumber, String dnsName)? singleHostHostname,
    TResult Function(String dnsName)? multiHost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelayCopyWith<$Res> {
  factory $RelayCopyWith(Relay value, $Res Function(Relay) then) =
      _$RelayCopyWithImpl<$Res, Relay>;
}

/// @nodoc
class _$RelayCopyWithImpl<$Res, $Val extends Relay>
    implements $RelayCopyWith<$Res> {
  _$RelayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SingleHostIpAddrRelayImplCopyWith<$Res> {
  factory _$$SingleHostIpAddrRelayImplCopyWith(
          _$SingleHostIpAddrRelayImpl value,
          $Res Function(_$SingleHostIpAddrRelayImpl) then) =
      __$$SingleHostIpAddrRelayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? portNumber, String? ipv4, String? ipv6});
}

/// @nodoc
class __$$SingleHostIpAddrRelayImplCopyWithImpl<$Res>
    extends _$RelayCopyWithImpl<$Res, _$SingleHostIpAddrRelayImpl>
    implements _$$SingleHostIpAddrRelayImplCopyWith<$Res> {
  __$$SingleHostIpAddrRelayImplCopyWithImpl(_$SingleHostIpAddrRelayImpl _value,
      $Res Function(_$SingleHostIpAddrRelayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portNumber = freezed,
    Object? ipv4 = freezed,
    Object? ipv6 = freezed,
  }) {
    return _then(_$SingleHostIpAddrRelayImpl(
      portNumber: freezed == portNumber
          ? _value.portNumber
          : portNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      ipv4: freezed == ipv4
          ? _value.ipv4
          : ipv4 // ignore: cast_nullable_to_non_nullable
              as String?,
      ipv6: freezed == ipv6
          ? _value.ipv6
          : ipv6 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SingleHostIpAddrRelayImpl extends SingleHostIpAddrRelay {
  _$SingleHostIpAddrRelayImpl({this.portNumber, this.ipv4, this.ipv6})
      : super._();

  @override
  final int? portNumber;
  @override
  final String? ipv4;
  @override
  final String? ipv6;

  @override
  String toString() {
    return 'Relay.singleHostIpAddr(portNumber: $portNumber, ipv4: $ipv4, ipv6: $ipv6)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleHostIpAddrRelayImpl &&
            (identical(other.portNumber, portNumber) ||
                other.portNumber == portNumber) &&
            (identical(other.ipv4, ipv4) || other.ipv4 == ipv4) &&
            (identical(other.ipv6, ipv6) || other.ipv6 == ipv6));
  }

  @override
  int get hashCode => Object.hash(runtimeType, portNumber, ipv4, ipv6);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleHostIpAddrRelayImplCopyWith<_$SingleHostIpAddrRelayImpl>
      get copyWith => __$$SingleHostIpAddrRelayImplCopyWithImpl<
          _$SingleHostIpAddrRelayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? portNumber, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(int? portNumber, String dnsName)
        singleHostHostname,
    required TResult Function(String dnsName) multiHost,
  }) {
    return singleHostIpAddr(portNumber, ipv4, ipv6);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? portNumber, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult? Function(int? portNumber, String dnsName)? singleHostHostname,
    TResult? Function(String dnsName)? multiHost,
  }) {
    return singleHostIpAddr?.call(portNumber, ipv4, ipv6);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? portNumber, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult Function(int? portNumber, String dnsName)? singleHostHostname,
    TResult Function(String dnsName)? multiHost,
    required TResult orElse(),
  }) {
    if (singleHostIpAddr != null) {
      return singleHostIpAddr(portNumber, ipv4, ipv6);
    }
    return orElse();
  }
}

abstract class SingleHostIpAddrRelay extends Relay {
  factory SingleHostIpAddrRelay(
      {final int? portNumber,
      final String? ipv4,
      final String? ipv6}) = _$SingleHostIpAddrRelayImpl;
  SingleHostIpAddrRelay._() : super._();

  int? get portNumber;
  String? get ipv4;
  String? get ipv6;
  @JsonKey(ignore: true)
  _$$SingleHostIpAddrRelayImplCopyWith<_$SingleHostIpAddrRelayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleHostHostnameRelayImplCopyWith<$Res> {
  factory _$$SingleHostHostnameRelayImplCopyWith(
          _$SingleHostHostnameRelayImpl value,
          $Res Function(_$SingleHostHostnameRelayImpl) then) =
      __$$SingleHostHostnameRelayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? portNumber, String dnsName});
}

/// @nodoc
class __$$SingleHostHostnameRelayImplCopyWithImpl<$Res>
    extends _$RelayCopyWithImpl<$Res, _$SingleHostHostnameRelayImpl>
    implements _$$SingleHostHostnameRelayImplCopyWith<$Res> {
  __$$SingleHostHostnameRelayImplCopyWithImpl(
      _$SingleHostHostnameRelayImpl _value,
      $Res Function(_$SingleHostHostnameRelayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portNumber = freezed,
    Object? dnsName = null,
  }) {
    return _then(_$SingleHostHostnameRelayImpl(
      portNumber: freezed == portNumber
          ? _value.portNumber
          : portNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      dnsName: null == dnsName
          ? _value.dnsName
          : dnsName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingleHostHostnameRelayImpl extends SingleHostHostnameRelay {
  _$SingleHostHostnameRelayImpl({this.portNumber, required this.dnsName})
      : super._();

  @override
  final int? portNumber;
  @override
  final String dnsName;

  @override
  String toString() {
    return 'Relay.singleHostHostname(portNumber: $portNumber, dnsName: $dnsName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleHostHostnameRelayImpl &&
            (identical(other.portNumber, portNumber) ||
                other.portNumber == portNumber) &&
            (identical(other.dnsName, dnsName) || other.dnsName == dnsName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, portNumber, dnsName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleHostHostnameRelayImplCopyWith<_$SingleHostHostnameRelayImpl>
      get copyWith => __$$SingleHostHostnameRelayImplCopyWithImpl<
          _$SingleHostHostnameRelayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? portNumber, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(int? portNumber, String dnsName)
        singleHostHostname,
    required TResult Function(String dnsName) multiHost,
  }) {
    return singleHostHostname(portNumber, dnsName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? portNumber, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult? Function(int? portNumber, String dnsName)? singleHostHostname,
    TResult? Function(String dnsName)? multiHost,
  }) {
    return singleHostHostname?.call(portNumber, dnsName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? portNumber, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult Function(int? portNumber, String dnsName)? singleHostHostname,
    TResult Function(String dnsName)? multiHost,
    required TResult orElse(),
  }) {
    if (singleHostHostname != null) {
      return singleHostHostname(portNumber, dnsName);
    }
    return orElse();
  }
}

abstract class SingleHostHostnameRelay extends Relay {
  factory SingleHostHostnameRelay(
      {final int? portNumber,
      required final String dnsName}) = _$SingleHostHostnameRelayImpl;
  SingleHostHostnameRelay._() : super._();

  int? get portNumber;
  String get dnsName;
  @JsonKey(ignore: true)
  _$$SingleHostHostnameRelayImplCopyWith<_$SingleHostHostnameRelayImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiHostRelayImplCopyWith<$Res> {
  factory _$$MultiHostRelayImplCopyWith(_$MultiHostRelayImpl value,
          $Res Function(_$MultiHostRelayImpl) then) =
      __$$MultiHostRelayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dnsName});
}

/// @nodoc
class __$$MultiHostRelayImplCopyWithImpl<$Res>
    extends _$RelayCopyWithImpl<$Res, _$MultiHostRelayImpl>
    implements _$$MultiHostRelayImplCopyWith<$Res> {
  __$$MultiHostRelayImplCopyWithImpl(
      _$MultiHostRelayImpl _value, $Res Function(_$MultiHostRelayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dnsName = null,
  }) {
    return _then(_$MultiHostRelayImpl(
      dnsName: null == dnsName
          ? _value.dnsName
          : dnsName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MultiHostRelayImpl extends MultiHostRelay {
  _$MultiHostRelayImpl({required this.dnsName}) : super._();

  @override
  final String dnsName;

  @override
  String toString() {
    return 'Relay.multiHost(dnsName: $dnsName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiHostRelayImpl &&
            (identical(other.dnsName, dnsName) || other.dnsName == dnsName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dnsName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiHostRelayImplCopyWith<_$MultiHostRelayImpl> get copyWith =>
      __$$MultiHostRelayImplCopyWithImpl<_$MultiHostRelayImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? portNumber, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(int? portNumber, String dnsName)
        singleHostHostname,
    required TResult Function(String dnsName) multiHost,
  }) {
    return multiHost(dnsName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? portNumber, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult? Function(int? portNumber, String dnsName)? singleHostHostname,
    TResult? Function(String dnsName)? multiHost,
  }) {
    return multiHost?.call(dnsName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? portNumber, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult Function(int? portNumber, String dnsName)? singleHostHostname,
    TResult Function(String dnsName)? multiHost,
    required TResult orElse(),
  }) {
    if (multiHost != null) {
      return multiHost(dnsName);
    }
    return orElse();
  }
}

abstract class MultiHostRelay extends Relay {
  factory MultiHostRelay({required final String dnsName}) =
      _$MultiHostRelayImpl;
  MultiHostRelay._() : super._();

  String get dnsName;
  @JsonKey(ignore: true)
  _$$MultiHostRelayImplCopyWith<_$MultiHostRelayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
