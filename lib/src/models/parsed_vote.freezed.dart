// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedVote {

 ParsedGovActionId get govActionId; ParsedVotingProcedure get votingProcedure;
/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedVoteCopyWith<ParsedVote> get copyWith => _$ParsedVoteCopyWithImpl<ParsedVote>(this as ParsedVote, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedVote&&(identical(other.govActionId, govActionId) || other.govActionId == govActionId)&&(identical(other.votingProcedure, votingProcedure) || other.votingProcedure == votingProcedure));
}


@override
int get hashCode => Object.hash(runtimeType,govActionId,votingProcedure);

@override
String toString() {
  return 'ParsedVote(govActionId: $govActionId, votingProcedure: $votingProcedure)';
}


}

/// @nodoc
abstract mixin class $ParsedVoteCopyWith<$Res>  {
  factory $ParsedVoteCopyWith(ParsedVote value, $Res Function(ParsedVote) _then) = _$ParsedVoteCopyWithImpl;
@useResult
$Res call({
 ParsedGovActionId govActionId, ParsedVotingProcedure votingProcedure
});


$ParsedGovActionIdCopyWith<$Res> get govActionId;$ParsedVotingProcedureCopyWith<$Res> get votingProcedure;

}
/// @nodoc
class _$ParsedVoteCopyWithImpl<$Res>
    implements $ParsedVoteCopyWith<$Res> {
  _$ParsedVoteCopyWithImpl(this._self, this._then);

  final ParsedVote _self;
  final $Res Function(ParsedVote) _then;

/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? govActionId = null,Object? votingProcedure = null,}) {
  return _then(_self.copyWith(
govActionId: null == govActionId ? _self.govActionId : govActionId // ignore: cast_nullable_to_non_nullable
as ParsedGovActionId,votingProcedure: null == votingProcedure ? _self.votingProcedure : votingProcedure // ignore: cast_nullable_to_non_nullable
as ParsedVotingProcedure,
  ));
}
/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedGovActionIdCopyWith<$Res> get govActionId {
  
  return $ParsedGovActionIdCopyWith<$Res>(_self.govActionId, (value) {
    return _then(_self.copyWith(govActionId: value));
  });
}/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedVotingProcedureCopyWith<$Res> get votingProcedure {
  
  return $ParsedVotingProcedureCopyWith<$Res>(_self.votingProcedure, (value) {
    return _then(_self.copyWith(votingProcedure: value));
  });
}
}


/// @nodoc


class _ParsedVote extends ParsedVote {
   _ParsedVote({required this.govActionId, required this.votingProcedure}): super._();
  

@override final  ParsedGovActionId govActionId;
@override final  ParsedVotingProcedure votingProcedure;

/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedVoteCopyWith<_ParsedVote> get copyWith => __$ParsedVoteCopyWithImpl<_ParsedVote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedVote&&(identical(other.govActionId, govActionId) || other.govActionId == govActionId)&&(identical(other.votingProcedure, votingProcedure) || other.votingProcedure == votingProcedure));
}


@override
int get hashCode => Object.hash(runtimeType,govActionId,votingProcedure);

@override
String toString() {
  return 'ParsedVote(govActionId: $govActionId, votingProcedure: $votingProcedure)';
}


}

/// @nodoc
abstract mixin class _$ParsedVoteCopyWith<$Res> implements $ParsedVoteCopyWith<$Res> {
  factory _$ParsedVoteCopyWith(_ParsedVote value, $Res Function(_ParsedVote) _then) = __$ParsedVoteCopyWithImpl;
@override @useResult
$Res call({
 ParsedGovActionId govActionId, ParsedVotingProcedure votingProcedure
});


@override $ParsedGovActionIdCopyWith<$Res> get govActionId;@override $ParsedVotingProcedureCopyWith<$Res> get votingProcedure;

}
/// @nodoc
class __$ParsedVoteCopyWithImpl<$Res>
    implements _$ParsedVoteCopyWith<$Res> {
  __$ParsedVoteCopyWithImpl(this._self, this._then);

  final _ParsedVote _self;
  final $Res Function(_ParsedVote) _then;

/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? govActionId = null,Object? votingProcedure = null,}) {
  return _then(_ParsedVote(
govActionId: null == govActionId ? _self.govActionId : govActionId // ignore: cast_nullable_to_non_nullable
as ParsedGovActionId,votingProcedure: null == votingProcedure ? _self.votingProcedure : votingProcedure // ignore: cast_nullable_to_non_nullable
as ParsedVotingProcedure,
  ));
}

/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedGovActionIdCopyWith<$Res> get govActionId {
  
  return $ParsedGovActionIdCopyWith<$Res>(_self.govActionId, (value) {
    return _then(_self.copyWith(govActionId: value));
  });
}/// Create a copy of ParsedVote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedVotingProcedureCopyWith<$Res> get votingProcedure {
  
  return $ParsedVotingProcedureCopyWith<$Res>(_self.votingProcedure, (value) {
    return _then(_self.copyWith(votingProcedure: value));
  });
}
}

// dart format on
