// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_c_vote_registration_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParsedCVoteRegistrationParams {
  CIP36VoteRegistrationFormat get format;
  CVotePublicKey? get votePublicKey;
  LedgerSigningPath? get votePublicKeyPath;
  List<ParsedCVoteDelegation>? get delegations;
  LedgerSigningPath get stakingPath;
  ParsedOutputDestination get paymentDestination;
  BigInt get nonce;
  BigInt? get votingPurpose;

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParsedCVoteRegistrationParamsCopyWith<ParsedCVoteRegistrationParams>
      get copyWith => _$ParsedCVoteRegistrationParamsCopyWithImpl<
              ParsedCVoteRegistrationParams>(
          this as ParsedCVoteRegistrationParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedCVoteRegistrationParams &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.votePublicKey, votePublicKey) ||
                other.votePublicKey == votePublicKey) &&
            (identical(other.votePublicKeyPath, votePublicKeyPath) ||
                other.votePublicKeyPath == votePublicKeyPath) &&
            const DeepCollectionEquality()
                .equals(other.delegations, delegations) &&
            (identical(other.stakingPath, stakingPath) ||
                other.stakingPath == stakingPath) &&
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
      votePublicKeyPath,
      const DeepCollectionEquality().hash(delegations),
      stakingPath,
      paymentDestination,
      nonce,
      votingPurpose);

  @override
  String toString() {
    return 'ParsedCVoteRegistrationParams(format: $format, votePublicKey: $votePublicKey, votePublicKeyPath: $votePublicKeyPath, delegations: $delegations, stakingPath: $stakingPath, paymentDestination: $paymentDestination, nonce: $nonce, votingPurpose: $votingPurpose)';
  }
}

/// @nodoc
abstract mixin class $ParsedCVoteRegistrationParamsCopyWith<$Res> {
  factory $ParsedCVoteRegistrationParamsCopyWith(
          ParsedCVoteRegistrationParams value,
          $Res Function(ParsedCVoteRegistrationParams) _then) =
      _$ParsedCVoteRegistrationParamsCopyWithImpl;
  @useResult
  $Res call(
      {CIP36VoteRegistrationFormat format,
      CVotePublicKey? votePublicKey,
      LedgerSigningPath? votePublicKeyPath,
      List<ParsedCVoteDelegation>? delegations,
      LedgerSigningPath stakingPath,
      ParsedOutputDestination paymentDestination,
      BigInt nonce,
      BigInt? votingPurpose});

  $CVotePublicKeyCopyWith<$Res>? get votePublicKey;
  $LedgerSigningPathCopyWith<$Res>? get votePublicKeyPath;
  $LedgerSigningPathCopyWith<$Res> get stakingPath;
  $ParsedOutputDestinationCopyWith<$Res> get paymentDestination;
}

/// @nodoc
class _$ParsedCVoteRegistrationParamsCopyWithImpl<$Res>
    implements $ParsedCVoteRegistrationParamsCopyWith<$Res> {
  _$ParsedCVoteRegistrationParamsCopyWithImpl(this._self, this._then);

  final ParsedCVoteRegistrationParams _self;
  final $Res Function(ParsedCVoteRegistrationParams) _then;

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      format: null == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as CIP36VoteRegistrationFormat,
      votePublicKey: freezed == votePublicKey
          ? _self.votePublicKey
          : votePublicKey // ignore: cast_nullable_to_non_nullable
              as CVotePublicKey?,
      votePublicKeyPath: freezed == votePublicKeyPath
          ? _self.votePublicKeyPath
          : votePublicKeyPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath?,
      delegations: freezed == delegations
          ? _self.delegations
          : delegations // ignore: cast_nullable_to_non_nullable
              as List<ParsedCVoteDelegation>?,
      stakingPath: null == stakingPath
          ? _self.stakingPath
          : stakingPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
      paymentDestination: null == paymentDestination
          ? _self.paymentDestination
          : paymentDestination // ignore: cast_nullable_to_non_nullable
              as ParsedOutputDestination,
      nonce: null == nonce
          ? _self.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as BigInt,
      votingPurpose: freezed == votingPurpose
          ? _self.votingPurpose
          : votingPurpose // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CVotePublicKeyCopyWith<$Res>? get votePublicKey {
    if (_self.votePublicKey == null) {
      return null;
    }

    return $CVotePublicKeyCopyWith<$Res>(_self.votePublicKey!, (value) {
      return _then(_self.copyWith(votePublicKey: value));
    });
  }

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res>? get votePublicKeyPath {
    if (_self.votePublicKeyPath == null) {
      return null;
    }

    return $LedgerSigningPathCopyWith<$Res>(_self.votePublicKeyPath!, (value) {
      return _then(_self.copyWith(votePublicKeyPath: value));
    });
  }

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get stakingPath {
    return $LedgerSigningPathCopyWith<$Res>(_self.stakingPath, (value) {
      return _then(_self.copyWith(stakingPath: value));
    });
  }

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedOutputDestinationCopyWith<$Res> get paymentDestination {
    return $ParsedOutputDestinationCopyWith<$Res>(_self.paymentDestination,
        (value) {
      return _then(_self.copyWith(paymentDestination: value));
    });
  }
}

/// @nodoc

class _ParsedCVoteRegistrationParams extends ParsedCVoteRegistrationParams {
  _ParsedCVoteRegistrationParams(
      {required this.format,
      required this.votePublicKey,
      required this.votePublicKeyPath,
      required final List<ParsedCVoteDelegation>? delegations,
      required this.stakingPath,
      required this.paymentDestination,
      required this.nonce,
      required this.votingPurpose})
      : _delegations = delegations,
        super._();

  @override
  final CIP36VoteRegistrationFormat format;
  @override
  final CVotePublicKey? votePublicKey;
  @override
  final LedgerSigningPath? votePublicKeyPath;
  final List<ParsedCVoteDelegation>? _delegations;
  @override
  List<ParsedCVoteDelegation>? get delegations {
    final value = _delegations;
    if (value == null) return null;
    if (_delegations is EqualUnmodifiableListView) return _delegations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LedgerSigningPath stakingPath;
  @override
  final ParsedOutputDestination paymentDestination;
  @override
  final BigInt nonce;
  @override
  final BigInt? votingPurpose;

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParsedCVoteRegistrationParamsCopyWith<_ParsedCVoteRegistrationParams>
      get copyWith => __$ParsedCVoteRegistrationParamsCopyWithImpl<
          _ParsedCVoteRegistrationParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParsedCVoteRegistrationParams &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.votePublicKey, votePublicKey) ||
                other.votePublicKey == votePublicKey) &&
            (identical(other.votePublicKeyPath, votePublicKeyPath) ||
                other.votePublicKeyPath == votePublicKeyPath) &&
            const DeepCollectionEquality()
                .equals(other._delegations, _delegations) &&
            (identical(other.stakingPath, stakingPath) ||
                other.stakingPath == stakingPath) &&
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
      votePublicKeyPath,
      const DeepCollectionEquality().hash(_delegations),
      stakingPath,
      paymentDestination,
      nonce,
      votingPurpose);

  @override
  String toString() {
    return 'ParsedCVoteRegistrationParams(format: $format, votePublicKey: $votePublicKey, votePublicKeyPath: $votePublicKeyPath, delegations: $delegations, stakingPath: $stakingPath, paymentDestination: $paymentDestination, nonce: $nonce, votingPurpose: $votingPurpose)';
  }
}

/// @nodoc
abstract mixin class _$ParsedCVoteRegistrationParamsCopyWith<$Res>
    implements $ParsedCVoteRegistrationParamsCopyWith<$Res> {
  factory _$ParsedCVoteRegistrationParamsCopyWith(
          _ParsedCVoteRegistrationParams value,
          $Res Function(_ParsedCVoteRegistrationParams) _then) =
      __$ParsedCVoteRegistrationParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CIP36VoteRegistrationFormat format,
      CVotePublicKey? votePublicKey,
      LedgerSigningPath? votePublicKeyPath,
      List<ParsedCVoteDelegation>? delegations,
      LedgerSigningPath stakingPath,
      ParsedOutputDestination paymentDestination,
      BigInt nonce,
      BigInt? votingPurpose});

  @override
  $CVotePublicKeyCopyWith<$Res>? get votePublicKey;
  @override
  $LedgerSigningPathCopyWith<$Res>? get votePublicKeyPath;
  @override
  $LedgerSigningPathCopyWith<$Res> get stakingPath;
  @override
  $ParsedOutputDestinationCopyWith<$Res> get paymentDestination;
}

/// @nodoc
class __$ParsedCVoteRegistrationParamsCopyWithImpl<$Res>
    implements _$ParsedCVoteRegistrationParamsCopyWith<$Res> {
  __$ParsedCVoteRegistrationParamsCopyWithImpl(this._self, this._then);

  final _ParsedCVoteRegistrationParams _self;
  final $Res Function(_ParsedCVoteRegistrationParams) _then;

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_ParsedCVoteRegistrationParams(
      format: null == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as CIP36VoteRegistrationFormat,
      votePublicKey: freezed == votePublicKey
          ? _self.votePublicKey
          : votePublicKey // ignore: cast_nullable_to_non_nullable
              as CVotePublicKey?,
      votePublicKeyPath: freezed == votePublicKeyPath
          ? _self.votePublicKeyPath
          : votePublicKeyPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath?,
      delegations: freezed == delegations
          ? _self._delegations
          : delegations // ignore: cast_nullable_to_non_nullable
              as List<ParsedCVoteDelegation>?,
      stakingPath: null == stakingPath
          ? _self.stakingPath
          : stakingPath // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
      paymentDestination: null == paymentDestination
          ? _self.paymentDestination
          : paymentDestination // ignore: cast_nullable_to_non_nullable
              as ParsedOutputDestination,
      nonce: null == nonce
          ? _self.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as BigInt,
      votingPurpose: freezed == votingPurpose
          ? _self.votingPurpose
          : votingPurpose // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CVotePublicKeyCopyWith<$Res>? get votePublicKey {
    if (_self.votePublicKey == null) {
      return null;
    }

    return $CVotePublicKeyCopyWith<$Res>(_self.votePublicKey!, (value) {
      return _then(_self.copyWith(votePublicKey: value));
    });
  }

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res>? get votePublicKeyPath {
    if (_self.votePublicKeyPath == null) {
      return null;
    }

    return $LedgerSigningPathCopyWith<$Res>(_self.votePublicKeyPath!, (value) {
      return _then(_self.copyWith(votePublicKeyPath: value));
    });
  }

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get stakingPath {
    return $LedgerSigningPathCopyWith<$Res>(_self.stakingPath, (value) {
      return _then(_self.copyWith(stakingPath: value));
    });
  }

  /// Create a copy of ParsedCVoteRegistrationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedOutputDestinationCopyWith<$Res> get paymentDestination {
    return $ParsedOutputDestinationCopyWith<$Res>(_self.paymentDestination,
        (value) {
      return _then(_self.copyWith(paymentDestination: value));
    });
  }
}

// dart format on
