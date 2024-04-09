// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_voter_votes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedVoterVotes {
  ParsedVoter get voter => throw _privateConstructorUsedError;
  List<ParsedVote> get votes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedVoterVotesCopyWith<ParsedVoterVotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedVoterVotesCopyWith<$Res> {
  factory $ParsedVoterVotesCopyWith(
          ParsedVoterVotes value, $Res Function(ParsedVoterVotes) then) =
      _$ParsedVoterVotesCopyWithImpl<$Res, ParsedVoterVotes>;
  @useResult
  $Res call({ParsedVoter voter, List<ParsedVote> votes});

  $ParsedVoterCopyWith<$Res> get voter;
}

/// @nodoc
class _$ParsedVoterVotesCopyWithImpl<$Res, $Val extends ParsedVoterVotes>
    implements $ParsedVoterVotesCopyWith<$Res> {
  _$ParsedVoterVotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voter = null,
    Object? votes = null,
  }) {
    return _then(_value.copyWith(
      voter: null == voter
          ? _value.voter
          : voter // ignore: cast_nullable_to_non_nullable
              as ParsedVoter,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as List<ParsedVote>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedVoterCopyWith<$Res> get voter {
    return $ParsedVoterCopyWith<$Res>(_value.voter, (value) {
      return _then(_value.copyWith(voter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedVoterVotesImplCopyWith<$Res>
    implements $ParsedVoterVotesCopyWith<$Res> {
  factory _$$ParsedVoterVotesImplCopyWith(_$ParsedVoterVotesImpl value,
          $Res Function(_$ParsedVoterVotesImpl) then) =
      __$$ParsedVoterVotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ParsedVoter voter, List<ParsedVote> votes});

  @override
  $ParsedVoterCopyWith<$Res> get voter;
}

/// @nodoc
class __$$ParsedVoterVotesImplCopyWithImpl<$Res>
    extends _$ParsedVoterVotesCopyWithImpl<$Res, _$ParsedVoterVotesImpl>
    implements _$$ParsedVoterVotesImplCopyWith<$Res> {
  __$$ParsedVoterVotesImplCopyWithImpl(_$ParsedVoterVotesImpl _value,
      $Res Function(_$ParsedVoterVotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voter = null,
    Object? votes = null,
  }) {
    return _then(_$ParsedVoterVotesImpl(
      voter: null == voter
          ? _value.voter
          : voter // ignore: cast_nullable_to_non_nullable
              as ParsedVoter,
      votes: null == votes
          ? _value._votes
          : votes // ignore: cast_nullable_to_non_nullable
              as List<ParsedVote>,
    ));
  }
}

/// @nodoc

class _$ParsedVoterVotesImpl extends _ParsedVoterVotes {
  _$ParsedVoterVotesImpl(
      {required this.voter, required final List<ParsedVote> votes})
      : _votes = votes,
        super._();

  @override
  final ParsedVoter voter;
  final List<ParsedVote> _votes;
  @override
  List<ParsedVote> get votes {
    if (_votes is EqualUnmodifiableListView) return _votes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_votes);
  }

  @override
  String toString() {
    return 'ParsedVoterVotes(voter: $voter, votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedVoterVotesImpl &&
            (identical(other.voter, voter) || other.voter == voter) &&
            const DeepCollectionEquality().equals(other._votes, _votes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, voter, const DeepCollectionEquality().hash(_votes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedVoterVotesImplCopyWith<_$ParsedVoterVotesImpl> get copyWith =>
      __$$ParsedVoterVotesImplCopyWithImpl<_$ParsedVoterVotesImpl>(
          this, _$identity);
}

abstract class _ParsedVoterVotes extends ParsedVoterVotes {
  factory _ParsedVoterVotes(
      {required final ParsedVoter voter,
      required final List<ParsedVote> votes}) = _$ParsedVoterVotesImpl;
  _ParsedVoterVotes._() : super._();

  @override
  ParsedVoter get voter;
  @override
  List<ParsedVote> get votes;
  @override
  @JsonKey(ignore: true)
  _$$ParsedVoterVotesImplCopyWith<_$ParsedVoterVotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
