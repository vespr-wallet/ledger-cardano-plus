// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_voter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedVoter {
  int get voterValue;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedVoter &&
            (identical(other.voterValue, voterValue) ||
                other.voterValue == voterValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voterValue);

  @override
  String toString() {
    return 'ParsedVoter(voterValue: $voterValue)';
  }
}

/// @nodoc
class $ParsedVoterCopyWith<$Res> {
  $ParsedVoterCopyWith(ParsedVoter _, $Res Function(ParsedVoter) __);
}

/// @nodoc

class CommitteeKeyHash extends ParsedVoter {
  CommitteeKeyHash({required this.keyHashHex}) : super._();

  final String keyHashHex;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommitteeKeyHashCopyWith<CommitteeKeyHash> get copyWith =>
      _$CommitteeKeyHashCopyWithImpl<CommitteeKeyHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommitteeKeyHash &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @override
  String toString() {
    return 'ParsedVoter.committeeKeyHash(keyHashHex: $keyHashHex)';
  }
}

/// @nodoc
abstract mixin class $CommitteeKeyHashCopyWith<$Res>
    implements $ParsedVoterCopyWith<$Res> {
  factory $CommitteeKeyHashCopyWith(
          CommitteeKeyHash value, $Res Function(CommitteeKeyHash) _then) =
      _$CommitteeKeyHashCopyWithImpl;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class _$CommitteeKeyHashCopyWithImpl<$Res>
    implements $CommitteeKeyHashCopyWith<$Res> {
  _$CommitteeKeyHashCopyWithImpl(this._self, this._then);

  final CommitteeKeyHash _self;
  final $Res Function(CommitteeKeyHash) _then;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(CommitteeKeyHash(
      keyHashHex: null == keyHashHex
          ? _self.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CommitteeKeyPath extends ParsedVoter {
  CommitteeKeyPath({required this.keyPath}) : super._();

  final LedgerSigningPath keyPath;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommitteeKeyPathCopyWith<CommitteeKeyPath> get copyWith =>
      _$CommitteeKeyPathCopyWithImpl<CommitteeKeyPath>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommitteeKeyPath &&
            (identical(other.keyPath, keyPath) || other.keyPath == keyPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyPath);

  @override
  String toString() {
    return 'ParsedVoter.committeeKeyPath(keyPath: $keyPath)';
  }
}

/// @nodoc
abstract mixin class $CommitteeKeyPathCopyWith<$Res>
    implements $ParsedVoterCopyWith<$Res> {
  factory $CommitteeKeyPathCopyWith(
          CommitteeKeyPath value, $Res Function(CommitteeKeyPath) _then) =
      _$CommitteeKeyPathCopyWithImpl;
  @useResult
  $Res call({LedgerSigningPath keyPath});

  $LedgerSigningPathCopyWith<$Res> get keyPath;
}

/// @nodoc
class _$CommitteeKeyPathCopyWithImpl<$Res>
    implements $CommitteeKeyPathCopyWith<$Res> {
  _$CommitteeKeyPathCopyWithImpl(this._self, this._then);

  final CommitteeKeyPath _self;
  final $Res Function(CommitteeKeyPath) _then;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyPath = null,
  }) {
    return _then(CommitteeKeyPath(
      keyPath: null == keyPath
          ? _self.keyPath
          : keyPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get keyPath {
    return $LedgerSigningPathCopyWith<$Res>(_self.keyPath, (value) {
      return _then(_self.copyWith(keyPath: value));
    });
  }
}

/// @nodoc

class CommitteeScriptHash extends ParsedVoter {
  CommitteeScriptHash({required this.scriptHashHex}) : super._();

  final String scriptHashHex;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommitteeScriptHashCopyWith<CommitteeScriptHash> get copyWith =>
      _$CommitteeScriptHashCopyWithImpl<CommitteeScriptHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommitteeScriptHash &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scriptHashHex);

  @override
  String toString() {
    return 'ParsedVoter.committeeScriptHash(scriptHashHex: $scriptHashHex)';
  }
}

/// @nodoc
abstract mixin class $CommitteeScriptHashCopyWith<$Res>
    implements $ParsedVoterCopyWith<$Res> {
  factory $CommitteeScriptHashCopyWith(
          CommitteeScriptHash value, $Res Function(CommitteeScriptHash) _then) =
      _$CommitteeScriptHashCopyWithImpl;
  @useResult
  $Res call({String scriptHashHex});
}

/// @nodoc
class _$CommitteeScriptHashCopyWithImpl<$Res>
    implements $CommitteeScriptHashCopyWith<$Res> {
  _$CommitteeScriptHashCopyWithImpl(this._self, this._then);

  final CommitteeScriptHash _self;
  final $Res Function(CommitteeScriptHash) _then;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scriptHashHex = null,
  }) {
    return _then(CommitteeScriptHash(
      scriptHashHex: null == scriptHashHex
          ? _self.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DrepKeyHash extends ParsedVoter {
  DrepKeyHash({required this.keyHashHex}) : super._();

  final String keyHashHex;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DrepKeyHashCopyWith<DrepKeyHash> get copyWith =>
      _$DrepKeyHashCopyWithImpl<DrepKeyHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DrepKeyHash &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @override
  String toString() {
    return 'ParsedVoter.drepKeyHash(keyHashHex: $keyHashHex)';
  }
}

/// @nodoc
abstract mixin class $DrepKeyHashCopyWith<$Res>
    implements $ParsedVoterCopyWith<$Res> {
  factory $DrepKeyHashCopyWith(
          DrepKeyHash value, $Res Function(DrepKeyHash) _then) =
      _$DrepKeyHashCopyWithImpl;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class _$DrepKeyHashCopyWithImpl<$Res> implements $DrepKeyHashCopyWith<$Res> {
  _$DrepKeyHashCopyWithImpl(this._self, this._then);

  final DrepKeyHash _self;
  final $Res Function(DrepKeyHash) _then;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(DrepKeyHash(
      keyHashHex: null == keyHashHex
          ? _self.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DrepKeyPath extends ParsedVoter {
  DrepKeyPath({required this.keyPath}) : super._();

  final LedgerSigningPath keyPath;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DrepKeyPathCopyWith<DrepKeyPath> get copyWith =>
      _$DrepKeyPathCopyWithImpl<DrepKeyPath>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DrepKeyPath &&
            (identical(other.keyPath, keyPath) || other.keyPath == keyPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyPath);

  @override
  String toString() {
    return 'ParsedVoter.drepKeyPath(keyPath: $keyPath)';
  }
}

/// @nodoc
abstract mixin class $DrepKeyPathCopyWith<$Res>
    implements $ParsedVoterCopyWith<$Res> {
  factory $DrepKeyPathCopyWith(
          DrepKeyPath value, $Res Function(DrepKeyPath) _then) =
      _$DrepKeyPathCopyWithImpl;
  @useResult
  $Res call({LedgerSigningPath keyPath});

  $LedgerSigningPathCopyWith<$Res> get keyPath;
}

/// @nodoc
class _$DrepKeyPathCopyWithImpl<$Res> implements $DrepKeyPathCopyWith<$Res> {
  _$DrepKeyPathCopyWithImpl(this._self, this._then);

  final DrepKeyPath _self;
  final $Res Function(DrepKeyPath) _then;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyPath = null,
  }) {
    return _then(DrepKeyPath(
      keyPath: null == keyPath
          ? _self.keyPath
          : keyPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get keyPath {
    return $LedgerSigningPathCopyWith<$Res>(_self.keyPath, (value) {
      return _then(_self.copyWith(keyPath: value));
    });
  }
}

/// @nodoc

class DrepScriptHash extends ParsedVoter {
  DrepScriptHash({required this.scriptHashHex}) : super._();

  final String scriptHashHex;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DrepScriptHashCopyWith<DrepScriptHash> get copyWith =>
      _$DrepScriptHashCopyWithImpl<DrepScriptHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DrepScriptHash &&
            (identical(other.scriptHashHex, scriptHashHex) ||
                other.scriptHashHex == scriptHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scriptHashHex);

  @override
  String toString() {
    return 'ParsedVoter.drepScriptHash(scriptHashHex: $scriptHashHex)';
  }
}

/// @nodoc
abstract mixin class $DrepScriptHashCopyWith<$Res>
    implements $ParsedVoterCopyWith<$Res> {
  factory $DrepScriptHashCopyWith(
          DrepScriptHash value, $Res Function(DrepScriptHash) _then) =
      _$DrepScriptHashCopyWithImpl;
  @useResult
  $Res call({String scriptHashHex});
}

/// @nodoc
class _$DrepScriptHashCopyWithImpl<$Res>
    implements $DrepScriptHashCopyWith<$Res> {
  _$DrepScriptHashCopyWithImpl(this._self, this._then);

  final DrepScriptHash _self;
  final $Res Function(DrepScriptHash) _then;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scriptHashHex = null,
  }) {
    return _then(DrepScriptHash(
      scriptHashHex: null == scriptHashHex
          ? _self.scriptHashHex
          : scriptHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class StakePoolKeyHash extends ParsedVoter {
  StakePoolKeyHash({required this.keyHashHex}) : super._();

  final String keyHashHex;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakePoolKeyHashCopyWith<StakePoolKeyHash> get copyWith =>
      _$StakePoolKeyHashCopyWithImpl<StakePoolKeyHash>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakePoolKeyHash &&
            (identical(other.keyHashHex, keyHashHex) ||
                other.keyHashHex == keyHashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyHashHex);

  @override
  String toString() {
    return 'ParsedVoter.stakePoolKeyHash(keyHashHex: $keyHashHex)';
  }
}

/// @nodoc
abstract mixin class $StakePoolKeyHashCopyWith<$Res>
    implements $ParsedVoterCopyWith<$Res> {
  factory $StakePoolKeyHashCopyWith(
          StakePoolKeyHash value, $Res Function(StakePoolKeyHash) _then) =
      _$StakePoolKeyHashCopyWithImpl;
  @useResult
  $Res call({String keyHashHex});
}

/// @nodoc
class _$StakePoolKeyHashCopyWithImpl<$Res>
    implements $StakePoolKeyHashCopyWith<$Res> {
  _$StakePoolKeyHashCopyWithImpl(this._self, this._then);

  final StakePoolKeyHash _self;
  final $Res Function(StakePoolKeyHash) _then;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyHashHex = null,
  }) {
    return _then(StakePoolKeyHash(
      keyHashHex: null == keyHashHex
          ? _self.keyHashHex
          : keyHashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class StakePoolKeyPath extends ParsedVoter {
  StakePoolKeyPath({required this.keyPath}) : super._();

  final LedgerSigningPath keyPath;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StakePoolKeyPathCopyWith<StakePoolKeyPath> get copyWith =>
      _$StakePoolKeyPathCopyWithImpl<StakePoolKeyPath>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StakePoolKeyPath &&
            (identical(other.keyPath, keyPath) || other.keyPath == keyPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyPath);

  @override
  String toString() {
    return 'ParsedVoter.stakePoolKeyPath(keyPath: $keyPath)';
  }
}

/// @nodoc
abstract mixin class $StakePoolKeyPathCopyWith<$Res>
    implements $ParsedVoterCopyWith<$Res> {
  factory $StakePoolKeyPathCopyWith(
          StakePoolKeyPath value, $Res Function(StakePoolKeyPath) _then) =
      _$StakePoolKeyPathCopyWithImpl;
  @useResult
  $Res call({LedgerSigningPath keyPath});

  $LedgerSigningPathCopyWith<$Res> get keyPath;
}

/// @nodoc
class _$StakePoolKeyPathCopyWithImpl<$Res>
    implements $StakePoolKeyPathCopyWith<$Res> {
  _$StakePoolKeyPathCopyWithImpl(this._self, this._then);

  final StakePoolKeyPath _self;
  final $Res Function(StakePoolKeyPath) _then;

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyPath = null,
  }) {
    return _then(StakePoolKeyPath(
      keyPath: null == keyPath
          ? _self.keyPath
          : keyPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  /// Create a copy of ParsedVoter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get keyPath {
    return $LedgerSigningPathCopyWith<$Res>(_self.keyPath, (value) {
      return _then(_self.copyWith(keyPath: value));
    });
  }
}

// dart format on
