// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_simple_native_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedSimpleNativeScript {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) pubKeyDeviceOwned,
    required TResult Function(String keyHashHex) pubKeyThirdParty,
    required TResult Function(BigInt slot) invalidBefore,
    required TResult Function(BigInt slot) invalidHereafter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(BigInt slot)? invalidBefore,
    TResult? Function(BigInt slot)? invalidHereafter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(BigInt slot)? invalidBefore,
    TResult Function(BigInt slot)? invalidHereafter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedSimpleNativeScriptCopyWith<$Res> {
  factory $ParsedSimpleNativeScriptCopyWith(ParsedSimpleNativeScript value,
          $Res Function(ParsedSimpleNativeScript) then) =
      _$ParsedSimpleNativeScriptCopyWithImpl<$Res, ParsedSimpleNativeScript>;
}

/// @nodoc
class _$ParsedSimpleNativeScriptCopyWithImpl<$Res,
        $Val extends ParsedSimpleNativeScript>
    implements $ParsedSimpleNativeScriptCopyWith<$Res> {
  _$ParsedSimpleNativeScriptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParsedSimpleNativeScript_PubKeyDeviceOwnedImplCopyWith<$Res> {
  factory _$$ParsedSimpleNativeScript_PubKeyDeviceOwnedImplCopyWith(
          _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl value,
          $Res Function(_$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl)
              then) =
      __$$ParsedSimpleNativeScript_PubKeyDeviceOwnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> path});
}

/// @nodoc
class __$$ParsedSimpleNativeScript_PubKeyDeviceOwnedImplCopyWithImpl<$Res>
    extends _$ParsedSimpleNativeScriptCopyWithImpl<$Res,
        _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl>
    implements _$$ParsedSimpleNativeScript_PubKeyDeviceOwnedImplCopyWith<$Res> {
  __$$ParsedSimpleNativeScript_PubKeyDeviceOwnedImplCopyWithImpl(
      _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl _value,
      $Res Function(_$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl
    extends ParsedSimpleNativeScript_PubKeyDeviceOwned {
  _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl(
      {required final List<int> path})
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
    return 'ParsedSimpleNativeScript.pubKeyDeviceOwned(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSimpleNativeScript_PubKeyDeviceOwnedImplCopyWith<
          _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl>
      get copyWith =>
          __$$ParsedSimpleNativeScript_PubKeyDeviceOwnedImplCopyWithImpl<
                  _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) pubKeyDeviceOwned,
    required TResult Function(String keyHashHex) pubKeyThirdParty,
    required TResult Function(BigInt slot) invalidBefore,
    required TResult Function(BigInt slot) invalidHereafter,
  }) {
    return pubKeyDeviceOwned(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(BigInt slot)? invalidBefore,
    TResult? Function(BigInt slot)? invalidHereafter,
  }) {
    return pubKeyDeviceOwned?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(BigInt slot)? invalidBefore,
    TResult Function(BigInt slot)? invalidHereafter,
    required TResult orElse(),
  }) {
    if (pubKeyDeviceOwned != null) {
      return pubKeyDeviceOwned(path);
    }
    return orElse();
  }
}

abstract class ParsedSimpleNativeScript_PubKeyDeviceOwned
    extends ParsedSimpleNativeScript {
  factory ParsedSimpleNativeScript_PubKeyDeviceOwned(
          {required final List<int> path}) =
      _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl;
  ParsedSimpleNativeScript_PubKeyDeviceOwned._() : super._();

  List<int> get path;
  @JsonKey(ignore: true)
  _$$ParsedSimpleNativeScript_PubKeyDeviceOwnedImplCopyWith<
          _$ParsedSimpleNativeScript_PubKeyDeviceOwnedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedSimpleNativeScript_PubKeyThirdPartyImplCopyWith<$Res> {
  factory _$$ParsedSimpleNativeScript_PubKeyThirdPartyImplCopyWith(
          _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl value,
          $Res Function(_$ParsedSimpleNativeScript_PubKeyThirdPartyImpl) then) =
      __$$ParsedSimpleNativeScript_PubKeyThirdPartyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class __$$ParsedSimpleNativeScript_PubKeyThirdPartyImplCopyWithImpl<$Res>
    extends _$ParsedSimpleNativeScriptCopyWithImpl<$Res,
        _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl>
    implements _$$ParsedSimpleNativeScript_PubKeyThirdPartyImplCopyWith<$Res> {
  __$$ParsedSimpleNativeScript_PubKeyThirdPartyImplCopyWithImpl(
      _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl _value,
      $Res Function(_$ParsedSimpleNativeScript_PubKeyThirdPartyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(_$ParsedSimpleNativeScript_PubKeyThirdPartyImpl(
      keyHashHex: null == keyHashHex
          ? _value.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl
    extends ParsedSimpleNativeScript_PubKeyThirdParty {
  _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl({required this.keyHashHex})
      : super._();

  @override
  final String keyHashHex;

  @override
  String toString() {
    return 'ParsedSimpleNativeScript.pubKeyThirdParty(keyHashHex: $keyHashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSimpleNativeScript_PubKeyThirdPartyImplCopyWith<
          _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl>
      get copyWith =>
          __$$ParsedSimpleNativeScript_PubKeyThirdPartyImplCopyWithImpl<
                  _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) pubKeyDeviceOwned,
    required TResult Function(String keyHashHex) pubKeyThirdParty,
    required TResult Function(BigInt slot) invalidBefore,
    required TResult Function(BigInt slot) invalidHereafter,
  }) {
    return pubKeyThirdParty(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(BigInt slot)? invalidBefore,
    TResult? Function(BigInt slot)? invalidHereafter,
  }) {
    return pubKeyThirdParty?.call(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(BigInt slot)? invalidBefore,
    TResult Function(BigInt slot)? invalidHereafter,
    required TResult orElse(),
  }) {
    if (pubKeyThirdParty != null) {
      return pubKeyThirdParty(keyHashHex);
    }
    return orElse();
  }
}

abstract class ParsedSimpleNativeScript_PubKeyThirdParty
    extends ParsedSimpleNativeScript {
  factory ParsedSimpleNativeScript_PubKeyThirdParty(
          {required final String keyHashHex}) =
      _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl;
  ParsedSimpleNativeScript_PubKeyThirdParty._() : super._();

  String get keyHashHex;
  @JsonKey(ignore: true)
  _$$ParsedSimpleNativeScript_PubKeyThirdPartyImplCopyWith<
          _$ParsedSimpleNativeScript_PubKeyThirdPartyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedSimpleNativeScript_InvalidBeforeImplCopyWith<$Res> {
  factory _$$ParsedSimpleNativeScript_InvalidBeforeImplCopyWith(
          _$ParsedSimpleNativeScript_InvalidBeforeImpl value,
          $Res Function(_$ParsedSimpleNativeScript_InvalidBeforeImpl) then) =
      __$$ParsedSimpleNativeScript_InvalidBeforeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt slot});
}

/// @nodoc
class __$$ParsedSimpleNativeScript_InvalidBeforeImplCopyWithImpl<$Res>
    extends _$ParsedSimpleNativeScriptCopyWithImpl<$Res,
        _$ParsedSimpleNativeScript_InvalidBeforeImpl>
    implements _$$ParsedSimpleNativeScript_InvalidBeforeImplCopyWith<$Res> {
  __$$ParsedSimpleNativeScript_InvalidBeforeImplCopyWithImpl(
      _$ParsedSimpleNativeScript_InvalidBeforeImpl _value,
      $Res Function(_$ParsedSimpleNativeScript_InvalidBeforeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
  }) {
    return _then(_$ParsedSimpleNativeScript_InvalidBeforeImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$ParsedSimpleNativeScript_InvalidBeforeImpl
    extends ParsedSimpleNativeScript_InvalidBefore {
  _$ParsedSimpleNativeScript_InvalidBeforeImpl({required this.slot})
      : super._();

  @override
  final BigInt slot;

  @override
  String toString() {
    return 'ParsedSimpleNativeScript.invalidBefore(slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSimpleNativeScript_InvalidBeforeImpl &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSimpleNativeScript_InvalidBeforeImplCopyWith<
          _$ParsedSimpleNativeScript_InvalidBeforeImpl>
      get copyWith =>
          __$$ParsedSimpleNativeScript_InvalidBeforeImplCopyWithImpl<
              _$ParsedSimpleNativeScript_InvalidBeforeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) pubKeyDeviceOwned,
    required TResult Function(String keyHashHex) pubKeyThirdParty,
    required TResult Function(BigInt slot) invalidBefore,
    required TResult Function(BigInt slot) invalidHereafter,
  }) {
    return invalidBefore(slot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(BigInt slot)? invalidBefore,
    TResult? Function(BigInt slot)? invalidHereafter,
  }) {
    return invalidBefore?.call(slot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(BigInt slot)? invalidBefore,
    TResult Function(BigInt slot)? invalidHereafter,
    required TResult orElse(),
  }) {
    if (invalidBefore != null) {
      return invalidBefore(slot);
    }
    return orElse();
  }
}

abstract class ParsedSimpleNativeScript_InvalidBefore
    extends ParsedSimpleNativeScript {
  factory ParsedSimpleNativeScript_InvalidBefore({required final BigInt slot}) =
      _$ParsedSimpleNativeScript_InvalidBeforeImpl;
  ParsedSimpleNativeScript_InvalidBefore._() : super._();

  BigInt get slot;
  @JsonKey(ignore: true)
  _$$ParsedSimpleNativeScript_InvalidBeforeImplCopyWith<
          _$ParsedSimpleNativeScript_InvalidBeforeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedSimpleNativeScript_InvalidHereafterImplCopyWith<$Res> {
  factory _$$ParsedSimpleNativeScript_InvalidHereafterImplCopyWith(
          _$ParsedSimpleNativeScript_InvalidHereafterImpl value,
          $Res Function(_$ParsedSimpleNativeScript_InvalidHereafterImpl) then) =
      __$$ParsedSimpleNativeScript_InvalidHereafterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt slot});
}

/// @nodoc
class __$$ParsedSimpleNativeScript_InvalidHereafterImplCopyWithImpl<$Res>
    extends _$ParsedSimpleNativeScriptCopyWithImpl<$Res,
        _$ParsedSimpleNativeScript_InvalidHereafterImpl>
    implements _$$ParsedSimpleNativeScript_InvalidHereafterImplCopyWith<$Res> {
  __$$ParsedSimpleNativeScript_InvalidHereafterImplCopyWithImpl(
      _$ParsedSimpleNativeScript_InvalidHereafterImpl _value,
      $Res Function(_$ParsedSimpleNativeScript_InvalidHereafterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
  }) {
    return _then(_$ParsedSimpleNativeScript_InvalidHereafterImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$ParsedSimpleNativeScript_InvalidHereafterImpl
    extends ParsedSimpleNativeScript_InvalidHereafter {
  _$ParsedSimpleNativeScript_InvalidHereafterImpl({required this.slot})
      : super._();

  @override
  final BigInt slot;

  @override
  String toString() {
    return 'ParsedSimpleNativeScript.invalidHereafter(slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSimpleNativeScript_InvalidHereafterImpl &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSimpleNativeScript_InvalidHereafterImplCopyWith<
          _$ParsedSimpleNativeScript_InvalidHereafterImpl>
      get copyWith =>
          __$$ParsedSimpleNativeScript_InvalidHereafterImplCopyWithImpl<
                  _$ParsedSimpleNativeScript_InvalidHereafterImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) pubKeyDeviceOwned,
    required TResult Function(String keyHashHex) pubKeyThirdParty,
    required TResult Function(BigInt slot) invalidBefore,
    required TResult Function(BigInt slot) invalidHereafter,
  }) {
    return invalidHereafter(slot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(BigInt slot)? invalidBefore,
    TResult? Function(BigInt slot)? invalidHereafter,
  }) {
    return invalidHereafter?.call(slot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(BigInt slot)? invalidBefore,
    TResult Function(BigInt slot)? invalidHereafter,
    required TResult orElse(),
  }) {
    if (invalidHereafter != null) {
      return invalidHereafter(slot);
    }
    return orElse();
  }
}

abstract class ParsedSimpleNativeScript_InvalidHereafter
    extends ParsedSimpleNativeScript {
  factory ParsedSimpleNativeScript_InvalidHereafter(
          {required final BigInt slot}) =
      _$ParsedSimpleNativeScript_InvalidHereafterImpl;
  ParsedSimpleNativeScript_InvalidHereafter._() : super._();

  BigInt get slot;
  @JsonKey(ignore: true)
  _$$ParsedSimpleNativeScript_InvalidHereafterImplCopyWith<
          _$ParsedSimpleNativeScript_InvalidHereafterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
