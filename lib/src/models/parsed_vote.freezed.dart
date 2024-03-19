// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedVote {
  ParsedGovActionId get govActionId => throw _privateConstructorUsedError;
  ParsedVotingProcedure get votingProcedure =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParsedGovActionId govActionId,
            ParsedVotingProcedure votingProcedure)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ParsedGovActionId govActionId,
            ParsedVotingProcedure votingProcedure)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParsedGovActionId govActionId,
            ParsedVotingProcedure votingProcedure)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedVoteCopyWith<ParsedVote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedVoteCopyWith<$Res> {
  factory $ParsedVoteCopyWith(
          ParsedVote value, $Res Function(ParsedVote) then) =
      _$ParsedVoteCopyWithImpl<$Res, ParsedVote>;
  @useResult
  $Res call(
      {ParsedGovActionId govActionId, ParsedVotingProcedure votingProcedure});

  $ParsedGovActionIdCopyWith<$Res> get govActionId;
  $ParsedVotingProcedureCopyWith<$Res> get votingProcedure;
}

/// @nodoc
class _$ParsedVoteCopyWithImpl<$Res, $Val extends ParsedVote>
    implements $ParsedVoteCopyWith<$Res> {
  _$ParsedVoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? govActionId = null,
    Object? votingProcedure = null,
  }) {
    return _then(_value.copyWith(
      govActionId: null == govActionId
          ? _value.govActionId
          : govActionId // ignore: cast_nullable_to_non_nullable
              as ParsedGovActionId,
      votingProcedure: null == votingProcedure
          ? _value.votingProcedure
          : votingProcedure // ignore: cast_nullable_to_non_nullable
              as ParsedVotingProcedure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedGovActionIdCopyWith<$Res> get govActionId {
    return $ParsedGovActionIdCopyWith<$Res>(_value.govActionId, (value) {
      return _then(_value.copyWith(govActionId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedVotingProcedureCopyWith<$Res> get votingProcedure {
    return $ParsedVotingProcedureCopyWith<$Res>(_value.votingProcedure,
        (value) {
      return _then(_value.copyWith(votingProcedure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedVoteDataImplCopyWith<$Res>
    implements $ParsedVoteCopyWith<$Res> {
  factory _$$ParsedVoteDataImplCopyWith(_$ParsedVoteDataImpl value,
          $Res Function(_$ParsedVoteDataImpl) then) =
      __$$ParsedVoteDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ParsedGovActionId govActionId, ParsedVotingProcedure votingProcedure});

  @override
  $ParsedGovActionIdCopyWith<$Res> get govActionId;
  @override
  $ParsedVotingProcedureCopyWith<$Res> get votingProcedure;
}

/// @nodoc
class __$$ParsedVoteDataImplCopyWithImpl<$Res>
    extends _$ParsedVoteCopyWithImpl<$Res, _$ParsedVoteDataImpl>
    implements _$$ParsedVoteDataImplCopyWith<$Res> {
  __$$ParsedVoteDataImplCopyWithImpl(
      _$ParsedVoteDataImpl _value, $Res Function(_$ParsedVoteDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? govActionId = null,
    Object? votingProcedure = null,
  }) {
    return _then(_$ParsedVoteDataImpl(
      govActionId: null == govActionId
          ? _value.govActionId
          : govActionId // ignore: cast_nullable_to_non_nullable
              as ParsedGovActionId,
      votingProcedure: null == votingProcedure
          ? _value.votingProcedure
          : votingProcedure // ignore: cast_nullable_to_non_nullable
              as ParsedVotingProcedure,
    ));
  }
}

/// @nodoc

class _$ParsedVoteDataImpl extends ParsedVoteData {
  const _$ParsedVoteDataImpl(
      {required this.govActionId, required this.votingProcedure})
      : super._();

  @override
  final ParsedGovActionId govActionId;
  @override
  final ParsedVotingProcedure votingProcedure;

  @override
  String toString() {
    return 'ParsedVote(govActionId: $govActionId, votingProcedure: $votingProcedure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedVoteDataImpl &&
            (identical(other.govActionId, govActionId) ||
                other.govActionId == govActionId) &&
            (identical(other.votingProcedure, votingProcedure) ||
                other.votingProcedure == votingProcedure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, govActionId, votingProcedure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedVoteDataImplCopyWith<_$ParsedVoteDataImpl> get copyWith =>
      __$$ParsedVoteDataImplCopyWithImpl<_$ParsedVoteDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ParsedGovActionId govActionId,
            ParsedVotingProcedure votingProcedure)
        $default,
  ) {
    return $default(govActionId, votingProcedure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ParsedGovActionId govActionId,
            ParsedVotingProcedure votingProcedure)?
        $default,
  ) {
    return $default?.call(govActionId, votingProcedure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ParsedGovActionId govActionId,
            ParsedVotingProcedure votingProcedure)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(govActionId, votingProcedure);
    }
    return orElse();
  }
}

abstract class ParsedVoteData extends ParsedVote {
  const factory ParsedVoteData(
          {required final ParsedGovActionId govActionId,
          required final ParsedVotingProcedure votingProcedure}) =
      _$ParsedVoteDataImpl;
  const ParsedVoteData._() : super._();

  @override
  ParsedGovActionId get govActionId;
  @override
  ParsedVotingProcedure get votingProcedure;
  @override
  @JsonKey(ignore: true)
  _$$ParsedVoteDataImplCopyWith<_$ParsedVoteDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
