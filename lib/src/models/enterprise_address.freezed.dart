// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enterprise_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EnterpriseAddress {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterpriseKey,
    required TResult Function() enterpriseScript,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterpriseKey,
    TResult? Function()? enterpriseScript,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterpriseKey,
    TResult Function()? enterpriseScript,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterpriseAddressCopyWith<$Res> {
  factory $EnterpriseAddressCopyWith(
          EnterpriseAddress value, $Res Function(EnterpriseAddress) then) =
      _$EnterpriseAddressCopyWithImpl<$Res, EnterpriseAddress>;
}

/// @nodoc
class _$EnterpriseAddressCopyWithImpl<$Res, $Val extends EnterpriseAddress>
    implements $EnterpriseAddressCopyWith<$Res> {
  _$EnterpriseAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnterpriseKeyImplCopyWith<$Res> {
  factory _$$EnterpriseKeyImplCopyWith(
          _$EnterpriseKeyImpl value, $Res Function(_$EnterpriseKeyImpl) then) =
      __$$EnterpriseKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterpriseKeyImplCopyWithImpl<$Res>
    extends _$EnterpriseAddressCopyWithImpl<$Res, _$EnterpriseKeyImpl>
    implements _$$EnterpriseKeyImplCopyWith<$Res> {
  __$$EnterpriseKeyImplCopyWithImpl(
      _$EnterpriseKeyImpl _value, $Res Function(_$EnterpriseKeyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterpriseKeyImpl extends EnterpriseKey {
  _$EnterpriseKeyImpl() : super._();

  @override
  String toString() {
    return 'EnterpriseAddress.enterpriseKey()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterpriseKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterpriseKey,
    required TResult Function() enterpriseScript,
  }) {
    return enterpriseKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterpriseKey,
    TResult? Function()? enterpriseScript,
  }) {
    return enterpriseKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterpriseKey,
    TResult Function()? enterpriseScript,
    required TResult orElse(),
  }) {
    if (enterpriseKey != null) {
      return enterpriseKey();
    }
    return orElse();
  }
}

abstract class EnterpriseKey extends EnterpriseAddress {
  factory EnterpriseKey() = _$EnterpriseKeyImpl;
  EnterpriseKey._() : super._();
}

/// @nodoc
abstract class _$$EnterpriseScriptImplCopyWith<$Res> {
  factory _$$EnterpriseScriptImplCopyWith(_$EnterpriseScriptImpl value,
          $Res Function(_$EnterpriseScriptImpl) then) =
      __$$EnterpriseScriptImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterpriseScriptImplCopyWithImpl<$Res>
    extends _$EnterpriseAddressCopyWithImpl<$Res, _$EnterpriseScriptImpl>
    implements _$$EnterpriseScriptImplCopyWith<$Res> {
  __$$EnterpriseScriptImplCopyWithImpl(_$EnterpriseScriptImpl _value,
      $Res Function(_$EnterpriseScriptImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterpriseScriptImpl extends EnterpriseScript {
  _$EnterpriseScriptImpl() : super._();

  @override
  String toString() {
    return 'EnterpriseAddress.enterpriseScript()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterpriseScriptImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterpriseKey,
    required TResult Function() enterpriseScript,
  }) {
    return enterpriseScript();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterpriseKey,
    TResult? Function()? enterpriseScript,
  }) {
    return enterpriseScript?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterpriseKey,
    TResult Function()? enterpriseScript,
    required TResult orElse(),
  }) {
    if (enterpriseScript != null) {
      return enterpriseScript();
    }
    return orElse();
  }
}

abstract class EnterpriseScript extends EnterpriseAddress {
  factory EnterpriseScript() = _$EnterpriseScriptImpl;
  EnterpriseScript._() : super._();
}
