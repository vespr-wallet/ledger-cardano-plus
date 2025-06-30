// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_voting_procedure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedVotingProcedure {

 VoteOption get vote; ParsedAnchor? get anchor;
/// Create a copy of ParsedVotingProcedure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedVotingProcedureCopyWith<ParsedVotingProcedure> get copyWith => _$ParsedVotingProcedureCopyWithImpl<ParsedVotingProcedure>(this as ParsedVotingProcedure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedVotingProcedure&&(identical(other.vote, vote) || other.vote == vote)&&(identical(other.anchor, anchor) || other.anchor == anchor));
}


@override
int get hashCode => Object.hash(runtimeType,vote,anchor);

@override
String toString() {
  return 'ParsedVotingProcedure(vote: $vote, anchor: $anchor)';
}


}

/// @nodoc
abstract mixin class $ParsedVotingProcedureCopyWith<$Res>  {
  factory $ParsedVotingProcedureCopyWith(ParsedVotingProcedure value, $Res Function(ParsedVotingProcedure) _then) = _$ParsedVotingProcedureCopyWithImpl;
@useResult
$Res call({
 VoteOption vote, ParsedAnchor? anchor
});


$ParsedAnchorCopyWith<$Res>? get anchor;

}
/// @nodoc
class _$ParsedVotingProcedureCopyWithImpl<$Res>
    implements $ParsedVotingProcedureCopyWith<$Res> {
  _$ParsedVotingProcedureCopyWithImpl(this._self, this._then);

  final ParsedVotingProcedure _self;
  final $Res Function(ParsedVotingProcedure) _then;

/// Create a copy of ParsedVotingProcedure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vote = null,Object? anchor = freezed,}) {
  return _then(_self.copyWith(
vote: null == vote ? _self.vote : vote // ignore: cast_nullable_to_non_nullable
as VoteOption,anchor: freezed == anchor ? _self.anchor : anchor // ignore: cast_nullable_to_non_nullable
as ParsedAnchor?,
  ));
}
/// Create a copy of ParsedVotingProcedure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedAnchorCopyWith<$Res>? get anchor {
    if (_self.anchor == null) {
    return null;
  }

  return $ParsedAnchorCopyWith<$Res>(_self.anchor!, (value) {
    return _then(_self.copyWith(anchor: value));
  });
}
}


/// @nodoc


class _ParsedVotingProcedure extends ParsedVotingProcedure {
   _ParsedVotingProcedure({required this.vote, required this.anchor}): super._();
  

@override final  VoteOption vote;
@override final  ParsedAnchor? anchor;

/// Create a copy of ParsedVotingProcedure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedVotingProcedureCopyWith<_ParsedVotingProcedure> get copyWith => __$ParsedVotingProcedureCopyWithImpl<_ParsedVotingProcedure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedVotingProcedure&&(identical(other.vote, vote) || other.vote == vote)&&(identical(other.anchor, anchor) || other.anchor == anchor));
}


@override
int get hashCode => Object.hash(runtimeType,vote,anchor);

@override
String toString() {
  return 'ParsedVotingProcedure(vote: $vote, anchor: $anchor)';
}


}

/// @nodoc
abstract mixin class _$ParsedVotingProcedureCopyWith<$Res> implements $ParsedVotingProcedureCopyWith<$Res> {
  factory _$ParsedVotingProcedureCopyWith(_ParsedVotingProcedure value, $Res Function(_ParsedVotingProcedure) _then) = __$ParsedVotingProcedureCopyWithImpl;
@override @useResult
$Res call({
 VoteOption vote, ParsedAnchor? anchor
});


@override $ParsedAnchorCopyWith<$Res>? get anchor;

}
/// @nodoc
class __$ParsedVotingProcedureCopyWithImpl<$Res>
    implements _$ParsedVotingProcedureCopyWith<$Res> {
  __$ParsedVotingProcedureCopyWithImpl(this._self, this._then);

  final _ParsedVotingProcedure _self;
  final $Res Function(_ParsedVotingProcedure) _then;

/// Create a copy of ParsedVotingProcedure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vote = null,Object? anchor = freezed,}) {
  return _then(_ParsedVotingProcedure(
vote: null == vote ? _self.vote : vote // ignore: cast_nullable_to_non_nullable
as VoteOption,anchor: freezed == anchor ? _self.anchor : anchor // ignore: cast_nullable_to_non_nullable
as ParsedAnchor?,
  ));
}

/// Create a copy of ParsedVotingProcedure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedAnchorCopyWith<$Res>? get anchor {
    if (_self.anchor == null) {
    return null;
  }

  return $ParsedAnchorCopyWith<$Res>(_self.anchor!, (value) {
    return _then(_self.copyWith(anchor: value));
  });
}
}

// dart format on
