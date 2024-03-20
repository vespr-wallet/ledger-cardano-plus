// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_network.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedNetwork {
  int get protocolMagic => throw _privateConstructorUsedError;
  int get networkId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int protocolMagic, int networkId) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int protocolMagic, int networkId)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int protocolMagic, int networkId)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedNetworkCopyWith<ParsedNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedNetworkCopyWith<$Res> {
  factory $ParsedNetworkCopyWith(
          ParsedNetwork value, $Res Function(ParsedNetwork) then) =
      _$ParsedNetworkCopyWithImpl<$Res, ParsedNetwork>;
  @useResult
  $Res call({int protocolMagic, int networkId});
}

/// @nodoc
class _$ParsedNetworkCopyWithImpl<$Res, $Val extends ParsedNetwork>
    implements $ParsedNetworkCopyWith<$Res> {
  _$ParsedNetworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocolMagic = null,
    Object? networkId = null,
  }) {
    return _then(_value.copyWith(
      protocolMagic: null == protocolMagic
          ? _value.protocolMagic
          : protocolMagic // ignore: cast_nullable_to_non_nullable
              as int,
      networkId: null == networkId
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedNetworkImplCopyWith<$Res>
    implements $ParsedNetworkCopyWith<$Res> {
  factory _$$ParsedNetworkImplCopyWith(
          _$ParsedNetworkImpl value, $Res Function(_$ParsedNetworkImpl) then) =
      __$$ParsedNetworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int protocolMagic, int networkId});
}

/// @nodoc
class __$$ParsedNetworkImplCopyWithImpl<$Res>
    extends _$ParsedNetworkCopyWithImpl<$Res, _$ParsedNetworkImpl>
    implements _$$ParsedNetworkImplCopyWith<$Res> {
  __$$ParsedNetworkImplCopyWithImpl(
      _$ParsedNetworkImpl _value, $Res Function(_$ParsedNetworkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocolMagic = null,
    Object? networkId = null,
  }) {
    return _then(_$ParsedNetworkImpl(
      protocolMagic: null == protocolMagic
          ? _value.protocolMagic
          : protocolMagic // ignore: cast_nullable_to_non_nullable
              as int,
      networkId: null == networkId
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ParsedNetworkImpl extends _ParsedNetwork {
  _$ParsedNetworkImpl({required this.protocolMagic, required this.networkId})
      : super._();

  @override
  final int protocolMagic;
  @override
  final int networkId;

  @override
  String toString() {
    return 'ParsedNetwork(protocolMagic: $protocolMagic, networkId: $networkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedNetworkImpl &&
            (identical(other.protocolMagic, protocolMagic) ||
                other.protocolMagic == protocolMagic) &&
            (identical(other.networkId, networkId) ||
                other.networkId == networkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, protocolMagic, networkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedNetworkImplCopyWith<_$ParsedNetworkImpl> get copyWith =>
      __$$ParsedNetworkImplCopyWithImpl<_$ParsedNetworkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int protocolMagic, int networkId) $default,
  ) {
    return $default(protocolMagic, networkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int protocolMagic, int networkId)? $default,
  ) {
    return $default?.call(protocolMagic, networkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int protocolMagic, int networkId)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(protocolMagic, networkId);
    }
    return orElse();
  }
}

abstract class _ParsedNetwork extends ParsedNetwork {
  factory _ParsedNetwork(
      {required final int protocolMagic,
      required final int networkId}) = _$ParsedNetworkImpl;
  _ParsedNetwork._() : super._();

  @override
  int get protocolMagic;
  @override
  int get networkId;
  @override
  @JsonKey(ignore: true)
  _$$ParsedNetworkImplCopyWith<_$ParsedNetworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
