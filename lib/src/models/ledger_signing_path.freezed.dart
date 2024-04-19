// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_signing_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LedgerSigningPath {}

/// @nodoc
abstract class $LedgerSigningPathCopyWith<$Res> {
  factory $LedgerSigningPathCopyWith(
          LedgerSigningPath value, $Res Function(LedgerSigningPath) then) =
      _$LedgerSigningPathCopyWithImpl<$Res, LedgerSigningPath>;
}

/// @nodoc
class _$LedgerSigningPathCopyWithImpl<$Res, $Val extends LedgerSigningPath>
    implements $LedgerSigningPathCopyWith<$Res> {
  _$LedgerSigningPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LedgerSigningPath_ByronImplCopyWith<$Res> {
  factory _$$LedgerSigningPath_ByronImplCopyWith(
          _$LedgerSigningPath_ByronImpl value,
          $Res Function(_$LedgerSigningPath_ByronImpl) then) =
      __$$LedgerSigningPath_ByronImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int account, int address});
}

/// @nodoc
class __$$LedgerSigningPath_ByronImplCopyWithImpl<$Res>
    extends _$LedgerSigningPathCopyWithImpl<$Res, _$LedgerSigningPath_ByronImpl>
    implements _$$LedgerSigningPath_ByronImplCopyWith<$Res> {
  __$$LedgerSigningPath_ByronImplCopyWithImpl(
      _$LedgerSigningPath_ByronImpl _value,
      $Res Function(_$LedgerSigningPath_ByronImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? address = null,
  }) {
    return _then(_$LedgerSigningPath_ByronImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LedgerSigningPath_ByronImpl extends LedgerSigningPath_Byron {
  const _$LedgerSigningPath_ByronImpl(
      {required this.account, required this.address})
      : super._();

  @override
  final int account;
  @override
  final int address;

  @override
  String toString() {
    return 'LedgerSigningPath.byron(account: $account, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerSigningPath_ByronImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerSigningPath_ByronImplCopyWith<_$LedgerSigningPath_ByronImpl>
      get copyWith => __$$LedgerSigningPath_ByronImplCopyWithImpl<
          _$LedgerSigningPath_ByronImpl>(this, _$identity);
}

abstract class LedgerSigningPath_Byron extends LedgerSigningPath {
  const factory LedgerSigningPath_Byron(
      {required final int account,
      required final int address}) = _$LedgerSigningPath_ByronImpl;
  const LedgerSigningPath_Byron._() : super._();

  int get account;
  int get address;
  @JsonKey(ignore: true)
  _$$LedgerSigningPath_ByronImplCopyWith<_$LedgerSigningPath_ByronImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LedgerSigningPath_ShelleyImplCopyWith<$Res> {
  factory _$$LedgerSigningPath_ShelleyImplCopyWith(
          _$LedgerSigningPath_ShelleyImpl value,
          $Res Function(_$LedgerSigningPath_ShelleyImpl) then) =
      __$$LedgerSigningPath_ShelleyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int account, int address, ShelleyAddressRole role});
}

/// @nodoc
class __$$LedgerSigningPath_ShelleyImplCopyWithImpl<$Res>
    extends _$LedgerSigningPathCopyWithImpl<$Res,
        _$LedgerSigningPath_ShelleyImpl>
    implements _$$LedgerSigningPath_ShelleyImplCopyWith<$Res> {
  __$$LedgerSigningPath_ShelleyImplCopyWithImpl(
      _$LedgerSigningPath_ShelleyImpl _value,
      $Res Function(_$LedgerSigningPath_ShelleyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? address = null,
    Object? role = null,
  }) {
    return _then(_$LedgerSigningPath_ShelleyImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ShelleyAddressRole,
    ));
  }
}

/// @nodoc

class _$LedgerSigningPath_ShelleyImpl extends LedgerSigningPath_Shelley {
  const _$LedgerSigningPath_ShelleyImpl(
      {required this.account, required this.address, required this.role})
      : super._();

  @override
  final int account;
  @override
  final int address;
  @override
  final ShelleyAddressRole role;

  @override
  String toString() {
    return 'LedgerSigningPath.shelley(account: $account, address: $address, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerSigningPath_ShelleyImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, address, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerSigningPath_ShelleyImplCopyWith<_$LedgerSigningPath_ShelleyImpl>
      get copyWith => __$$LedgerSigningPath_ShelleyImplCopyWithImpl<
          _$LedgerSigningPath_ShelleyImpl>(this, _$identity);
}

abstract class LedgerSigningPath_Shelley extends LedgerSigningPath {
  const factory LedgerSigningPath_Shelley(
          {required final int account,
          required final int address,
          required final ShelleyAddressRole role}) =
      _$LedgerSigningPath_ShelleyImpl;
  const LedgerSigningPath_Shelley._() : super._();

  int get account;
  int get address;
  ShelleyAddressRole get role;
  @JsonKey(ignore: true)
  _$$LedgerSigningPath_ShelleyImplCopyWith<_$LedgerSigningPath_ShelleyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LedgerSigningPath_CustomImplCopyWith<$Res> {
  factory _$$LedgerSigningPath_CustomImplCopyWith(
          _$LedgerSigningPath_CustomImpl value,
          $Res Function(_$LedgerSigningPath_CustomImpl) then) =
      __$$LedgerSigningPath_CustomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> path});
}

/// @nodoc
class __$$LedgerSigningPath_CustomImplCopyWithImpl<$Res>
    extends _$LedgerSigningPathCopyWithImpl<$Res,
        _$LedgerSigningPath_CustomImpl>
    implements _$$LedgerSigningPath_CustomImplCopyWith<$Res> {
  __$$LedgerSigningPath_CustomImplCopyWithImpl(
      _$LedgerSigningPath_CustomImpl _value,
      $Res Function(_$LedgerSigningPath_CustomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$LedgerSigningPath_CustomImpl(
      null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$LedgerSigningPath_CustomImpl extends LedgerSigningPath_Custom {
  const _$LedgerSigningPath_CustomImpl(final List<int> path)
      : _path = path,
        super._();

  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'LedgerSigningPath.custom(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerSigningPath_CustomImpl &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerSigningPath_CustomImplCopyWith<_$LedgerSigningPath_CustomImpl>
      get copyWith => __$$LedgerSigningPath_CustomImplCopyWithImpl<
          _$LedgerSigningPath_CustomImpl>(this, _$identity);
}

abstract class LedgerSigningPath_Custom extends LedgerSigningPath {
  const factory LedgerSigningPath_Custom(final List<int> path) =
      _$LedgerSigningPath_CustomImpl;
  const LedgerSigningPath_Custom._() : super._();

  List<int> get path;
  @JsonKey(ignore: true)
  _$$LedgerSigningPath_CustomImplCopyWith<_$LedgerSigningPath_CustomImpl>
      get copyWith => throw _privateConstructorUsedError;
}
