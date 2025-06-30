// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_c_vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedCVote {
  String get voteCastDataHex;
  LedgerSigningPath get witnessPath;

  /// Create a copy of ParsedCVote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedCVoteCopyWith<ParsedCVote> get copyWith =>
      _$ParsedCVoteCopyWithImpl<ParsedCVote>(this as ParsedCVote, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedCVote &&
            (identical(other.voteCastDataHex, voteCastDataHex) ||
                other.voteCastDataHex == voteCastDataHex) &&
            (identical(other.witnessPath, witnessPath) ||
                other.witnessPath == witnessPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voteCastDataHex, witnessPath);

  @override
  String toString() {
    return 'ParsedCVote(voteCastDataHex: $voteCastDataHex, witnessPath: $witnessPath)';
  }
}

/// @nodoc
abstract mixin class $ParsedCVoteCopyWith<$Res> {
  factory $ParsedCVoteCopyWith(
          ParsedCVote value, $Res Function(ParsedCVote) _then) =
      _$ParsedCVoteCopyWithImpl;
  @useResult
  $Res call({String voteCastDataHex, LedgerSigningPath witnessPath});

  $LedgerSigningPathCopyWith<$Res> get witnessPath;
}

/// @nodoc
class _$ParsedCVoteCopyWithImpl<$Res> implements $ParsedCVoteCopyWith<$Res> {
  _$ParsedCVoteCopyWithImpl(this._self, this._then);

  final ParsedCVote _self;
  final $Res Function(ParsedCVote) _then;

  /// Create a copy of ParsedCVote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voteCastDataHex = null,
    Object? witnessPath = null,
  }) {
    return _then(_self.copyWith(
      voteCastDataHex: null == voteCastDataHex
          ? _self.voteCastDataHex
          : voteCastDataHex // ignore: cast_nullable_to_non_nullable
              as String,
      witnessPath: null == witnessPath
          ? _self.witnessPath
          : witnessPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  /// Create a copy of ParsedCVote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get witnessPath {
    return $LedgerSigningPathCopyWith<$Res>(_self.witnessPath, (value) {
      return _then(_self.copyWith(witnessPath: value));
    });
  }
}

/// @nodoc

class _ParsedCVote extends ParsedCVote {
  _ParsedCVote({required this.voteCastDataHex, required this.witnessPath})
      : super._();

  @override
  final String voteCastDataHex;
  @override
  final LedgerSigningPath witnessPath;

  /// Create a copy of ParsedCVote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParsedCVoteCopyWith<_ParsedCVote> get copyWith =>
      __$ParsedCVoteCopyWithImpl<_ParsedCVote>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParsedCVote &&
            (identical(other.voteCastDataHex, voteCastDataHex) ||
                other.voteCastDataHex == voteCastDataHex) &&
            (identical(other.witnessPath, witnessPath) ||
                other.witnessPath == witnessPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voteCastDataHex, witnessPath);

  @override
  String toString() {
    return 'ParsedCVote(voteCastDataHex: $voteCastDataHex, witnessPath: $witnessPath)';
  }
}

/// @nodoc
abstract mixin class _$ParsedCVoteCopyWith<$Res>
    implements $ParsedCVoteCopyWith<$Res> {
  factory _$ParsedCVoteCopyWith(
          _ParsedCVote value, $Res Function(_ParsedCVote) _then) =
      __$ParsedCVoteCopyWithImpl;
  @override
  @useResult
  $Res call({String voteCastDataHex, LedgerSigningPath witnessPath});

  @override
  $LedgerSigningPathCopyWith<$Res> get witnessPath;
}

/// @nodoc
class __$ParsedCVoteCopyWithImpl<$Res> implements _$ParsedCVoteCopyWith<$Res> {
  __$ParsedCVoteCopyWithImpl(this._self, this._then);

  final _ParsedCVote _self;
  final $Res Function(_ParsedCVote) _then;

  /// Create a copy of ParsedCVote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? voteCastDataHex = null,
    Object? witnessPath = null,
  }) {
    return _then(_ParsedCVote(
      voteCastDataHex: null == voteCastDataHex
          ? _self.voteCastDataHex
          : voteCastDataHex // ignore: cast_nullable_to_non_nullable
              as String,
      witnessPath: null == witnessPath
          ? _self.witnessPath
          : witnessPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
    ));
  }

  /// Create a copy of ParsedCVote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get witnessPath {
    return $LedgerSigningPathCopyWith<$Res>(_self.witnessPath, (value) {
      return _then(_self.copyWith(witnessPath: value));
    });
  }
}

// dart format on
