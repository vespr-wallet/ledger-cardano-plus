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
  String get accountType => throw _privateConstructorUsedError;

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
  $Res call({String publicKeyHex, String chainCodeHex, String accountType});
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
    Object? accountType = null,
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
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
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
  $Res call({String publicKeyHex, String chainCodeHex, String accountType});
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
    Object? accountType = null,
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
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExtendedPublicKeyImpl extends _ExtendedPublicKey {
  const _$ExtendedPublicKeyImpl(
      {required this.publicKeyHex,
      required this.chainCodeHex,
      required this.accountType})
      : super._();

  @override
  final String publicKeyHex;
  @override
  final String chainCodeHex;
  @override
  final String accountType;

  @override
  String toString() {
    return 'ExtendedPublicKey(publicKeyHex: $publicKeyHex, chainCodeHex: $chainCodeHex, accountType: $accountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendedPublicKeyImpl &&
            (identical(other.publicKeyHex, publicKeyHex) ||
                other.publicKeyHex == publicKeyHex) &&
            (identical(other.chainCodeHex, chainCodeHex) ||
                other.chainCodeHex == chainCodeHex) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, publicKeyHex, chainCodeHex, accountType);

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
      required final String chainCodeHex,
      required final String accountType}) = _$ExtendedPublicKeyImpl;
  const _ExtendedPublicKey._() : super._();

  @override
  String get publicKeyHex;
  @override
  String get chainCodeHex;
  @override
  String get accountType;
  @override
  @JsonKey(ignore: true)
  _$$ExtendedPublicKeyImplCopyWith<_$ExtendedPublicKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExtendedPublicKeyRequest {}

/// @nodoc
abstract class $ExtendedPublicKeyRequestCopyWith<$Res> {
  factory $ExtendedPublicKeyRequestCopyWith(ExtendedPublicKeyRequest value,
          $Res Function(ExtendedPublicKeyRequest) then) =
      _$ExtendedPublicKeyRequestCopyWithImpl<$Res, ExtendedPublicKeyRequest>;
}

/// @nodoc
class _$ExtendedPublicKeyRequestCopyWithImpl<$Res,
        $Val extends ExtendedPublicKeyRequest>
    implements $ExtendedPublicKeyRequestCopyWith<$Res> {
  _$ExtendedPublicKeyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExtendedPublicKeyRequest_ShelleyImplCopyWith<$Res> {
  factory _$$ExtendedPublicKeyRequest_ShelleyImplCopyWith(
          _$ExtendedPublicKeyRequest_ShelleyImpl value,
          $Res Function(_$ExtendedPublicKeyRequest_ShelleyImpl) then) =
      __$$ExtendedPublicKeyRequest_ShelleyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountIndex});
}

/// @nodoc
class __$$ExtendedPublicKeyRequest_ShelleyImplCopyWithImpl<$Res>
    extends _$ExtendedPublicKeyRequestCopyWithImpl<$Res,
        _$ExtendedPublicKeyRequest_ShelleyImpl>
    implements _$$ExtendedPublicKeyRequest_ShelleyImplCopyWith<$Res> {
  __$$ExtendedPublicKeyRequest_ShelleyImplCopyWithImpl(
      _$ExtendedPublicKeyRequest_ShelleyImpl _value,
      $Res Function(_$ExtendedPublicKeyRequest_ShelleyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountIndex = null,
  }) {
    return _then(_$ExtendedPublicKeyRequest_ShelleyImpl(
      accountIndex: null == accountIndex
          ? _value.accountIndex
          : accountIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExtendedPublicKeyRequest_ShelleyImpl
    extends ExtendedPublicKeyRequest_Shelley {
  const _$ExtendedPublicKeyRequest_ShelleyImpl({required this.accountIndex})
      : super._();

  @override
  final int accountIndex;

  @override
  String toString() {
    return 'ExtendedPublicKeyRequest.shelley(accountIndex: $accountIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendedPublicKeyRequest_ShelleyImpl &&
            (identical(other.accountIndex, accountIndex) ||
                other.accountIndex == accountIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtendedPublicKeyRequest_ShelleyImplCopyWith<
          _$ExtendedPublicKeyRequest_ShelleyImpl>
      get copyWith => __$$ExtendedPublicKeyRequest_ShelleyImplCopyWithImpl<
          _$ExtendedPublicKeyRequest_ShelleyImpl>(this, _$identity);
}

abstract class ExtendedPublicKeyRequest_Shelley
    extends ExtendedPublicKeyRequest {
  const factory ExtendedPublicKeyRequest_Shelley(
          {required final int accountIndex}) =
      _$ExtendedPublicKeyRequest_ShelleyImpl;
  const ExtendedPublicKeyRequest_Shelley._() : super._();

  int get accountIndex;
  @JsonKey(ignore: true)
  _$$ExtendedPublicKeyRequest_ShelleyImplCopyWith<
          _$ExtendedPublicKeyRequest_ShelleyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExtendedPublicKeyRequest_ByronImplCopyWith<$Res> {
  factory _$$ExtendedPublicKeyRequest_ByronImplCopyWith(
          _$ExtendedPublicKeyRequest_ByronImpl value,
          $Res Function(_$ExtendedPublicKeyRequest_ByronImpl) then) =
      __$$ExtendedPublicKeyRequest_ByronImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExtendedPublicKeyRequest_ByronImplCopyWithImpl<$Res>
    extends _$ExtendedPublicKeyRequestCopyWithImpl<$Res,
        _$ExtendedPublicKeyRequest_ByronImpl>
    implements _$$ExtendedPublicKeyRequest_ByronImplCopyWith<$Res> {
  __$$ExtendedPublicKeyRequest_ByronImplCopyWithImpl(
      _$ExtendedPublicKeyRequest_ByronImpl _value,
      $Res Function(_$ExtendedPublicKeyRequest_ByronImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExtendedPublicKeyRequest_ByronImpl
    extends ExtendedPublicKeyRequest_Byron {
  const _$ExtendedPublicKeyRequest_ByronImpl() : super._();

  @override
  String toString() {
    return 'ExtendedPublicKeyRequest.byron()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendedPublicKeyRequest_ByronImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ExtendedPublicKeyRequest_Byron extends ExtendedPublicKeyRequest {
  const factory ExtendedPublicKeyRequest_Byron() =
      _$ExtendedPublicKeyRequest_ByronImpl;
  const ExtendedPublicKeyRequest_Byron._() : super._();
}

/// @nodoc
abstract class _$$ExtendedPublicKeyRequest_CustomImplCopyWith<$Res> {
  factory _$$ExtendedPublicKeyRequest_CustomImplCopyWith(
          _$ExtendedPublicKeyRequest_CustomImpl value,
          $Res Function(_$ExtendedPublicKeyRequest_CustomImpl) then) =
      __$$ExtendedPublicKeyRequest_CustomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> customPath});
}

/// @nodoc
class __$$ExtendedPublicKeyRequest_CustomImplCopyWithImpl<$Res>
    extends _$ExtendedPublicKeyRequestCopyWithImpl<$Res,
        _$ExtendedPublicKeyRequest_CustomImpl>
    implements _$$ExtendedPublicKeyRequest_CustomImplCopyWith<$Res> {
  __$$ExtendedPublicKeyRequest_CustomImplCopyWithImpl(
      _$ExtendedPublicKeyRequest_CustomImpl _value,
      $Res Function(_$ExtendedPublicKeyRequest_CustomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customPath = null,
  }) {
    return _then(_$ExtendedPublicKeyRequest_CustomImpl(
      customPath: null == customPath
          ? _value._customPath
          : customPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ExtendedPublicKeyRequest_CustomImpl
    extends ExtendedPublicKeyRequest_Custom {
  const _$ExtendedPublicKeyRequest_CustomImpl(
      {required final List<int> customPath})
      : _customPath = customPath,
        super._();

  final List<int> _customPath;
  @override
  List<int> get customPath {
    if (_customPath is EqualUnmodifiableListView) return _customPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customPath);
  }

  @override
  String toString() {
    return 'ExtendedPublicKeyRequest.custom(customPath: $customPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtendedPublicKeyRequest_CustomImpl &&
            const DeepCollectionEquality()
                .equals(other._customPath, _customPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customPath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtendedPublicKeyRequest_CustomImplCopyWith<
          _$ExtendedPublicKeyRequest_CustomImpl>
      get copyWith => __$$ExtendedPublicKeyRequest_CustomImplCopyWithImpl<
          _$ExtendedPublicKeyRequest_CustomImpl>(this, _$identity);
}

abstract class ExtendedPublicKeyRequest_Custom
    extends ExtendedPublicKeyRequest {
  const factory ExtendedPublicKeyRequest_Custom(
          {required final List<int> customPath}) =
      _$ExtendedPublicKeyRequest_CustomImpl;
  const ExtendedPublicKeyRequest_Custom._() : super._();

  List<int> get customPath;
  @JsonKey(ignore: true)
  _$$ExtendedPublicKeyRequest_CustomImplCopyWith<
          _$ExtendedPublicKeyRequest_CustomImpl>
      get copyWith => throw _privateConstructorUsedError;
}
