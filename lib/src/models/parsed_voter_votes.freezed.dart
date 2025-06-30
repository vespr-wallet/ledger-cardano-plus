// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_voter_votes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedVoterVotes {

 ParsedVoter get voter; List<ParsedVote> get votes;
/// Create a copy of ParsedVoterVotes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedVoterVotesCopyWith<ParsedVoterVotes> get copyWith => _$ParsedVoterVotesCopyWithImpl<ParsedVoterVotes>(this as ParsedVoterVotes, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedVoterVotes&&(identical(other.voter, voter) || other.voter == voter)&&const DeepCollectionEquality().equals(other.votes, votes));
}


@override
int get hashCode => Object.hash(runtimeType,voter,const DeepCollectionEquality().hash(votes));

@override
String toString() {
  return 'ParsedVoterVotes(voter: $voter, votes: $votes)';
}


}

/// @nodoc
abstract mixin class $ParsedVoterVotesCopyWith<$Res>  {
  factory $ParsedVoterVotesCopyWith(ParsedVoterVotes value, $Res Function(ParsedVoterVotes) _then) = _$ParsedVoterVotesCopyWithImpl;
@useResult
$Res call({
 ParsedVoter voter, List<ParsedVote> votes
});


$ParsedVoterCopyWith<$Res> get voter;

}
/// @nodoc
class _$ParsedVoterVotesCopyWithImpl<$Res>
    implements $ParsedVoterVotesCopyWith<$Res> {
  _$ParsedVoterVotesCopyWithImpl(this._self, this._then);

  final ParsedVoterVotes _self;
  final $Res Function(ParsedVoterVotes) _then;

/// Create a copy of ParsedVoterVotes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voter = null,Object? votes = null,}) {
  return _then(_self.copyWith(
voter: null == voter ? _self.voter : voter // ignore: cast_nullable_to_non_nullable
as ParsedVoter,votes: null == votes ? _self.votes : votes // ignore: cast_nullable_to_non_nullable
as List<ParsedVote>,
  ));
}
/// Create a copy of ParsedVoterVotes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedVoterCopyWith<$Res> get voter {
  
  return $ParsedVoterCopyWith<$Res>(_self.voter, (value) {
    return _then(_self.copyWith(voter: value));
  });
}
}


/// @nodoc


class _ParsedVoterVotes extends ParsedVoterVotes {
   _ParsedVoterVotes({required this.voter, required final  List<ParsedVote> votes}): _votes = votes,super._();
  

@override final  ParsedVoter voter;
 final  List<ParsedVote> _votes;
@override List<ParsedVote> get votes {
  if (_votes is EqualUnmodifiableListView) return _votes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_votes);
}


/// Create a copy of ParsedVoterVotes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedVoterVotesCopyWith<_ParsedVoterVotes> get copyWith => __$ParsedVoterVotesCopyWithImpl<_ParsedVoterVotes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedVoterVotes&&(identical(other.voter, voter) || other.voter == voter)&&const DeepCollectionEquality().equals(other._votes, _votes));
}


@override
int get hashCode => Object.hash(runtimeType,voter,const DeepCollectionEquality().hash(_votes));

@override
String toString() {
  return 'ParsedVoterVotes(voter: $voter, votes: $votes)';
}


}

/// @nodoc
abstract mixin class _$ParsedVoterVotesCopyWith<$Res> implements $ParsedVoterVotesCopyWith<$Res> {
  factory _$ParsedVoterVotesCopyWith(_ParsedVoterVotes value, $Res Function(_ParsedVoterVotes) _then) = __$ParsedVoterVotesCopyWithImpl;
@override @useResult
$Res call({
 ParsedVoter voter, List<ParsedVote> votes
});


@override $ParsedVoterCopyWith<$Res> get voter;

}
/// @nodoc
class __$ParsedVoterVotesCopyWithImpl<$Res>
    implements _$ParsedVoterVotesCopyWith<$Res> {
  __$ParsedVoterVotesCopyWithImpl(this._self, this._then);

  final _ParsedVoterVotes _self;
  final $Res Function(_ParsedVoterVotes) _then;

/// Create a copy of ParsedVoterVotes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? voter = null,Object? votes = null,}) {
  return _then(_ParsedVoterVotes(
voter: null == voter ? _self.voter : voter // ignore: cast_nullable_to_non_nullable
as ParsedVoter,votes: null == votes ? _self._votes : votes // ignore: cast_nullable_to_non_nullable
as List<ParsedVote>,
  ));
}

/// Create a copy of ParsedVoterVotes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedVoterCopyWith<$Res> get voter {
  
  return $ParsedVoterCopyWith<$Res>(_self.voter, (value) {
    return _then(_self.copyWith(voter: value));
  });
}
}

// dart format on
