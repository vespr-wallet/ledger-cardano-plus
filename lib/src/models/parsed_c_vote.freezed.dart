// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_c_vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedCVote {

 String get voteCastDataHex => throw _privateConstructorUsedError; LedgerSigningPath get witnessPath => throw _privateConstructorUsedError;







/// Create a copy of ParsedCVote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedCVoteCopyWith<ParsedCVote> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedCVoteCopyWith<$Res>  {
  factory $ParsedCVoteCopyWith(ParsedCVote value, $Res Function(ParsedCVote) then) = _$ParsedCVoteCopyWithImpl<$Res, ParsedCVote>;
@useResult
$Res call({
 String voteCastDataHex, LedgerSigningPath witnessPath
});


$LedgerSigningPathCopyWith<$Res> get witnessPath;
}

/// @nodoc
class _$ParsedCVoteCopyWithImpl<$Res,$Val extends ParsedCVote> implements $ParsedCVoteCopyWith<$Res> {
  _$ParsedCVoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedCVote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voteCastDataHex = null,Object? witnessPath = null,}) {
  return _then(_value.copyWith(
voteCastDataHex: null == voteCastDataHex ? _value.voteCastDataHex : voteCastDataHex // ignore: cast_nullable_to_non_nullable
as String,witnessPath: null == witnessPath ? _value.witnessPath : witnessPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  )as $Val);
}
/// Create a copy of ParsedCVote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerSigningPathCopyWith<$Res> get witnessPath {
  
  return $LedgerSigningPathCopyWith<$Res>(_value.witnessPath, (value) {
    return _then(_value.copyWith(witnessPath: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$ParsedCVoteImplCopyWith<$Res> implements $ParsedCVoteCopyWith<$Res> {
  factory _$$ParsedCVoteImplCopyWith(_$ParsedCVoteImpl value, $Res Function(_$ParsedCVoteImpl) then) = __$$ParsedCVoteImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String voteCastDataHex, LedgerSigningPath witnessPath
});


@override $LedgerSigningPathCopyWith<$Res> get witnessPath;
}

/// @nodoc
class __$$ParsedCVoteImplCopyWithImpl<$Res> extends _$ParsedCVoteCopyWithImpl<$Res, _$ParsedCVoteImpl> implements _$$ParsedCVoteImplCopyWith<$Res> {
  __$$ParsedCVoteImplCopyWithImpl(_$ParsedCVoteImpl _value, $Res Function(_$ParsedCVoteImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedCVote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voteCastDataHex = null,Object? witnessPath = null,}) {
  return _then(_$ParsedCVoteImpl(
voteCastDataHex: null == voteCastDataHex ? _value.voteCastDataHex : voteCastDataHex // ignore: cast_nullable_to_non_nullable
as String,witnessPath: null == witnessPath ? _value.witnessPath : witnessPath // ignore: cast_nullable_to_non_nullable
as LedgerSigningPath,
  ));
}


}

/// @nodoc


class _$ParsedCVoteImpl extends _ParsedCVote  {
   _$ParsedCVoteImpl({required this.voteCastDataHex, required this.witnessPath}): super._();

  

@override final  String voteCastDataHex;
@override final  LedgerSigningPath witnessPath;

@override
String toString() {
  return 'ParsedCVote(voteCastDataHex: $voteCastDataHex, witnessPath: $witnessPath)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedCVoteImpl&&(identical(other.voteCastDataHex, voteCastDataHex) || other.voteCastDataHex == voteCastDataHex)&&(identical(other.witnessPath, witnessPath) || other.witnessPath == witnessPath));
}


@override
int get hashCode => Object.hash(runtimeType,voteCastDataHex,witnessPath);

/// Create a copy of ParsedCVote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedCVoteImplCopyWith<_$ParsedCVoteImpl> get copyWith => __$$ParsedCVoteImplCopyWithImpl<_$ParsedCVoteImpl>(this, _$identity);








}


abstract class _ParsedCVote extends ParsedCVote {
   factory _ParsedCVote({required final  String voteCastDataHex, required final  LedgerSigningPath witnessPath}) = _$ParsedCVoteImpl;
   _ParsedCVote._(): super._();

  

@override String get voteCastDataHex;@override LedgerSigningPath get witnessPath;
/// Create a copy of ParsedCVote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedCVoteImplCopyWith<_$ParsedCVoteImpl> get copyWith => throw _privateConstructorUsedError;

}
