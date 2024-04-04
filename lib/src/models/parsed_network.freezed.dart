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
mixin _$ParsedNetwork {}

/// @nodoc
abstract class $ParsedNetworkCopyWith<$Res> {
  factory $ParsedNetworkCopyWith(
          ParsedNetwork value, $Res Function(ParsedNetwork) then) =
      _$ParsedNetworkCopyWithImpl<$Res, ParsedNetwork>;
}

/// @nodoc
class _$ParsedNetworkCopyWithImpl<$Res, $Val extends ParsedNetwork>
    implements $ParsedNetworkCopyWith<$Res> {
  _$ParsedNetworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParsedNetworkTestnetImplCopyWith<$Res> {
  factory _$$ParsedNetworkTestnetImplCopyWith(_$ParsedNetworkTestnetImpl value,
          $Res Function(_$ParsedNetworkTestnetImpl) then) =
      __$$ParsedNetworkTestnetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParsedNetworkTestnetImplCopyWithImpl<$Res>
    extends _$ParsedNetworkCopyWithImpl<$Res, _$ParsedNetworkTestnetImpl>
    implements _$$ParsedNetworkTestnetImplCopyWith<$Res> {
  __$$ParsedNetworkTestnetImplCopyWithImpl(_$ParsedNetworkTestnetImpl _value,
      $Res Function(_$ParsedNetworkTestnetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParsedNetworkTestnetImpl extends ParsedNetworkTestnet {
  _$ParsedNetworkTestnetImpl() : super._();

  @override
  String toString() {
    return 'ParsedNetwork.testnet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedNetworkTestnetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ParsedNetworkTestnet extends ParsedNetwork {
  factory ParsedNetworkTestnet() = _$ParsedNetworkTestnetImpl;
  ParsedNetworkTestnet._() : super._();
}

/// @nodoc
abstract class _$$ParsedNetworkMainnetImplCopyWith<$Res> {
  factory _$$ParsedNetworkMainnetImplCopyWith(_$ParsedNetworkMainnetImpl value,
          $Res Function(_$ParsedNetworkMainnetImpl) then) =
      __$$ParsedNetworkMainnetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParsedNetworkMainnetImplCopyWithImpl<$Res>
    extends _$ParsedNetworkCopyWithImpl<$Res, _$ParsedNetworkMainnetImpl>
    implements _$$ParsedNetworkMainnetImplCopyWith<$Res> {
  __$$ParsedNetworkMainnetImplCopyWithImpl(_$ParsedNetworkMainnetImpl _value,
      $Res Function(_$ParsedNetworkMainnetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParsedNetworkMainnetImpl extends ParsedNetworkMainnet {
  _$ParsedNetworkMainnetImpl() : super._();

  @override
  String toString() {
    return 'ParsedNetwork.mainnet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedNetworkMainnetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ParsedNetworkMainnet extends ParsedNetwork {
  factory ParsedNetworkMainnet() = _$ParsedNetworkMainnetImpl;
  ParsedNetworkMainnet._() : super._();
}
