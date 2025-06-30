// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'witness.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Witness {
  LedgerSigningPath get path;
  String get witnessSignatureHex;

  /// Create a copy of Witness
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WitnessCopyWith<Witness> get copyWith =>
      _$WitnessCopyWithImpl<Witness>(this as Witness, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Witness &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.witnessSignatureHex, witnessSignatureHex) ||
                other.witnessSignatureHex == witnessSignatureHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, witnessSignatureHex);

  @override
  String toString() {
    return 'Witness(path: $path, witnessSignatureHex: $witnessSignatureHex)';
  }
}

/// @nodoc
abstract mixin class $WitnessCopyWith<$Res> {
  factory $WitnessCopyWith(Witness value, $Res Function(Witness) _then) =
      _$WitnessCopyWithImpl;
  @useResult
  $Res call({LedgerSigningPath path, String witnessSignatureHex});

  $LedgerSigningPathCopyWith<$Res> get path;
}

/// @nodoc
class _$WitnessCopyWithImpl<$Res> implements $WitnessCopyWith<$Res> {
  _$WitnessCopyWithImpl(this._self, this._then);

  final Witness _self;
  final $Res Function(Witness) _then;

  /// Create a copy of Witness
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? witnessSignatureHex = null,
  }) {
    return _then(_self.copyWith(
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
      witnessSignatureHex: null == witnessSignatureHex
          ? _self.witnessSignatureHex
          : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Witness
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get path {
    return $LedgerSigningPathCopyWith<$Res>(_self.path, (value) {
      return _then(_self.copyWith(path: value));
    });
  }
}

/// @nodoc

class _Witness extends Witness {
  _Witness({required this.path, required this.witnessSignatureHex}) : super._();

  @override
  final LedgerSigningPath path;
  @override
  final String witnessSignatureHex;

  /// Create a copy of Witness
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WitnessCopyWith<_Witness> get copyWith =>
      __$WitnessCopyWithImpl<_Witness>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Witness &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.witnessSignatureHex, witnessSignatureHex) ||
                other.witnessSignatureHex == witnessSignatureHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, witnessSignatureHex);

  @override
  String toString() {
    return 'Witness(path: $path, witnessSignatureHex: $witnessSignatureHex)';
  }
}

/// @nodoc
abstract mixin class _$WitnessCopyWith<$Res> implements $WitnessCopyWith<$Res> {
  factory _$WitnessCopyWith(_Witness value, $Res Function(_Witness) _then) =
      __$WitnessCopyWithImpl;
  @override
  @useResult
  $Res call({LedgerSigningPath path, String witnessSignatureHex});

  @override
  $LedgerSigningPathCopyWith<$Res> get path;
}

/// @nodoc
class __$WitnessCopyWithImpl<$Res> implements _$WitnessCopyWith<$Res> {
  __$WitnessCopyWithImpl(this._self, this._then);

  final _Witness _self;
  final $Res Function(_Witness) _then;

  /// Create a copy of Witness
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? path = null,
    Object? witnessSignatureHex = null,
  }) {
    return _then(_Witness(
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
      witnessSignatureHex: null == witnessSignatureHex
          ? _self.witnessSignatureHex
          : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Witness
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get path {
    return $LedgerSigningPathCopyWith<$Res>(_self.path, (value) {
      return _then(_self.copyWith(path: value));
    });
  }
}

// dart format on
