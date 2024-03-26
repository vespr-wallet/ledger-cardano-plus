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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? port, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(int? port, String dnsName) singletHostname,
    required TResult Function(String dnsName) multiHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? port, String? ipv4, String? ipv6)? singleHostIpAddr,
    TResult? Function(int? port, String dnsName)? singletHostname,
    TResult? Function(String dnsName)? multiHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? port, String? ipv4, String? ipv6)? singleHostIpAddr,
    TResult Function(int? port, String dnsName)? singletHostname,
    TResult Function(String dnsName)? multiHost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedPoolRelayCopyWith<$Res> {
  factory $ParsedPoolRelayCopyWith(
          ParsedPoolRelay value, $Res Function(ParsedPoolRelay) then) =
      _$ParsedPoolRelayCopyWithImpl<$Res, ParsedPoolRelay>;
}

/// @nodoc
class _$ParsedPoolRelayCopyWithImpl<$Res, $Val extends ParsedPoolRelay>
    implements $ParsedPoolRelayCopyWith<$Res> {
  _$ParsedPoolRelayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SingleHostIpAddrImplCopyWith<$Res> {
  factory _$$SingleHostIpAddrImplCopyWith(_$SingleHostIpAddrImpl value,
          $Res Function(_$SingleHostIpAddrImpl) then) =
      __$$SingleHostIpAddrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? port, String? ipv4, String? ipv6});
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
    Object? port = freezed,
    Object? ipv4 = freezed,
    Object? ipv6 = freezed,
  }) {
    return _then(_$SingleHostIpAddrImpl(
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
  _$SingleHostIpAddrImpl({this.port, this.ipv4, this.ipv6}) : super._();

  @override
  final int? port;
  @override
  final String? ipv4;
  @override
  final String? ipv6;

  @override
  String toString() {
    return 'ParsedPoolRelay.singleHostIpAddr(port: $port, ipv4: $ipv4, ipv6: $ipv6)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleHostIpAddrImpl &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.ipv4, ipv4) || other.ipv4 == ipv4) &&
            (identical(other.ipv6, ipv6) || other.ipv6 == ipv6));
  }

  @override
  int get hashCode => Object.hash(runtimeType, port, ipv4, ipv6);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleHostIpAddrImplCopyWith<_$SingleHostIpAddrImpl> get copyWith =>
      __$$SingleHostIpAddrImplCopyWithImpl<_$SingleHostIpAddrImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? port, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(int? port, String dnsName) singletHostname,
    required TResult Function(String dnsName) multiHost,
  }) {
    return singleHostIpAddr(port, ipv4, ipv6);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? port, String? ipv4, String? ipv6)? singleHostIpAddr,
    TResult? Function(int? port, String dnsName)? singletHostname,
    TResult? Function(String dnsName)? multiHost,
  }) {
    return singleHostIpAddr?.call(port, ipv4, ipv6);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? port, String? ipv4, String? ipv6)? singleHostIpAddr,
    TResult Function(int? port, String dnsName)? singletHostname,
    TResult Function(String dnsName)? multiHost,
    required TResult orElse(),
  }) {
    if (singleHostIpAddr != null) {
      return singleHostIpAddr(port, ipv4, ipv6);
    }
    return orElse();
  }
}

abstract class SingleHostIpAddr extends ParsedPoolRelay {
  factory SingleHostIpAddr(
      {final int? port,
      final String? ipv4,
      final String? ipv6}) = _$SingleHostIpAddrImpl;
  SingleHostIpAddr._() : super._();

  int? get port;
  String? get ipv4;
  String? get ipv6;
  @JsonKey(ignore: true)
  _$$SingleHostIpAddrImplCopyWith<_$SingleHostIpAddrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleHostNameImplCopyWith<$Res> {
  factory _$$SingleHostNameImplCopyWith(_$SingleHostNameImpl value,
          $Res Function(_$SingleHostNameImpl) then) =
      __$$SingleHostNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? port, String dnsName});
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
    Object? port = freezed,
    Object? dnsName = null,
  }) {
    return _then(_$SingleHostNameImpl(
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
  _$SingleHostNameImpl({this.port, required this.dnsName}) : super._();

  @override
  final int? port;
  @override
  final String dnsName;

  @override
  String toString() {
    return 'ParsedPoolRelay.singletHostname(port: $port, dnsName: $dnsName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleHostNameImpl &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.dnsName, dnsName) || other.dnsName == dnsName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, port, dnsName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleHostNameImplCopyWith<_$SingleHostNameImpl> get copyWith =>
      __$$SingleHostNameImplCopyWithImpl<_$SingleHostNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? port, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(int? port, String dnsName) singletHostname,
    required TResult Function(String dnsName) multiHost,
  }) {
    return singletHostname(port, dnsName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? port, String? ipv4, String? ipv6)? singleHostIpAddr,
    TResult? Function(int? port, String dnsName)? singletHostname,
    TResult? Function(String dnsName)? multiHost,
  }) {
    return singletHostname?.call(port, dnsName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? port, String? ipv4, String? ipv6)? singleHostIpAddr,
    TResult Function(int? port, String dnsName)? singletHostname,
    TResult Function(String dnsName)? multiHost,
    required TResult orElse(),
  }) {
    if (singletHostname != null) {
      return singletHostname(port, dnsName);
    }
    return orElse();
  }
}

abstract class SingleHostName extends ParsedPoolRelay {
  factory SingleHostName({final int? port, required final String dnsName}) =
      _$SingleHostNameImpl;
  SingleHostName._() : super._();

  int? get port;
  String get dnsName;
  @JsonKey(ignore: true)
  _$$SingleHostNameImplCopyWith<_$SingleHostNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiHostImplCopyWith<$Res> {
  factory _$$MultiHostImplCopyWith(
          _$MultiHostImpl value, $Res Function(_$MultiHostImpl) then) =
      __$$MultiHostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dnsName});
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
    Object? dnsName = null,
  }) {
    return _then(_$MultiHostImpl(
      dnsName: null == dnsName
          ? _value.dnsName
          : dnsName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MultiHostImpl extends MultiHost {
  _$MultiHostImpl({required this.dnsName}) : super._();

  @override
  final String dnsName;

  @override
  String toString() {
    return 'ParsedPoolRelay.multiHost(dnsName: $dnsName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiHostImpl &&
            (identical(other.dnsName, dnsName) || other.dnsName == dnsName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dnsName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiHostImplCopyWith<_$MultiHostImpl> get copyWith =>
      __$$MultiHostImplCopyWithImpl<_$MultiHostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? port, String? ipv4, String? ipv6)
        singleHostIpAddr,
    required TResult Function(int? port, String dnsName) singletHostname,
    required TResult Function(String dnsName) multiHost,
  }) {
    return multiHost(dnsName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? port, String? ipv4, String? ipv6)? singleHostIpAddr,
    TResult? Function(int? port, String dnsName)? singletHostname,
    TResult? Function(String dnsName)? multiHost,
  }) {
    return multiHost?.call(dnsName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? port, String? ipv4, String? ipv6)? singleHostIpAddr,
    TResult Function(int? port, String dnsName)? singletHostname,
    TResult Function(String dnsName)? multiHost,
    required TResult orElse(),
  }) {
    if (multiHost != null) {
      return multiHost(dnsName);
    }
    return orElse();
  }
}

abstract class MultiHost extends ParsedPoolRelay {
  factory MultiHost({required final String dnsName}) = _$MultiHostImpl;
  MultiHost._() : super._();

  String get dnsName;
  @JsonKey(ignore: true)
  _$$MultiHostImplCopyWith<_$MultiHostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
