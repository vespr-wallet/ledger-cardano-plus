// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extended_public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExtendedPublicKey {
  String get publicKeyHex => throw _privateConstructorUsedError;
  String get chainCodeHex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExtendedPublicKeyCopyWith<ExtendedPublicKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtendedPublicKeyCopyWith<$Res> {
  factory $ExtendedPublicKeyCopyWith(
          ExtendedPublicKey value, $Res Function(ExtendedPublicKey) then) =
      _$ExtendedPublicKeyCopyWithImpl<$Res, ExtendedPublicKey>;
  @useResult
  $Res call({String publicKeyHex, String chainCodeHex});
}

/// @nodoc
class _$ExtendedPublicKeyCopyWithImpl<$Res, $Val extends ExtendedPublicKey>
    implements $ExtendedPublicKeyCopyWith<$Res> {
  _$ExtendedPublicKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKeyHex = null,
    Object? chainCodeHex = null,
  }) {
    return _then(_value.copyWith(
      publicKeyHex: null == publicKeyHex
          ? _value.publicKeyHex
          : publicKeyHex // ignore: cast_nullable_to_non_nullable
              as String,
      chainCodeHex: null == chainCodeHex
          ? _value.chainCodeHex
          : chainCodeHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtendedPublicKeyImplCopyWith<$Res>
    implements $ExtendedPublicKeyCopyWith<$Res> {
  factory _$$ExtendedPublicKeyImplCopyWith(_$ExtendedPublicKeyImpl value,
          $Res Function(_$ExtendedPublicKeyImpl) then) =
      __$$ExtendedPublicKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKeyHex, String chainCodeHex});
}

/// @nodoc
class __$$ExtendedPublicKeyImplCopyWithImpl<$Res>
    extends _$ExtendedPublicKeyCopyWithImpl<$Res, _$ExtendedPublicKeyImpl>
    implements _$$ExtendedPublicKeyImplCopyWith<$Res> {
  __$$ExtendedPublicKeyImplCopyWithImpl(_$ExtendedPublicKeyImpl _value,
      $Res Function(_$ExtendedPublicKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKeyHex = null,
    Object? chainCodeHex = null,
  }) {
    return _then(_$ExtendedPublicKeyImpl(
      publicKeyHex: null == publicKeyHex
          ? _value.publicKeyHex
          : publicKeyHex // ignore: cast_nullable_to_non_nullable
              as String,
      chainCodeHex: null == chainCodeHex
          ? _value.chainCodeHex
          : chainCodeHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExtendedPublicKeyImpl extends _ExtendedPublicKey {
  const _$ExtendedPublicKeyImpl(
      {required this.publicKeyHex, required this.chainCodeHex})
      : super._();

  @override
  final String publicKeyHex;
  @override
  final String chainCodeHex;

  @override
  String toString() {
    return 'ExtendedPublicKey(publicKeyHex: $publicKeyHex, chainCodeHex: $chainCodeHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendedPublicKeyImpl &&
            (identical(other.publicKeyHex, publicKeyHex) ||
                other.publicKeyHex == publicKeyHex) &&
            (identical(other.chainCodeHex, chainCodeHex) ||
                other.chainCodeHex == chainCodeHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicKeyHex, chainCodeHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtendedPublicKeyImplCopyWith<_$ExtendedPublicKeyImpl> get copyWith =>
      __$$ExtendedPublicKeyImplCopyWithImpl<_$ExtendedPublicKeyImpl>(
          this, _$identity);
}

abstract class _ExtendedPublicKey extends ExtendedPublicKey {
  const factory _ExtendedPublicKey(
      {required final String publicKeyHex,
      required final String chainCodeHex}) = _$ExtendedPublicKeyImpl;
  const _ExtendedPublicKey._() : super._();

  @override
  String get publicKeyHex;
  @override
  String get chainCodeHex;
  @override
  @JsonKey(ignore: true)
  _$$ExtendedPublicKeyImplCopyWith<_$ExtendedPublicKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
