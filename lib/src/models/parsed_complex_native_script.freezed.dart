// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_complex_native_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedComplexNativeScript {
  int get nativeScriptSerializationValue;
  List<ParsedNativeScript> get scripts;

  /// Create a copy of ParsedComplexNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedComplexNativeScriptCopyWith<ParsedComplexNativeScript> get copyWith =>
      _$ParsedComplexNativeScriptCopyWithImpl<ParsedComplexNativeScript>(
          this as ParsedComplexNativeScript, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedComplexNativeScript &&
            (identical(other.nativeScriptSerializationValue,
                    nativeScriptSerializationValue) ||
                other.nativeScriptSerializationValue ==
                    nativeScriptSerializationValue) &&
            const DeepCollectionEquality().equals(other.scripts, scripts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nativeScriptSerializationValue,
      const DeepCollectionEquality().hash(scripts));

  @override
  String toString() {
    return 'ParsedComplexNativeScript(nativeScriptSerializationValue: $nativeScriptSerializationValue, scripts: $scripts)';
  }
}

/// @nodoc
abstract mixin class $ParsedComplexNativeScriptCopyWith<$Res> {
  factory $ParsedComplexNativeScriptCopyWith(ParsedComplexNativeScript value,
          $Res Function(ParsedComplexNativeScript) _then) =
      _$ParsedComplexNativeScriptCopyWithImpl;
  @useResult
  $Res call({List<ParsedNativeScript> scripts});
}

/// @nodoc
class _$ParsedComplexNativeScriptCopyWithImpl<$Res>
    implements $ParsedComplexNativeScriptCopyWith<$Res> {
  _$ParsedComplexNativeScriptCopyWithImpl(this._self, this._then);

  final ParsedComplexNativeScript _self;
  final $Res Function(ParsedComplexNativeScript) _then;

  /// Create a copy of ParsedComplexNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scripts = null,
  }) {
    return _then(_self.copyWith(
      scripts: null == scripts
          ? _self.scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ParsedNativeScript>,
    ));
  }
}

/// @nodoc

class ParsedComplexNativeScript_All extends ParsedComplexNativeScript {
  ParsedComplexNativeScript_All(
      {required final List<ParsedNativeScript> scripts})
      : _scripts = scripts,
        super._();

  final List<ParsedNativeScript> _scripts;
  @override
  List<ParsedNativeScript> get scripts {
    if (_scripts is EqualUnmodifiableListView) return _scripts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scripts);
  }

  /// Create a copy of ParsedComplexNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedComplexNativeScript_AllCopyWith<ParsedComplexNativeScript_All>
      get copyWith => _$ParsedComplexNativeScript_AllCopyWithImpl<
          ParsedComplexNativeScript_All>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedComplexNativeScript_All &&
            const DeepCollectionEquality().equals(other._scripts, _scripts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scripts));

  @override
  String toString() {
    return 'ParsedComplexNativeScript.all(scripts: $scripts)';
  }
}

/// @nodoc
abstract mixin class $ParsedComplexNativeScript_AllCopyWith<$Res>
    implements $ParsedComplexNativeScriptCopyWith<$Res> {
  factory $ParsedComplexNativeScript_AllCopyWith(
          ParsedComplexNativeScript_All value,
          $Res Function(ParsedComplexNativeScript_All) _then) =
      _$ParsedComplexNativeScript_AllCopyWithImpl;
  @override
  @useResult
  $Res call({List<ParsedNativeScript> scripts});
}

/// @nodoc
class _$ParsedComplexNativeScript_AllCopyWithImpl<$Res>
    implements $ParsedComplexNativeScript_AllCopyWith<$Res> {
  _$ParsedComplexNativeScript_AllCopyWithImpl(this._self, this._then);

  final ParsedComplexNativeScript_All _self;
  final $Res Function(ParsedComplexNativeScript_All) _then;

  /// Create a copy of ParsedComplexNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scripts = null,
  }) {
    return _then(ParsedComplexNativeScript_All(
      scripts: null == scripts
          ? _self._scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ParsedNativeScript>,
    ));
  }
}

/// @nodoc

class ParsedComplexNativeScript_Any extends ParsedComplexNativeScript {
  ParsedComplexNativeScript_Any(
      {required final List<ParsedNativeScript> scripts})
      : _scripts = scripts,
        super._();

  final List<ParsedNativeScript> _scripts;
  @override
  List<ParsedNativeScript> get scripts {
    if (_scripts is EqualUnmodifiableListView) return _scripts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scripts);
  }

  /// Create a copy of ParsedComplexNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedComplexNativeScript_AnyCopyWith<ParsedComplexNativeScript_Any>
      get copyWith => _$ParsedComplexNativeScript_AnyCopyWithImpl<
          ParsedComplexNativeScript_Any>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedComplexNativeScript_Any &&
            const DeepCollectionEquality().equals(other._scripts, _scripts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scripts));

  @override
  String toString() {
    return 'ParsedComplexNativeScript.any(scripts: $scripts)';
  }
}

/// @nodoc
abstract mixin class $ParsedComplexNativeScript_AnyCopyWith<$Res>
    implements $ParsedComplexNativeScriptCopyWith<$Res> {
  factory $ParsedComplexNativeScript_AnyCopyWith(
          ParsedComplexNativeScript_Any value,
          $Res Function(ParsedComplexNativeScript_Any) _then) =
      _$ParsedComplexNativeScript_AnyCopyWithImpl;
  @override
  @useResult
  $Res call({List<ParsedNativeScript> scripts});
}

/// @nodoc
class _$ParsedComplexNativeScript_AnyCopyWithImpl<$Res>
    implements $ParsedComplexNativeScript_AnyCopyWith<$Res> {
  _$ParsedComplexNativeScript_AnyCopyWithImpl(this._self, this._then);

  final ParsedComplexNativeScript_Any _self;
  final $Res Function(ParsedComplexNativeScript_Any) _then;

  /// Create a copy of ParsedComplexNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scripts = null,
  }) {
    return _then(ParsedComplexNativeScript_Any(
      scripts: null == scripts
          ? _self._scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ParsedNativeScript>,
    ));
  }
}

/// @nodoc

class ParsedComplexNativeScript_NOfK extends ParsedComplexNativeScript {
  ParsedComplexNativeScript_NOfK(
      {required this.requiredCount,
      required final List<ParsedNativeScript> scripts})
      : _scripts = scripts,
        super._();

  final int requiredCount;
  final List<ParsedNativeScript> _scripts;
  @override
  List<ParsedNativeScript> get scripts {
    if (_scripts is EqualUnmodifiableListView) return _scripts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scripts);
  }

  /// Create a copy of ParsedComplexNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedComplexNativeScript_NOfKCopyWith<ParsedComplexNativeScript_NOfK>
      get copyWith => _$ParsedComplexNativeScript_NOfKCopyWithImpl<
          ParsedComplexNativeScript_NOfK>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedComplexNativeScript_NOfK &&
            (identical(other.requiredCount, requiredCount) ||
                other.requiredCount == requiredCount) &&
            const DeepCollectionEquality().equals(other._scripts, _scripts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requiredCount,
      const DeepCollectionEquality().hash(_scripts));

  @override
  String toString() {
    return 'ParsedComplexNativeScript.nOfK(requiredCount: $requiredCount, scripts: $scripts)';
  }
}

/// @nodoc
abstract mixin class $ParsedComplexNativeScript_NOfKCopyWith<$Res>
    implements $ParsedComplexNativeScriptCopyWith<$Res> {
  factory $ParsedComplexNativeScript_NOfKCopyWith(
          ParsedComplexNativeScript_NOfK value,
          $Res Function(ParsedComplexNativeScript_NOfK) _then) =
      _$ParsedComplexNativeScript_NOfKCopyWithImpl;
  @override
  @useResult
  $Res call({int requiredCount, List<ParsedNativeScript> scripts});
}

/// @nodoc
class _$ParsedComplexNativeScript_NOfKCopyWithImpl<$Res>
    implements $ParsedComplexNativeScript_NOfKCopyWith<$Res> {
  _$ParsedComplexNativeScript_NOfKCopyWithImpl(this._self, this._then);

  final ParsedComplexNativeScript_NOfK _self;
  final $Res Function(ParsedComplexNativeScript_NOfK) _then;

  /// Create a copy of ParsedComplexNativeScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requiredCount = null,
    Object? scripts = null,
  }) {
    return _then(ParsedComplexNativeScript_NOfK(
      requiredCount: null == requiredCount
          ? _self.requiredCount
          : requiredCount // ignore: cast_nullable_to_non_nullable
              as int,
      scripts: null == scripts
          ? _self._scripts
          : scripts // ignore: cast_nullable_to_non_nullable
              as List<ParsedNativeScript>,
    ));
  }
}

// dart format on
