// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'script_data_hash.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScriptDataHash {
  String get hexString;

  /// Create a copy of ScriptDataHash
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScriptDataHashCopyWith<ScriptDataHash> get copyWith =>
      _$ScriptDataHashCopyWithImpl<ScriptDataHash>(
          this as ScriptDataHash, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScriptDataHash &&
            (identical(other.hexString, hexString) ||
                other.hexString == hexString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hexString);

  @override
  String toString() {
    return 'ScriptDataHash(hexString: $hexString)';
  }
}

/// @nodoc
abstract mixin class $ScriptDataHashCopyWith<$Res> {
  factory $ScriptDataHashCopyWith(
          ScriptDataHash value, $Res Function(ScriptDataHash) _then) =
      _$ScriptDataHashCopyWithImpl;
  @useResult
  $Res call({String hexString});
}

/// @nodoc
class _$ScriptDataHashCopyWithImpl<$Res>
    implements $ScriptDataHashCopyWith<$Res> {
  _$ScriptDataHashCopyWithImpl(this._self, this._then);

  final ScriptDataHash _self;
  final $Res Function(ScriptDataHash) _then;

  /// Create a copy of ScriptDataHash
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hexString = null,
  }) {
    return _then(_self.copyWith(
      hexString: null == hexString
          ? _self.hexString
          : hexString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ScriptDataHash extends ScriptDataHash {
  _ScriptDataHash({required this.hexString}) : super._();

  @override
  final String hexString;

  /// Create a copy of ScriptDataHash
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScriptDataHashCopyWith<_ScriptDataHash> get copyWith =>
      __$ScriptDataHashCopyWithImpl<_ScriptDataHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScriptDataHash &&
            (identical(other.hexString, hexString) ||
                other.hexString == hexString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hexString);

  @override
  String toString() {
    return 'ScriptDataHash(hexString: $hexString)';
  }
}

/// @nodoc
abstract mixin class _$ScriptDataHashCopyWith<$Res>
    implements $ScriptDataHashCopyWith<$Res> {
  factory _$ScriptDataHashCopyWith(
          _ScriptDataHash value, $Res Function(_ScriptDataHash) _then) =
      __$ScriptDataHashCopyWithImpl;
  @override
  @useResult
  $Res call({String hexString});
}

/// @nodoc
class __$ScriptDataHashCopyWithImpl<$Res>
    implements _$ScriptDataHashCopyWith<$Res> {
  __$ScriptDataHashCopyWithImpl(this._self, this._then);

  final _ScriptDataHash _self;
  final $Res Function(_ScriptDataHash) _then;

  /// Create a copy of ScriptDataHash
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hexString = null,
  }) {
    return _then(_ScriptDataHash(
      hexString: null == hexString
          ? _self.hexString
          : hexString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
