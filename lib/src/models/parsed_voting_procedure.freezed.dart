// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_voting_procedure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedVotingProcedure {
  VoteOption get vote => throw _privateConstructorUsedError;
  ParsedAnchor? get anchor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(VoteOption vote, ParsedAnchor? anchor) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(VoteOption vote, ParsedAnchor? anchor)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(VoteOption vote, ParsedAnchor? anchor)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedVotingProcedureCopyWith<ParsedVotingProcedure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedVotingProcedureCopyWith<$Res> {
  factory $ParsedVotingProcedureCopyWith(ParsedVotingProcedure value,
          $Res Function(ParsedVotingProcedure) then) =
      _$ParsedVotingProcedureCopyWithImpl<$Res, ParsedVotingProcedure>;
  @useResult
  $Res call({VoteOption vote, ParsedAnchor? anchor});

  $ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$ParsedVotingProcedureCopyWithImpl<$Res,
        $Val extends ParsedVotingProcedure>
    implements $ParsedVotingProcedureCopyWith<$Res> {
  _$ParsedVotingProcedureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vote = null,
    Object? anchor = freezed,
  }) {
    return _then(_value.copyWith(
      vote: null == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as VoteOption,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedAnchorCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
      return null;
    }

    return $ParsedAnchorCopyWith<$Res>(_value.anchor!, (value) {
      return _then(_value.copyWith(anchor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedVotingProcedureDataImplCopyWith<$Res>
    implements $ParsedVotingProcedureCopyWith<$Res> {
  factory _$$ParsedVotingProcedureDataImplCopyWith(
          _$ParsedVotingProcedureDataImpl value,
          $Res Function(_$ParsedVotingProcedureDataImpl) then) =
      __$$ParsedVotingProcedureDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoteOption vote, ParsedAnchor? anchor});

  @override
  $ParsedAnchorCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$ParsedVotingProcedureDataImplCopyWithImpl<$Res>
    extends _$ParsedVotingProcedureCopyWithImpl<$Res,
        _$ParsedVotingProcedureDataImpl>
    implements _$$ParsedVotingProcedureDataImplCopyWith<$Res> {
  __$$ParsedVotingProcedureDataImplCopyWithImpl(
      _$ParsedVotingProcedureDataImpl _value,
      $Res Function(_$ParsedVotingProcedureDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vote = null,
    Object? anchor = freezed,
  }) {
    return _then(_$ParsedVotingProcedureDataImpl(
      vote: null == vote
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as VoteOption,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ParsedAnchor?,
    ));
  }
}

/// @nodoc

class _$ParsedVotingProcedureDataImpl extends ParsedVotingProcedureData {
  const _$ParsedVotingProcedureDataImpl({required this.vote, this.anchor})
      : super._();

  @override
  final VoteOption vote;
  @override
  final ParsedAnchor? anchor;

  @override
  String toString() {
    return 'ParsedVotingProcedure(vote: $vote, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedVotingProcedureDataImpl &&
            (identical(other.vote, vote) || other.vote == vote) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vote, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedVotingProcedureDataImplCopyWith<_$ParsedVotingProcedureDataImpl>
      get copyWith => __$$ParsedVotingProcedureDataImplCopyWithImpl<
          _$ParsedVotingProcedureDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(VoteOption vote, ParsedAnchor? anchor) $default,
  ) {
    return $default(vote, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(VoteOption vote, ParsedAnchor? anchor)? $default,
  ) {
    return $default?.call(vote, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(VoteOption vote, ParsedAnchor? anchor)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(vote, anchor);
    }
    return orElse();
  }
}

abstract class ParsedVotingProcedureData extends ParsedVotingProcedure {
  const factory ParsedVotingProcedureData(
      {required final VoteOption vote,
      final ParsedAnchor? anchor}) = _$ParsedVotingProcedureDataImpl;
  const ParsedVotingProcedureData._() : super._();

  @override
  VoteOption get vote;
  @override
  ParsedAnchor? get anchor;
  @override
  @JsonKey(ignore: true)
  _$$ParsedVotingProcedureDataImplCopyWith<_$ParsedVotingProcedureDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
