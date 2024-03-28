// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RewardAddress {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rewardKey,
    required TResult Function() rewardScript,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? rewardKey,
    TResult? Function()? rewardScript,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rewardKey,
    TResult Function()? rewardScript,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardAddressCopyWith<$Res> {
  factory $RewardAddressCopyWith(
          RewardAddress value, $Res Function(RewardAddress) then) =
      _$RewardAddressCopyWithImpl<$Res, RewardAddress>;
}

/// @nodoc
class _$RewardAddressCopyWithImpl<$Res, $Val extends RewardAddress>
    implements $RewardAddressCopyWith<$Res> {
  _$RewardAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RewardKeyImplCopyWith<$Res> {
  factory _$$RewardKeyImplCopyWith(
          _$RewardKeyImpl value, $Res Function(_$RewardKeyImpl) then) =
      __$$RewardKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RewardKeyImplCopyWithImpl<$Res>
    extends _$RewardAddressCopyWithImpl<$Res, _$RewardKeyImpl>
    implements _$$RewardKeyImplCopyWith<$Res> {
  __$$RewardKeyImplCopyWithImpl(
      _$RewardKeyImpl _value, $Res Function(_$RewardKeyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RewardKeyImpl extends RewardKey {
  _$RewardKeyImpl() : super._();

  @override
  String toString() {
    return 'RewardAddress.rewardKey()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RewardKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rewardKey,
    required TResult Function() rewardScript,
  }) {
    return rewardKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? rewardKey,
    TResult? Function()? rewardScript,
  }) {
    return rewardKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rewardKey,
    TResult Function()? rewardScript,
    required TResult orElse(),
  }) {
    if (rewardKey != null) {
      return rewardKey();
    }
    return orElse();
  }
}

abstract class RewardKey extends RewardAddress {
  factory RewardKey() = _$RewardKeyImpl;
  RewardKey._() : super._();
}

/// @nodoc
abstract class _$$RewardScriptImplCopyWith<$Res> {
  factory _$$RewardScriptImplCopyWith(
          _$RewardScriptImpl value, $Res Function(_$RewardScriptImpl) then) =
      __$$RewardScriptImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RewardScriptImplCopyWithImpl<$Res>
    extends _$RewardAddressCopyWithImpl<$Res, _$RewardScriptImpl>
    implements _$$RewardScriptImplCopyWith<$Res> {
  __$$RewardScriptImplCopyWithImpl(
      _$RewardScriptImpl _value, $Res Function(_$RewardScriptImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RewardScriptImpl extends RewardScript {
  _$RewardScriptImpl() : super._();

  @override
  String toString() {
    return 'RewardAddress.rewardScript()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RewardScriptImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rewardKey,
    required TResult Function() rewardScript,
  }) {
    return rewardScript();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? rewardKey,
    TResult? Function()? rewardScript,
  }) {
    return rewardScript?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rewardKey,
    TResult Function()? rewardScript,
    required TResult orElse(),
  }) {
    if (rewardScript != null) {
      return rewardScript();
    }
    return orElse();
  }
}

abstract class RewardScript extends RewardAddress {
  factory RewardScript() = _$RewardScriptImpl;
  RewardScript._() : super._();
}
