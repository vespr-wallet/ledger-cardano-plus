// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flags.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Flags {
  bool get isDebug;
  bool get isAppXS;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FlagsCopyWith<Flags> get copyWith =>
      _$FlagsCopyWithImpl<Flags>(this as Flags, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Flags &&
            (identical(other.isDebug, isDebug) || other.isDebug == isDebug) &&
            (identical(other.isAppXS, isAppXS) || other.isAppXS == isAppXS));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDebug, isAppXS);

  @override
  String toString() {
    return 'Flags(isDebug: $isDebug, isAppXS: $isAppXS)';
  }
}

/// @nodoc
abstract mixin class $FlagsCopyWith<$Res> {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) _then) =
      _$FlagsCopyWithImpl;
  @useResult
  $Res call({bool isDebug, bool isAppXS});
}

/// @nodoc
class _$FlagsCopyWithImpl<$Res> implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._self, this._then);

  final Flags _self;
  final $Res Function(Flags) _then;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDebug = null,
    Object? isAppXS = null,
  }) {
    return _then(_self.copyWith(
      isDebug: null == isDebug
          ? _self.isDebug
          : isDebug // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppXS: null == isAppXS
          ? _self.isAppXS
          : isAppXS // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _Flags extends Flags {
  const _Flags({required this.isDebug, required this.isAppXS}) : super._();

  @override
  final bool isDebug;
  @override
  final bool isAppXS;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FlagsCopyWith<_Flags> get copyWith =>
      __$FlagsCopyWithImpl<_Flags>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Flags &&
            (identical(other.isDebug, isDebug) || other.isDebug == isDebug) &&
            (identical(other.isAppXS, isAppXS) || other.isAppXS == isAppXS));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDebug, isAppXS);

  @override
  String toString() {
    return 'Flags(isDebug: $isDebug, isAppXS: $isAppXS)';
  }
}

/// @nodoc
abstract mixin class _$FlagsCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$FlagsCopyWith(_Flags value, $Res Function(_Flags) _then) =
      __$FlagsCopyWithImpl;
  @override
  @useResult
  $Res call({bool isDebug, bool isAppXS});
}

/// @nodoc
class __$FlagsCopyWithImpl<$Res> implements _$FlagsCopyWith<$Res> {
  __$FlagsCopyWithImpl(this._self, this._then);

  final _Flags _self;
  final $Res Function(_Flags) _then;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDebug = null,
    Object? isAppXS = null,
  }) {
    return _then(_Flags(
      isDebug: null == isDebug
          ? _self.isDebug
          : isDebug // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppXS: null == isAppXS
          ? _self.isAppXS
          : isAppXS // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
