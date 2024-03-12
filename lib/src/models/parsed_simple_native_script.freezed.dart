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
    required TResult Function(int slot) invalidBefore,
    required TResult Function(int slot) invalidHereafter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(int slot)? invalidBefore,
    TResult? Function(int slot)? invalidHereafter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(int slot)? invalidBefore,
    TResult Function(int slot)? invalidHereafter,
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
abstract class _$$PubKeyDeviceOwnedImplCopyWith<$Res> {
  factory _$$PubKeyDeviceOwnedImplCopyWith(_$PubKeyDeviceOwnedImpl value,
          $Res Function(_$PubKeyDeviceOwnedImpl) then) =
      __$$PubKeyDeviceOwnedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> path});
}

/// @nodoc
class __$$PubKeyDeviceOwnedImplCopyWithImpl<$Res>
    extends _$ParsedSimpleNativeScriptCopyWithImpl<$Res,
        _$PubKeyDeviceOwnedImpl>
    implements _$$PubKeyDeviceOwnedImplCopyWith<$Res> {
  __$$PubKeyDeviceOwnedImplCopyWithImpl(_$PubKeyDeviceOwnedImpl _value,
      $Res Function(_$PubKeyDeviceOwnedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$PubKeyDeviceOwnedImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$PubKeyDeviceOwnedImpl implements _PubKeyDeviceOwned {
  const _$PubKeyDeviceOwnedImpl({required final List<int> path}) : _path = path;

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
            other is _$PubKeyDeviceOwnedImpl &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_path));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PubKeyDeviceOwnedImplCopyWith<_$PubKeyDeviceOwnedImpl> get copyWith =>
      __$$PubKeyDeviceOwnedImplCopyWithImpl<_$PubKeyDeviceOwnedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) pubKeyDeviceOwned,
    required TResult Function(String keyHashHex) pubKeyThirdParty,
    required TResult Function(int slot) invalidBefore,
    required TResult Function(int slot) invalidHereafter,
  }) {
    return pubKeyDeviceOwned(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(int slot)? invalidBefore,
    TResult? Function(int slot)? invalidHereafter,
  }) {
    return pubKeyDeviceOwned?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(int slot)? invalidBefore,
    TResult Function(int slot)? invalidHereafter,
    required TResult orElse(),
  }) {
    if (pubKeyDeviceOwned != null) {
      return pubKeyDeviceOwned(path);
    }
    return orElse();
  }
}

abstract class _PubKeyDeviceOwned implements ParsedSimpleNativeScript {
  const factory _PubKeyDeviceOwned({required final List<int> path}) =
      _$PubKeyDeviceOwnedImpl;

  List<int> get path;
  @JsonKey(ignore: true)
  _$$PubKeyDeviceOwnedImplCopyWith<_$PubKeyDeviceOwnedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PubKeyThirdPartyImplCopyWith<$Res> {
  factory _$$PubKeyThirdPartyImplCopyWith(_$PubKeyThirdPartyImpl value,
          $Res Function(_$PubKeyThirdPartyImpl) then) =
      __$$PubKeyThirdPartyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class __$$PubKeyThirdPartyImplCopyWithImpl<$Res>
    extends _$ParsedSimpleNativeScriptCopyWithImpl<$Res, _$PubKeyThirdPartyImpl>
    implements _$$PubKeyThirdPartyImplCopyWith<$Res> {
  __$$PubKeyThirdPartyImplCopyWithImpl(_$PubKeyThirdPartyImpl _value,
      $Res Function(_$PubKeyThirdPartyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(_$PubKeyThirdPartyImpl(
      keyHashHex: null == keyHashHex
          ? _value.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PubKeyThirdPartyImpl implements _PubKeyThirdParty {
  const _$PubKeyThirdPartyImpl({required this.keyHashHex});

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
            other is _$PubKeyThirdPartyImpl &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PubKeyThirdPartyImplCopyWith<_$PubKeyThirdPartyImpl> get copyWith =>
      __$$PubKeyThirdPartyImplCopyWithImpl<_$PubKeyThirdPartyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) pubKeyDeviceOwned,
    required TResult Function(String keyHashHex) pubKeyThirdParty,
    required TResult Function(int slot) invalidBefore,
    required TResult Function(int slot) invalidHereafter,
  }) {
    return pubKeyThirdParty(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(int slot)? invalidBefore,
    TResult? Function(int slot)? invalidHereafter,
  }) {
    return pubKeyThirdParty?.call(keyHashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(int slot)? invalidBefore,
    TResult Function(int slot)? invalidHereafter,
    required TResult orElse(),
  }) {
    if (pubKeyThirdParty != null) {
      return pubKeyThirdParty(keyHashHex);
    }
    return orElse();
  }
}

abstract class _PubKeyThirdParty implements ParsedSimpleNativeScript {
  const factory _PubKeyThirdParty({required final String keyHashHex}) =
      _$PubKeyThirdPartyImpl;

  String get keyHashHex;
  @JsonKey(ignore: true)
  _$$PubKeyThirdPartyImplCopyWith<_$PubKeyThirdPartyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidBeforeImplCopyWith<$Res> {
  factory _$$InvalidBeforeImplCopyWith(
          _$InvalidBeforeImpl value, $Res Function(_$InvalidBeforeImpl) then) =
      __$$InvalidBeforeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int slot});
}

/// @nodoc
class __$$InvalidBeforeImplCopyWithImpl<$Res>
    extends _$ParsedSimpleNativeScriptCopyWithImpl<$Res, _$InvalidBeforeImpl>
    implements _$$InvalidBeforeImplCopyWith<$Res> {
  __$$InvalidBeforeImplCopyWithImpl(
      _$InvalidBeforeImpl _value, $Res Function(_$InvalidBeforeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
  }) {
    return _then(_$InvalidBeforeImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InvalidBeforeImpl implements _InvalidBefore {
  const _$InvalidBeforeImpl({required this.slot});

  @override
  final int slot;

  @override
  String toString() {
    return 'ParsedSimpleNativeScript.invalidBefore(slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidBeforeImpl &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidBeforeImplCopyWith<_$InvalidBeforeImpl> get copyWith =>
      __$$InvalidBeforeImplCopyWithImpl<_$InvalidBeforeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) pubKeyDeviceOwned,
    required TResult Function(String keyHashHex) pubKeyThirdParty,
    required TResult Function(int slot) invalidBefore,
    required TResult Function(int slot) invalidHereafter,
  }) {
    return invalidBefore(slot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(int slot)? invalidBefore,
    TResult? Function(int slot)? invalidHereafter,
  }) {
    return invalidBefore?.call(slot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(int slot)? invalidBefore,
    TResult Function(int slot)? invalidHereafter,
    required TResult orElse(),
  }) {
    if (invalidBefore != null) {
      return invalidBefore(slot);
    }
    return orElse();
  }
}

abstract class _InvalidBefore implements ParsedSimpleNativeScript {
  const factory _InvalidBefore({required final int slot}) = _$InvalidBeforeImpl;

  int get slot;
  @JsonKey(ignore: true)
  _$$InvalidBeforeImplCopyWith<_$InvalidBeforeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidHereafterImplCopyWith<$Res> {
  factory _$$InvalidHereafterImplCopyWith(_$InvalidHereafterImpl value,
          $Res Function(_$InvalidHereafterImpl) then) =
      __$$InvalidHereafterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int slot});
}

/// @nodoc
class __$$InvalidHereafterImplCopyWithImpl<$Res>
    extends _$ParsedSimpleNativeScriptCopyWithImpl<$Res, _$InvalidHereafterImpl>
    implements _$$InvalidHereafterImplCopyWith<$Res> {
  __$$InvalidHereafterImplCopyWithImpl(_$InvalidHereafterImpl _value,
      $Res Function(_$InvalidHereafterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
  }) {
    return _then(_$InvalidHereafterImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InvalidHereafterImpl implements _InvalidHereafter {
  const _$InvalidHereafterImpl({required this.slot});

  @override
  final int slot;

  @override
  String toString() {
    return 'ParsedSimpleNativeScript.invalidHereafter(slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidHereafterImpl &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidHereafterImplCopyWith<_$InvalidHereafterImpl> get copyWith =>
      __$$InvalidHereafterImplCopyWithImpl<_$InvalidHereafterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> path) pubKeyDeviceOwned,
    required TResult Function(String keyHashHex) pubKeyThirdParty,
    required TResult Function(int slot) invalidBefore,
    required TResult Function(int slot) invalidHereafter,
  }) {
    return invalidHereafter(slot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> path)? pubKeyDeviceOwned,
    TResult? Function(String keyHashHex)? pubKeyThirdParty,
    TResult? Function(int slot)? invalidBefore,
    TResult? Function(int slot)? invalidHereafter,
  }) {
    return invalidHereafter?.call(slot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> path)? pubKeyDeviceOwned,
    TResult Function(String keyHashHex)? pubKeyThirdParty,
    TResult Function(int slot)? invalidBefore,
    TResult Function(int slot)? invalidHereafter,
    required TResult orElse(),
  }) {
    if (invalidHereafter != null) {
      return invalidHereafter(slot);
    }
    return orElse();
  }
}

abstract class _InvalidHereafter implements ParsedSimpleNativeScript {
  const factory _InvalidHereafter({required final int slot}) =
      _$InvalidHereafterImpl;

  int get slot;
  @JsonKey(ignore: true)
  _$$InvalidHereafterImplCopyWith<_$InvalidHereafterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
