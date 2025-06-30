// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_c_vote_delegation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedCVoteDelegation {
  int get cVoteDelegationValue;
  int get weight;

  /// Create a copy of ParsedCVoteDelegation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedCVoteDelegationCopyWith<ParsedCVoteDelegation> get copyWith =>
      _$ParsedCVoteDelegationCopyWithImpl<ParsedCVoteDelegation>(
          this as ParsedCVoteDelegation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedCVoteDelegation &&
            (identical(other.cVoteDelegationValue, cVoteDelegationValue) ||
                other.cVoteDelegationValue == cVoteDelegationValue) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cVoteDelegationValue, weight);

  @override
  String toString() {
    return 'ParsedCVoteDelegation(cVoteDelegationValue: $cVoteDelegationValue, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class $ParsedCVoteDelegationCopyWith<$Res> {
  factory $ParsedCVoteDelegationCopyWith(ParsedCVoteDelegation value,
          $Res Function(ParsedCVoteDelegation) _then) =
      _$ParsedCVoteDelegationCopyWithImpl;
  @useResult
  $Res call({int weight});
}

/// @nodoc
class _$ParsedCVoteDelegationCopyWithImpl<$Res>
    implements $ParsedCVoteDelegationCopyWith<$Res> {
  _$ParsedCVoteDelegationCopyWithImpl(this._self, this._then);

  final ParsedCVoteDelegation _self;
  final $Res Function(ParsedCVoteDelegation) _then;

  /// Create a copy of ParsedCVoteDelegation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
  }) {
    return _then(_self.copyWith(
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class PathDelegation extends ParsedCVoteDelegation {
  PathDelegation({required this.voteKeyPath, required this.weight}) : super._();

  final LedgerSigningPath voteKeyPath;
  @override
  final int weight;

  /// Create a copy of ParsedCVoteDelegation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PathDelegationCopyWith<PathDelegation> get copyWith =>
      _$PathDelegationCopyWithImpl<PathDelegation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PathDelegation &&
            (identical(other.voteKeyPath, voteKeyPath) ||
                other.voteKeyPath == voteKeyPath) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voteKeyPath, weight);

  @override
  String toString() {
    return 'ParsedCVoteDelegation.path(voteKeyPath: $voteKeyPath, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class $PathDelegationCopyWith<$Res>
    implements $ParsedCVoteDelegationCopyWith<$Res> {
  factory $PathDelegationCopyWith(
          PathDelegation value, $Res Function(PathDelegation) _then) =
      _$PathDelegationCopyWithImpl;
  @override
  @useResult
  $Res call({LedgerSigningPath voteKeyPath, int weight});

  $LedgerSigningPathCopyWith<$Res> get voteKeyPath;
}

/// @nodoc
class _$PathDelegationCopyWithImpl<$Res>
    implements $PathDelegationCopyWith<$Res> {
  _$PathDelegationCopyWithImpl(this._self, this._then);

  final PathDelegation _self;
  final $Res Function(PathDelegation) _then;

  /// Create a copy of ParsedCVoteDelegation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? voteKeyPath = null,
    Object? weight = null,
  }) {
    return _then(PathDelegation(
      voteKeyPath: null == voteKeyPath
          ? _self.voteKeyPath
          : voteKeyPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ParsedCVoteDelegation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get voteKeyPath {
    return $LedgerSigningPathCopyWith<$Res>(_self.voteKeyPath, (value) {
      return _then(_self.copyWith(voteKeyPath: value));
    });
  }
}

/// @nodoc

class KeyDelegation extends ParsedCVoteDelegation {
  KeyDelegation({required this.voteKey, required this.weight}) : super._();

  final String voteKey;
  @override
  final int weight;

  /// Create a copy of ParsedCVoteDelegation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyDelegationCopyWith<KeyDelegation> get copyWith =>
      _$KeyDelegationCopyWithImpl<KeyDelegation>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyDelegation &&
            (identical(other.voteKey, voteKey) || other.voteKey == voteKey) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voteKey, weight);

  @override
  String toString() {
    return 'ParsedCVoteDelegation.key(voteKey: $voteKey, weight: $weight)';
  }
}

/// @nodoc
abstract mixin class $KeyDelegationCopyWith<$Res>
    implements $ParsedCVoteDelegationCopyWith<$Res> {
  factory $KeyDelegationCopyWith(
          KeyDelegation value, $Res Function(KeyDelegation) _then) =
      _$KeyDelegationCopyWithImpl;
  @override
  @useResult
  $Res call({String voteKey, int weight});
}

/// @nodoc
class _$KeyDelegationCopyWithImpl<$Res>
    implements $KeyDelegationCopyWith<$Res> {
  _$KeyDelegationCopyWithImpl(this._self, this._then);

  final KeyDelegation _self;
  final $Res Function(KeyDelegation) _then;

  /// Create a copy of ParsedCVoteDelegation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? voteKey = null,
    Object? weight = null,
  }) {
    return _then(KeyDelegation(
      voteKey: null == voteKey
          ? _self.voteKey
          : voteKey // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
