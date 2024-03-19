// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_c_vote_registration_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedCVoteRegistrationParams {
  String get format => throw _privateConstructorUsedError;
  String? get votePublicKey => throw _privateConstructorUsedError;
  List<int>? get votePublicKeyPath => throw _privateConstructorUsedError;
  List<ParsedCVoteDelegation>? get delegations =>
      throw _privateConstructorUsedError;
  List<int> get stakingPath => throw _privateConstructorUsedError;
  ParsedOutputDestination get paymentDestination =>
      throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  String? get votingPurpose => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String format,
            String? votePublicKey,
            List<int>? votePublicKeyPath,
            List<ParsedCVoteDelegation>? delegations,
            List<int> stakingPath,
            ParsedOutputDestination paymentDestination,
            String nonce,
            String? votingPurpose)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String format,
            String? votePublicKey,
            List<int>? votePublicKeyPath,
            List<ParsedCVoteDelegation>? delegations,
            List<int> stakingPath,
            ParsedOutputDestination paymentDestination,
            String nonce,
            String? votingPurpose)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String format,
            String? votePublicKey,
            List<int>? votePublicKeyPath,
            List<ParsedCVoteDelegation>? delegations,
            List<int> stakingPath,
            ParsedOutputDestination paymentDestination,
            String nonce,
            String? votingPurpose)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedCVoteRegistrationParamsCopyWith<ParsedCVoteRegistrationParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedCVoteRegistrationParamsCopyWith<$Res> {
  factory $ParsedCVoteRegistrationParamsCopyWith(
          ParsedCVoteRegistrationParams value,
          $Res Function(ParsedCVoteRegistrationParams) then) =
      _$ParsedCVoteRegistrationParamsCopyWithImpl<$Res,
          ParsedCVoteRegistrationParams>;
  @useResult
  $Res call(
      {String format,
      String? votePublicKey,
      List<int>? votePublicKeyPath,
      List<ParsedCVoteDelegation>? delegations,
      List<int> stakingPath,
      ParsedOutputDestination paymentDestination,
      String nonce,
      String? votingPurpose});

  $ParsedOutputDestinationCopyWith<$Res> get paymentDestination;
}

/// @nodoc
class _$ParsedCVoteRegistrationParamsCopyWithImpl<$Res,
        $Val extends ParsedCVoteRegistrationParams>
    implements $ParsedCVoteRegistrationParamsCopyWith<$Res> {
  _$ParsedCVoteRegistrationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? votePublicKey = freezed,
    Object? votePublicKeyPath = freezed,
    Object? delegations = freezed,
    Object? stakingPath = null,
    Object? paymentDestination = null,
    Object? nonce = null,
    Object? votingPurpose = freezed,
  }) {
    return _then(_value.copyWith(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      votePublicKey: freezed == votePublicKey
          ? _value.votePublicKey
          : votePublicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      votePublicKeyPath: freezed == votePublicKeyPath
          ? _value.votePublicKeyPath
          : votePublicKeyPath // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      delegations: freezed == delegations
          ? _value.delegations
          : delegations // ignore: cast_nullable_to_non_nullable
              as List<ParsedCVoteDelegation>?,
      stakingPath: null == stakingPath
          ? _value.stakingPath
          : stakingPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
      paymentDestination: null == paymentDestination
          ? _value.paymentDestination
          : paymentDestination // ignore: cast_nullable_to_non_nullable
              as ParsedOutputDestination,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      votingPurpose: freezed == votingPurpose
          ? _value.votingPurpose
          : votingPurpose // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedOutputDestinationCopyWith<$Res> get paymentDestination {
    return $ParsedOutputDestinationCopyWith<$Res>(_value.paymentDestination,
        (value) {
      return _then(_value.copyWith(paymentDestination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedCVoteRegistrationParamsDataImplCopyWith<$Res>
    implements $ParsedCVoteRegistrationParamsCopyWith<$Res> {
  factory _$$ParsedCVoteRegistrationParamsDataImplCopyWith(
          _$ParsedCVoteRegistrationParamsDataImpl value,
          $Res Function(_$ParsedCVoteRegistrationParamsDataImpl) then) =
      __$$ParsedCVoteRegistrationParamsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String format,
      String? votePublicKey,
      List<int>? votePublicKeyPath,
      List<ParsedCVoteDelegation>? delegations,
      List<int> stakingPath,
      ParsedOutputDestination paymentDestination,
      String nonce,
      String? votingPurpose});

  @override
  $ParsedOutputDestinationCopyWith<$Res> get paymentDestination;
}

/// @nodoc
class __$$ParsedCVoteRegistrationParamsDataImplCopyWithImpl<$Res>
    extends _$ParsedCVoteRegistrationParamsCopyWithImpl<$Res,
        _$ParsedCVoteRegistrationParamsDataImpl>
    implements _$$ParsedCVoteRegistrationParamsDataImplCopyWith<$Res> {
  __$$ParsedCVoteRegistrationParamsDataImplCopyWithImpl(
      _$ParsedCVoteRegistrationParamsDataImpl _value,
      $Res Function(_$ParsedCVoteRegistrationParamsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? votePublicKey = freezed,
    Object? votePublicKeyPath = freezed,
    Object? delegations = freezed,
    Object? stakingPath = null,
    Object? paymentDestination = null,
    Object? nonce = null,
    Object? votingPurpose = freezed,
  }) {
    return _then(_$ParsedCVoteRegistrationParamsDataImpl(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      votePublicKey: freezed == votePublicKey
          ? _value.votePublicKey
          : votePublicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      votePublicKeyPath: freezed == votePublicKeyPath
          ? _value._votePublicKeyPath
          : votePublicKeyPath // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      delegations: freezed == delegations
          ? _value._delegations
          : delegations // ignore: cast_nullable_to_non_nullable
              as List<ParsedCVoteDelegation>?,
      stakingPath: null == stakingPath
          ? _value._stakingPath
          : stakingPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
      paymentDestination: null == paymentDestination
          ? _value.paymentDestination
          : paymentDestination // ignore: cast_nullable_to_non_nullable
              as ParsedOutputDestination,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      votingPurpose: freezed == votingPurpose
          ? _value.votingPurpose
          : votingPurpose // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParsedCVoteRegistrationParamsDataImpl
    extends ParsedCVoteRegistrationParamsData {
  const _$ParsedCVoteRegistrationParamsDataImpl(
      {required this.format,
      this.votePublicKey,
      final List<int>? votePublicKeyPath,
      final List<ParsedCVoteDelegation>? delegations,
      required final List<int> stakingPath,
      required this.paymentDestination,
      required this.nonce,
      this.votingPurpose})
      : _votePublicKeyPath = votePublicKeyPath,
        _delegations = delegations,
        _stakingPath = stakingPath,
        super._();

  @override
  final String format;
  @override
  final String? votePublicKey;
  final List<int>? _votePublicKeyPath;
  @override
  List<int>? get votePublicKeyPath {
    final value = _votePublicKeyPath;
    if (value == null) return null;
    if (_votePublicKeyPath is EqualUnmodifiableListView)
      return _votePublicKeyPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ParsedCVoteDelegation>? _delegations;
  @override
  List<ParsedCVoteDelegation>? get delegations {
    final value = _delegations;
    if (value == null) return null;
    if (_delegations is EqualUnmodifiableListView) return _delegations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int> _stakingPath;
  @override
  List<int> get stakingPath {
    if (_stakingPath is EqualUnmodifiableListView) return _stakingPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stakingPath);
  }

  @override
  final ParsedOutputDestination paymentDestination;
  @override
  final String nonce;
  @override
  final String? votingPurpose;

  @override
  String toString() {
    return 'ParsedCVoteRegistrationParams(format: $format, votePublicKey: $votePublicKey, votePublicKeyPath: $votePublicKeyPath, delegations: $delegations, stakingPath: $stakingPath, paymentDestination: $paymentDestination, nonce: $nonce, votingPurpose: $votingPurpose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedCVoteRegistrationParamsDataImpl &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.votePublicKey, votePublicKey) ||
                other.votePublicKey == votePublicKey) &&
            const DeepCollectionEquality()
                .equals(other._votePublicKeyPath, _votePublicKeyPath) &&
            const DeepCollectionEquality()
                .equals(other._delegations, _delegations) &&
            const DeepCollectionEquality()
                .equals(other._stakingPath, _stakingPath) &&
            (identical(other.paymentDestination, paymentDestination) ||
                other.paymentDestination == paymentDestination) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.votingPurpose, votingPurpose) ||
                other.votingPurpose == votingPurpose));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      format,
      votePublicKey,
      const DeepCollectionEquality().hash(_votePublicKeyPath),
      const DeepCollectionEquality().hash(_delegations),
      const DeepCollectionEquality().hash(_stakingPath),
      paymentDestination,
      nonce,
      votingPurpose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedCVoteRegistrationParamsDataImplCopyWith<
          _$ParsedCVoteRegistrationParamsDataImpl>
      get copyWith => __$$ParsedCVoteRegistrationParamsDataImplCopyWithImpl<
          _$ParsedCVoteRegistrationParamsDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String format,
            String? votePublicKey,
            List<int>? votePublicKeyPath,
            List<ParsedCVoteDelegation>? delegations,
            List<int> stakingPath,
            ParsedOutputDestination paymentDestination,
            String nonce,
            String? votingPurpose)
        $default,
  ) {
    return $default(format, votePublicKey, votePublicKeyPath, delegations,
        stakingPath, paymentDestination, nonce, votingPurpose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String format,
            String? votePublicKey,
            List<int>? votePublicKeyPath,
            List<ParsedCVoteDelegation>? delegations,
            List<int> stakingPath,
            ParsedOutputDestination paymentDestination,
            String nonce,
            String? votingPurpose)?
        $default,
  ) {
    return $default?.call(format, votePublicKey, votePublicKeyPath, delegations,
        stakingPath, paymentDestination, nonce, votingPurpose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String format,
            String? votePublicKey,
            List<int>? votePublicKeyPath,
            List<ParsedCVoteDelegation>? delegations,
            List<int> stakingPath,
            ParsedOutputDestination paymentDestination,
            String nonce,
            String? votingPurpose)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(format, votePublicKey, votePublicKeyPath, delegations,
          stakingPath, paymentDestination, nonce, votingPurpose);
    }
    return orElse();
  }
}

abstract class ParsedCVoteRegistrationParamsData
    extends ParsedCVoteRegistrationParams {
  const factory ParsedCVoteRegistrationParamsData(
      {required final String format,
      final String? votePublicKey,
      final List<int>? votePublicKeyPath,
      final List<ParsedCVoteDelegation>? delegations,
      required final List<int> stakingPath,
      required final ParsedOutputDestination paymentDestination,
      required final String nonce,
      final String? votingPurpose}) = _$ParsedCVoteRegistrationParamsDataImpl;
  const ParsedCVoteRegistrationParamsData._() : super._();

  @override
  String get format;
  @override
  String? get votePublicKey;
  @override
  List<int>? get votePublicKeyPath;
  @override
  List<ParsedCVoteDelegation>? get delegations;
  @override
  List<int> get stakingPath;
  @override
  ParsedOutputDestination get paymentDestination;
  @override
  String get nonce;
  @override
  String? get votingPurpose;
  @override
  @JsonKey(ignore: true)
  _$$ParsedCVoteRegistrationParamsDataImplCopyWith<
          _$ParsedCVoteRegistrationParamsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
