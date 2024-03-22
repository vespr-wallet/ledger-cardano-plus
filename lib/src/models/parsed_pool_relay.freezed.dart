// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_pool_relay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedPoolRelay {
  RelayType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RelayType type, int? port, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(RelayType type, int? port, String dnsName)
        singleHostHostname,
    required TResult Function(RelayType type, String dnsName) multiHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RelayType type, int? port, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult? Function(RelayType type, int? port, String dnsName)?
        singleHostHostname,
    TResult? Function(RelayType type, String dnsName)? multiHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RelayType type, int? port, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult Function(RelayType type, int? port, String dnsName)?
        singleHostHostname,
    TResult Function(RelayType type, String dnsName)? multiHost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedPoolRelayCopyWith<ParsedPoolRelay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedPoolRelayCopyWith<$Res> {
  factory $ParsedPoolRelayCopyWith(
          ParsedPoolRelay value, $Res Function(ParsedPoolRelay) then) =
      _$ParsedPoolRelayCopyWithImpl<$Res, ParsedPoolRelay>;
  @useResult
  $Res call({RelayType type});
}

/// @nodoc
class _$ParsedPoolRelayCopyWithImpl<$Res, $Val extends ParsedPoolRelay>
    implements $ParsedPoolRelayCopyWith<$Res> {
  _$ParsedPoolRelayCopyWithImpl(this._value, this._then);

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
              as RelayType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleHostIpAddrImplCopyWith<$Res>
    implements $ParsedPoolRelayCopyWith<$Res> {
  factory _$$SingleHostIpAddrImplCopyWith(_$SingleHostIpAddrImpl value,
          $Res Function(_$SingleHostIpAddrImpl) then) =
      __$$SingleHostIpAddrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RelayType type, int? port, String? ipv4, String? ipv6});
}

/// @nodoc
class __$$SingleHostIpAddrImplCopyWithImpl<$Res>
    extends _$ParsedPoolRelayCopyWithImpl<$Res, _$SingleHostIpAddrImpl>
    implements _$$SingleHostIpAddrImplCopyWith<$Res> {
  __$$SingleHostIpAddrImplCopyWithImpl(_$SingleHostIpAddrImpl _value,
      $Res Function(_$SingleHostIpAddrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? port = freezed,
    Object? ipv4 = freezed,
    Object? ipv6 = freezed,
  }) {
    return _then(_$SingleHostIpAddrImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RelayType,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
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

class _$SingleHostIpAddrImpl extends SingleHostIpAddr {
  const _$SingleHostIpAddrImpl(
      {required this.type, this.port, this.ipv4, this.ipv6})
      : super._();

  @override
  final RelayType type;
  @override
  final int? port;
  @override
  final String? ipv4;
  @override
  final String? ipv6;

  @override
  String toString() {
    return 'ParsedPoolRelay.singleHostIpAddr(type: $type, port: $port, ipv4: $ipv4, ipv6: $ipv6)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleHostIpAddrImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.ipv4, ipv4) || other.ipv4 == ipv4) &&
            (identical(other.ipv6, ipv6) || other.ipv6 == ipv6));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, port, ipv4, ipv6);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleHostIpAddrImplCopyWith<_$SingleHostIpAddrImpl> get copyWith =>
      __$$SingleHostIpAddrImplCopyWithImpl<_$SingleHostIpAddrImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RelayType type, int? port, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(RelayType type, int? port, String dnsName)
        singleHostHostname,
    required TResult Function(RelayType type, String dnsName) multiHost,
  }) {
    return singleHostIpAddr(type, port, ipv4, ipv6);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RelayType type, int? port, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult? Function(RelayType type, int? port, String dnsName)?
        singleHostHostname,
    TResult? Function(RelayType type, String dnsName)? multiHost,
  }) {
    return singleHostIpAddr?.call(type, port, ipv4, ipv6);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RelayType type, int? port, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult Function(RelayType type, int? port, String dnsName)?
        singleHostHostname,
    TResult Function(RelayType type, String dnsName)? multiHost,
    required TResult orElse(),
  }) {
    if (singleHostIpAddr != null) {
      return singleHostIpAddr(type, port, ipv4, ipv6);
    }
    return orElse();
  }
}

abstract class SingleHostIpAddr extends ParsedPoolRelay {
  const factory SingleHostIpAddr(
      {required final RelayType type,
      final int? port,
      final String? ipv4,
      final String? ipv6}) = _$SingleHostIpAddrImpl;
  const SingleHostIpAddr._() : super._();

  @override
  RelayType get type;
  int? get port;
  String? get ipv4;
  String? get ipv6;
  @override
  @JsonKey(ignore: true)
  _$$SingleHostIpAddrImplCopyWith<_$SingleHostIpAddrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleHostNameImplCopyWith<$Res>
    implements $ParsedPoolRelayCopyWith<$Res> {
  factory _$$SingleHostNameImplCopyWith(_$SingleHostNameImpl value,
          $Res Function(_$SingleHostNameImpl) then) =
      __$$SingleHostNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RelayType type, int? port, String dnsName});
}

/// @nodoc
class __$$SingleHostNameImplCopyWithImpl<$Res>
    extends _$ParsedPoolRelayCopyWithImpl<$Res, _$SingleHostNameImpl>
    implements _$$SingleHostNameImplCopyWith<$Res> {
  __$$SingleHostNameImplCopyWithImpl(
      _$SingleHostNameImpl _value, $Res Function(_$SingleHostNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? port = freezed,
    Object? dnsName = null,
  }) {
    return _then(_$SingleHostNameImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RelayType,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      dnsName: null == dnsName
          ? _value.dnsName
          : dnsName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SingleHostNameImpl extends SingleHostName {
  const _$SingleHostNameImpl(
      {required this.type, this.port, required this.dnsName})
      : super._();

  @override
  final RelayType type;
  @override
  final int? port;
  @override
  final String dnsName;

  @override
  String toString() {
    return 'ParsedPoolRelay.singleHostHostname(type: $type, port: $port, dnsName: $dnsName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleHostNameImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.dnsName, dnsName) || other.dnsName == dnsName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, port, dnsName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleHostNameImplCopyWith<_$SingleHostNameImpl> get copyWith =>
      __$$SingleHostNameImplCopyWithImpl<_$SingleHostNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RelayType type, int? port, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(RelayType type, int? port, String dnsName)
        singleHostHostname,
    required TResult Function(RelayType type, String dnsName) multiHost,
  }) {
    return singleHostHostname(type, port, dnsName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RelayType type, int? port, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult? Function(RelayType type, int? port, String dnsName)?
        singleHostHostname,
    TResult? Function(RelayType type, String dnsName)? multiHost,
  }) {
    return singleHostHostname?.call(type, port, dnsName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RelayType type, int? port, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult Function(RelayType type, int? port, String dnsName)?
        singleHostHostname,
    TResult Function(RelayType type, String dnsName)? multiHost,
    required TResult orElse(),
  }) {
    if (singleHostHostname != null) {
      return singleHostHostname(type, port, dnsName);
    }
    return orElse();
  }
}

abstract class SingleHostName extends ParsedPoolRelay {
  const factory SingleHostName(
      {required final RelayType type,
      final int? port,
      required final String dnsName}) = _$SingleHostNameImpl;
  const SingleHostName._() : super._();

  @override
  RelayType get type;
  int? get port;
  String get dnsName;
  @override
  @JsonKey(ignore: true)
  _$$SingleHostNameImplCopyWith<_$SingleHostNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiHostImplCopyWith<$Res>
    implements $ParsedPoolRelayCopyWith<$Res> {
  factory _$$MultiHostImplCopyWith(
          _$MultiHostImpl value, $Res Function(_$MultiHostImpl) then) =
      __$$MultiHostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RelayType type, String dnsName});
}

/// @nodoc
class __$$MultiHostImplCopyWithImpl<$Res>
    extends _$ParsedPoolRelayCopyWithImpl<$Res, _$MultiHostImpl>
    implements _$$MultiHostImplCopyWith<$Res> {
  __$$MultiHostImplCopyWithImpl(
      _$MultiHostImpl _value, $Res Function(_$MultiHostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dnsName = null,
  }) {
    return _then(_$MultiHostImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RelayType,
      dnsName: null == dnsName
          ? _value.dnsName
          : dnsName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MultiHostImpl extends MultiHost {
  const _$MultiHostImpl({required this.type, required this.dnsName})
      : super._();

  @override
  final RelayType type;
  @override
  final String dnsName;

  @override
  String toString() {
    return 'ParsedPoolRelay.multiHost(type: $type, dnsName: $dnsName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiHostImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dnsName, dnsName) || other.dnsName == dnsName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, dnsName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiHostImplCopyWith<_$MultiHostImpl> get copyWith =>
      __$$MultiHostImplCopyWithImpl<_$MultiHostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RelayType type, int? port, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(RelayType type, int? port, String dnsName)
        singleHostHostname,
    required TResult Function(RelayType type, String dnsName) multiHost,
  }) {
    return multiHost(type, dnsName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RelayType type, int? port, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult? Function(RelayType type, int? port, String dnsName)?
        singleHostHostname,
    TResult? Function(RelayType type, String dnsName)? multiHost,
  }) {
    return multiHost?.call(type, dnsName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RelayType type, int? port, String? ipv4, String? ipv6)?
        singleHostIpAddr,
    TResult Function(RelayType type, int? port, String dnsName)?
        singleHostHostname,
    TResult Function(RelayType type, String dnsName)? multiHost,
    required TResult orElse(),
  }) {
    if (multiHost != null) {
      return multiHost(type, dnsName);
    }
    return orElse();
  }
}

abstract class MultiHost extends ParsedPoolRelay {
  const factory MultiHost(
      {required final RelayType type,
      required final String dnsName}) = _$MultiHostImpl;
  const MultiHost._() : super._();

  @override
  RelayType get type;
  String get dnsName;
  @override
  @JsonKey(ignore: true)
  _$$MultiHostImplCopyWith<_$MultiHostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
