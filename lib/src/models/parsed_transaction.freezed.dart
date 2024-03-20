// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedTransaction {
  ParsedNetwork get network => throw _privateConstructorUsedError;
  List<ParsedInput> get inputs => throw _privateConstructorUsedError;
  List<ParsedOutput> get outputs => throw _privateConstructorUsedError;
  String get fee => throw _privateConstructorUsedError;
  String? get ttl => throw _privateConstructorUsedError;
  List<ParsedCertificate> get certificates =>
      throw _privateConstructorUsedError;
  List<ParsedWithdrawal> get withdrawals => throw _privateConstructorUsedError;
  ParsedTxAuxiliaryData? get auxiliaryData =>
      throw _privateConstructorUsedError;
  String? get validityIntervalStart => throw _privateConstructorUsedError;
  List<ParsedAssetGroup>? get mint => throw _privateConstructorUsedError;
  ScriptDataHash? get scriptDataHashHex => throw _privateConstructorUsedError;
  List<ParsedInput> get collateralInputs => throw _privateConstructorUsedError;
  List<ParsedRequiredSigner> get requiredSigners =>
      throw _privateConstructorUsedError;
  bool get includeNetworkId => throw _privateConstructorUsedError;
  ParsedOutput? get collateralOutput => throw _privateConstructorUsedError;
  String? get totalCollateral => throw _privateConstructorUsedError;
  List<ParsedInput> get referenceInputs => throw _privateConstructorUsedError;
  List<ParsedVoterVotes> get votingProcedures =>
      throw _privateConstructorUsedError;
  String? get treasury => throw _privateConstructorUsedError;
  String? get donation => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ParsedNetwork network,
            List<ParsedInput> inputs,
            List<ParsedOutput> outputs,
            String fee,
            String? ttl,
            List<ParsedCertificate> certificates,
            List<ParsedWithdrawal> withdrawals,
            ParsedTxAuxiliaryData? auxiliaryData,
            String? validityIntervalStart,
            List<ParsedAssetGroup>? mint,
            ScriptDataHash? scriptDataHashHex,
            List<ParsedInput> collateralInputs,
            List<ParsedRequiredSigner> requiredSigners,
            bool includeNetworkId,
            ParsedOutput? collateralOutput,
            String? totalCollateral,
            List<ParsedInput> referenceInputs,
            List<ParsedVoterVotes> votingProcedures,
            String? treasury,
            String? donation)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ParsedNetwork network,
            List<ParsedInput> inputs,
            List<ParsedOutput> outputs,
            String fee,
            String? ttl,
            List<ParsedCertificate> certificates,
            List<ParsedWithdrawal> withdrawals,
            ParsedTxAuxiliaryData? auxiliaryData,
            String? validityIntervalStart,
            List<ParsedAssetGroup>? mint,
            ScriptDataHash? scriptDataHashHex,
            List<ParsedInput> collateralInputs,
            List<ParsedRequiredSigner> requiredSigners,
            bool includeNetworkId,
            ParsedOutput? collateralOutput,
            String? totalCollateral,
            List<ParsedInput> referenceInputs,
            List<ParsedVoterVotes> votingProcedures,
            String? treasury,
            String? donation)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ParsedNetwork network,
            List<ParsedInput> inputs,
            List<ParsedOutput> outputs,
            String fee,
            String? ttl,
            List<ParsedCertificate> certificates,
            List<ParsedWithdrawal> withdrawals,
            ParsedTxAuxiliaryData? auxiliaryData,
            String? validityIntervalStart,
            List<ParsedAssetGroup>? mint,
            ScriptDataHash? scriptDataHashHex,
            List<ParsedInput> collateralInputs,
            List<ParsedRequiredSigner> requiredSigners,
            bool includeNetworkId,
            ParsedOutput? collateralOutput,
            String? totalCollateral,
            List<ParsedInput> referenceInputs,
            List<ParsedVoterVotes> votingProcedures,
            String? treasury,
            String? donation)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedTransactionCopyWith<ParsedTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedTransactionCopyWith<$Res> {
  factory $ParsedTransactionCopyWith(
          ParsedTransaction value, $Res Function(ParsedTransaction) then) =
      _$ParsedTransactionCopyWithImpl<$Res, ParsedTransaction>;
  @useResult
  $Res call(
      {ParsedNetwork network,
      List<ParsedInput> inputs,
      List<ParsedOutput> outputs,
      String fee,
      String? ttl,
      List<ParsedCertificate> certificates,
      List<ParsedWithdrawal> withdrawals,
      ParsedTxAuxiliaryData? auxiliaryData,
      String? validityIntervalStart,
      List<ParsedAssetGroup>? mint,
      ScriptDataHash? scriptDataHashHex,
      List<ParsedInput> collateralInputs,
      List<ParsedRequiredSigner> requiredSigners,
      bool includeNetworkId,
      ParsedOutput? collateralOutput,
      String? totalCollateral,
      List<ParsedInput> referenceInputs,
      List<ParsedVoterVotes> votingProcedures,
      String? treasury,
      String? donation});

  $ParsedNetworkCopyWith<$Res> get network;
  $ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData;
  $ScriptDataHashCopyWith<$Res>? get scriptDataHashHex;
  $ParsedOutputCopyWith<$Res>? get collateralOutput;
}

/// @nodoc
class _$ParsedTransactionCopyWithImpl<$Res, $Val extends ParsedTransaction>
    implements $ParsedTransactionCopyWith<$Res> {
  _$ParsedTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
    Object? inputs = null,
    Object? outputs = null,
    Object? fee = null,
    Object? ttl = freezed,
    Object? certificates = null,
    Object? withdrawals = null,
    Object? auxiliaryData = freezed,
    Object? validityIntervalStart = freezed,
    Object? mint = freezed,
    Object? scriptDataHashHex = freezed,
    Object? collateralInputs = null,
    Object? requiredSigners = null,
    Object? includeNetworkId = null,
    Object? collateralOutput = freezed,
    Object? totalCollateral = freezed,
    Object? referenceInputs = null,
    Object? votingProcedures = null,
    Object? treasury = freezed,
    Object? donation = freezed,
  }) {
    return _then(_value.copyWith(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ParsedNetwork,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<ParsedInput>,
      outputs: null == outputs
          ? _value.outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<ParsedOutput>,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as String?,
      certificates: null == certificates
          ? _value.certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<ParsedCertificate>,
      withdrawals: null == withdrawals
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<ParsedWithdrawal>,
      auxiliaryData: freezed == auxiliaryData
          ? _value.auxiliaryData
          : auxiliaryData // ignore: cast_nullable_to_non_nullable
              as ParsedTxAuxiliaryData?,
      validityIntervalStart: freezed == validityIntervalStart
          ? _value.validityIntervalStart
          : validityIntervalStart // ignore: cast_nullable_to_non_nullable
              as String?,
      mint: freezed == mint
          ? _value.mint
          : mint // ignore: cast_nullable_to_non_nullable
              as List<ParsedAssetGroup>?,
      scriptDataHashHex: freezed == scriptDataHashHex
          ? _value.scriptDataHashHex
          : scriptDataHashHex // ignore: cast_nullable_to_non_nullable
              as ScriptDataHash?,
      collateralInputs: null == collateralInputs
          ? _value.collateralInputs
          : collateralInputs // ignore: cast_nullable_to_non_nullable
              as List<ParsedInput>,
      requiredSigners: null == requiredSigners
          ? _value.requiredSigners
          : requiredSigners // ignore: cast_nullable_to_non_nullable
              as List<ParsedRequiredSigner>,
      includeNetworkId: null == includeNetworkId
          ? _value.includeNetworkId
          : includeNetworkId // ignore: cast_nullable_to_non_nullable
              as bool,
      collateralOutput: freezed == collateralOutput
          ? _value.collateralOutput
          : collateralOutput // ignore: cast_nullable_to_non_nullable
              as ParsedOutput?,
      totalCollateral: freezed == totalCollateral
          ? _value.totalCollateral
          : totalCollateral // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceInputs: null == referenceInputs
          ? _value.referenceInputs
          : referenceInputs // ignore: cast_nullable_to_non_nullable
              as List<ParsedInput>,
      votingProcedures: null == votingProcedures
          ? _value.votingProcedures
          : votingProcedures // ignore: cast_nullable_to_non_nullable
              as List<ParsedVoterVotes>,
      treasury: freezed == treasury
          ? _value.treasury
          : treasury // ignore: cast_nullable_to_non_nullable
              as String?,
      donation: freezed == donation
          ? _value.donation
          : donation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedNetworkCopyWith<$Res> get network {
    return $ParsedNetworkCopyWith<$Res>(_value.network, (value) {
      return _then(_value.copyWith(network: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData {
    if (_value.auxiliaryData == null) {
      return null;
    }

    return $ParsedTxAuxiliaryDataCopyWith<$Res>(_value.auxiliaryData!, (value) {
      return _then(_value.copyWith(auxiliaryData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScriptDataHashCopyWith<$Res>? get scriptDataHashHex {
    if (_value.scriptDataHashHex == null) {
      return null;
    }

    return $ScriptDataHashCopyWith<$Res>(_value.scriptDataHashHex!, (value) {
      return _then(_value.copyWith(scriptDataHashHex: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedOutputCopyWith<$Res>? get collateralOutput {
    if (_value.collateralOutput == null) {
      return null;
    }

    return $ParsedOutputCopyWith<$Res>(_value.collateralOutput!, (value) {
      return _then(_value.copyWith(collateralOutput: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedTransactionImplCopyWith<$Res>
    implements $ParsedTransactionCopyWith<$Res> {
  factory _$$ParsedTransactionImplCopyWith(_$ParsedTransactionImpl value,
          $Res Function(_$ParsedTransactionImpl) then) =
      __$$ParsedTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ParsedNetwork network,
      List<ParsedInput> inputs,
      List<ParsedOutput> outputs,
      String fee,
      String? ttl,
      List<ParsedCertificate> certificates,
      List<ParsedWithdrawal> withdrawals,
      ParsedTxAuxiliaryData? auxiliaryData,
      String? validityIntervalStart,
      List<ParsedAssetGroup>? mint,
      ScriptDataHash? scriptDataHashHex,
      List<ParsedInput> collateralInputs,
      List<ParsedRequiredSigner> requiredSigners,
      bool includeNetworkId,
      ParsedOutput? collateralOutput,
      String? totalCollateral,
      List<ParsedInput> referenceInputs,
      List<ParsedVoterVotes> votingProcedures,
      String? treasury,
      String? donation});

  @override
  $ParsedNetworkCopyWith<$Res> get network;
  @override
  $ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData;
  @override
  $ScriptDataHashCopyWith<$Res>? get scriptDataHashHex;
  @override
  $ParsedOutputCopyWith<$Res>? get collateralOutput;
}

/// @nodoc
class __$$ParsedTransactionImplCopyWithImpl<$Res>
    extends _$ParsedTransactionCopyWithImpl<$Res, _$ParsedTransactionImpl>
    implements _$$ParsedTransactionImplCopyWith<$Res> {
  __$$ParsedTransactionImplCopyWithImpl(_$ParsedTransactionImpl _value,
      $Res Function(_$ParsedTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
    Object? inputs = null,
    Object? outputs = null,
    Object? fee = null,
    Object? ttl = freezed,
    Object? certificates = null,
    Object? withdrawals = null,
    Object? auxiliaryData = freezed,
    Object? validityIntervalStart = freezed,
    Object? mint = freezed,
    Object? scriptDataHashHex = freezed,
    Object? collateralInputs = null,
    Object? requiredSigners = null,
    Object? includeNetworkId = null,
    Object? collateralOutput = freezed,
    Object? totalCollateral = freezed,
    Object? referenceInputs = null,
    Object? votingProcedures = null,
    Object? treasury = freezed,
    Object? donation = freezed,
  }) {
    return _then(_$ParsedTransactionImpl(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as ParsedNetwork,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<ParsedInput>,
      outputs: null == outputs
          ? _value._outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<ParsedOutput>,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as String?,
      certificates: null == certificates
          ? _value._certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<ParsedCertificate>,
      withdrawals: null == withdrawals
          ? _value._withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<ParsedWithdrawal>,
      auxiliaryData: freezed == auxiliaryData
          ? _value.auxiliaryData
          : auxiliaryData // ignore: cast_nullable_to_non_nullable
              as ParsedTxAuxiliaryData?,
      validityIntervalStart: freezed == validityIntervalStart
          ? _value.validityIntervalStart
          : validityIntervalStart // ignore: cast_nullable_to_non_nullable
              as String?,
      mint: freezed == mint
          ? _value._mint
          : mint // ignore: cast_nullable_to_non_nullable
              as List<ParsedAssetGroup>?,
      scriptDataHashHex: freezed == scriptDataHashHex
          ? _value.scriptDataHashHex
          : scriptDataHashHex // ignore: cast_nullable_to_non_nullable
              as ScriptDataHash?,
      collateralInputs: null == collateralInputs
          ? _value._collateralInputs
          : collateralInputs // ignore: cast_nullable_to_non_nullable
              as List<ParsedInput>,
      requiredSigners: null == requiredSigners
          ? _value._requiredSigners
          : requiredSigners // ignore: cast_nullable_to_non_nullable
              as List<ParsedRequiredSigner>,
      includeNetworkId: null == includeNetworkId
          ? _value.includeNetworkId
          : includeNetworkId // ignore: cast_nullable_to_non_nullable
              as bool,
      collateralOutput: freezed == collateralOutput
          ? _value.collateralOutput
          : collateralOutput // ignore: cast_nullable_to_non_nullable
              as ParsedOutput?,
      totalCollateral: freezed == totalCollateral
          ? _value.totalCollateral
          : totalCollateral // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceInputs: null == referenceInputs
          ? _value._referenceInputs
          : referenceInputs // ignore: cast_nullable_to_non_nullable
              as List<ParsedInput>,
      votingProcedures: null == votingProcedures
          ? _value._votingProcedures
          : votingProcedures // ignore: cast_nullable_to_non_nullable
              as List<ParsedVoterVotes>,
      treasury: freezed == treasury
          ? _value.treasury
          : treasury // ignore: cast_nullable_to_non_nullable
              as String?,
      donation: freezed == donation
          ? _value.donation
          : donation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ParsedTransactionImpl extends _ParsedTransaction {
  _$ParsedTransactionImpl(
      {required this.network,
      required final List<ParsedInput> inputs,
      required final List<ParsedOutput> outputs,
      required this.fee,
      this.ttl,
      required final List<ParsedCertificate> certificates,
      required final List<ParsedWithdrawal> withdrawals,
      this.auxiliaryData,
      this.validityIntervalStart,
      final List<ParsedAssetGroup>? mint,
      this.scriptDataHashHex,
      required final List<ParsedInput> collateralInputs,
      required final List<ParsedRequiredSigner> requiredSigners,
      required this.includeNetworkId,
      this.collateralOutput,
      this.totalCollateral,
      required final List<ParsedInput> referenceInputs,
      required final List<ParsedVoterVotes> votingProcedures,
      this.treasury,
      this.donation})
      : _inputs = inputs,
        _outputs = outputs,
        _certificates = certificates,
        _withdrawals = withdrawals,
        _mint = mint,
        _collateralInputs = collateralInputs,
        _requiredSigners = requiredSigners,
        _referenceInputs = referenceInputs,
        _votingProcedures = votingProcedures,
        super._();

  @override
  final ParsedNetwork network;
  final List<ParsedInput> _inputs;
  @override
  List<ParsedInput> get inputs {
    if (_inputs is EqualUnmodifiableListView) return _inputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputs);
  }

  final List<ParsedOutput> _outputs;
  @override
  List<ParsedOutput> get outputs {
    if (_outputs is EqualUnmodifiableListView) return _outputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputs);
  }

  @override
  final String fee;
  @override
  final String? ttl;
  final List<ParsedCertificate> _certificates;
  @override
  List<ParsedCertificate> get certificates {
    if (_certificates is EqualUnmodifiableListView) return _certificates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certificates);
  }

  final List<ParsedWithdrawal> _withdrawals;
  @override
  List<ParsedWithdrawal> get withdrawals {
    if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_withdrawals);
  }

  @override
  final ParsedTxAuxiliaryData? auxiliaryData;
  @override
  final String? validityIntervalStart;
  final List<ParsedAssetGroup>? _mint;
  @override
  List<ParsedAssetGroup>? get mint {
    final value = _mint;
    if (value == null) return null;
    if (_mint is EqualUnmodifiableListView) return _mint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ScriptDataHash? scriptDataHashHex;
  final List<ParsedInput> _collateralInputs;
  @override
  List<ParsedInput> get collateralInputs {
    if (_collateralInputs is EqualUnmodifiableListView)
      return _collateralInputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collateralInputs);
  }

  final List<ParsedRequiredSigner> _requiredSigners;
  @override
  List<ParsedRequiredSigner> get requiredSigners {
    if (_requiredSigners is EqualUnmodifiableListView) return _requiredSigners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredSigners);
  }

  @override
  final bool includeNetworkId;
  @override
  final ParsedOutput? collateralOutput;
  @override
  final String? totalCollateral;
  final List<ParsedInput> _referenceInputs;
  @override
  List<ParsedInput> get referenceInputs {
    if (_referenceInputs is EqualUnmodifiableListView) return _referenceInputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referenceInputs);
  }

  final List<ParsedVoterVotes> _votingProcedures;
  @override
  List<ParsedVoterVotes> get votingProcedures {
    if (_votingProcedures is EqualUnmodifiableListView)
      return _votingProcedures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_votingProcedures);
  }

  @override
  final String? treasury;
  @override
  final String? donation;

  @override
  String toString() {
    return 'ParsedTransaction(network: $network, inputs: $inputs, outputs: $outputs, fee: $fee, ttl: $ttl, certificates: $certificates, withdrawals: $withdrawals, auxiliaryData: $auxiliaryData, validityIntervalStart: $validityIntervalStart, mint: $mint, scriptDataHashHex: $scriptDataHashHex, collateralInputs: $collateralInputs, requiredSigners: $requiredSigners, includeNetworkId: $includeNetworkId, collateralOutput: $collateralOutput, totalCollateral: $totalCollateral, referenceInputs: $referenceInputs, votingProcedures: $votingProcedures, treasury: $treasury, donation: $donation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedTransactionImpl &&
            (identical(other.network, network) || other.network == network) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            const DeepCollectionEquality().equals(other._outputs, _outputs) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            const DeepCollectionEquality()
                .equals(other._certificates, _certificates) &&
            const DeepCollectionEquality()
                .equals(other._withdrawals, _withdrawals) &&
            (identical(other.auxiliaryData, auxiliaryData) ||
                other.auxiliaryData == auxiliaryData) &&
            (identical(other.validityIntervalStart, validityIntervalStart) ||
                other.validityIntervalStart == validityIntervalStart) &&
            const DeepCollectionEquality().equals(other._mint, _mint) &&
            (identical(other.scriptDataHashHex, scriptDataHashHex) ||
                other.scriptDataHashHex == scriptDataHashHex) &&
            const DeepCollectionEquality()
                .equals(other._collateralInputs, _collateralInputs) &&
            const DeepCollectionEquality()
                .equals(other._requiredSigners, _requiredSigners) &&
            (identical(other.includeNetworkId, includeNetworkId) ||
                other.includeNetworkId == includeNetworkId) &&
            (identical(other.collateralOutput, collateralOutput) ||
                other.collateralOutput == collateralOutput) &&
            (identical(other.totalCollateral, totalCollateral) ||
                other.totalCollateral == totalCollateral) &&
            const DeepCollectionEquality()
                .equals(other._referenceInputs, _referenceInputs) &&
            const DeepCollectionEquality()
                .equals(other._votingProcedures, _votingProcedures) &&
            (identical(other.treasury, treasury) ||
                other.treasury == treasury) &&
            (identical(other.donation, donation) ||
                other.donation == donation));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        network,
        const DeepCollectionEquality().hash(_inputs),
        const DeepCollectionEquality().hash(_outputs),
        fee,
        ttl,
        const DeepCollectionEquality().hash(_certificates),
        const DeepCollectionEquality().hash(_withdrawals),
        auxiliaryData,
        validityIntervalStart,
        const DeepCollectionEquality().hash(_mint),
        scriptDataHashHex,
        const DeepCollectionEquality().hash(_collateralInputs),
        const DeepCollectionEquality().hash(_requiredSigners),
        includeNetworkId,
        collateralOutput,
        totalCollateral,
        const DeepCollectionEquality().hash(_referenceInputs),
        const DeepCollectionEquality().hash(_votingProcedures),
        treasury,
        donation
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedTransactionImplCopyWith<_$ParsedTransactionImpl> get copyWith =>
      __$$ParsedTransactionImplCopyWithImpl<_$ParsedTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ParsedNetwork network,
            List<ParsedInput> inputs,
            List<ParsedOutput> outputs,
            String fee,
            String? ttl,
            List<ParsedCertificate> certificates,
            List<ParsedWithdrawal> withdrawals,
            ParsedTxAuxiliaryData? auxiliaryData,
            String? validityIntervalStart,
            List<ParsedAssetGroup>? mint,
            ScriptDataHash? scriptDataHashHex,
            List<ParsedInput> collateralInputs,
            List<ParsedRequiredSigner> requiredSigners,
            bool includeNetworkId,
            ParsedOutput? collateralOutput,
            String? totalCollateral,
            List<ParsedInput> referenceInputs,
            List<ParsedVoterVotes> votingProcedures,
            String? treasury,
            String? donation)
        $default,
  ) {
    return $default(
        network,
        inputs,
        outputs,
        fee,
        ttl,
        certificates,
        withdrawals,
        auxiliaryData,
        validityIntervalStart,
        mint,
        scriptDataHashHex,
        collateralInputs,
        requiredSigners,
        includeNetworkId,
        collateralOutput,
        totalCollateral,
        referenceInputs,
        votingProcedures,
        treasury,
        donation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            ParsedNetwork network,
            List<ParsedInput> inputs,
            List<ParsedOutput> outputs,
            String fee,
            String? ttl,
            List<ParsedCertificate> certificates,
            List<ParsedWithdrawal> withdrawals,
            ParsedTxAuxiliaryData? auxiliaryData,
            String? validityIntervalStart,
            List<ParsedAssetGroup>? mint,
            ScriptDataHash? scriptDataHashHex,
            List<ParsedInput> collateralInputs,
            List<ParsedRequiredSigner> requiredSigners,
            bool includeNetworkId,
            ParsedOutput? collateralOutput,
            String? totalCollateral,
            List<ParsedInput> referenceInputs,
            List<ParsedVoterVotes> votingProcedures,
            String? treasury,
            String? donation)?
        $default,
  ) {
    return $default?.call(
        network,
        inputs,
        outputs,
        fee,
        ttl,
        certificates,
        withdrawals,
        auxiliaryData,
        validityIntervalStart,
        mint,
        scriptDataHashHex,
        collateralInputs,
        requiredSigners,
        includeNetworkId,
        collateralOutput,
        totalCollateral,
        referenceInputs,
        votingProcedures,
        treasury,
        donation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ParsedNetwork network,
            List<ParsedInput> inputs,
            List<ParsedOutput> outputs,
            String fee,
            String? ttl,
            List<ParsedCertificate> certificates,
            List<ParsedWithdrawal> withdrawals,
            ParsedTxAuxiliaryData? auxiliaryData,
            String? validityIntervalStart,
            List<ParsedAssetGroup>? mint,
            ScriptDataHash? scriptDataHashHex,
            List<ParsedInput> collateralInputs,
            List<ParsedRequiredSigner> requiredSigners,
            bool includeNetworkId,
            ParsedOutput? collateralOutput,
            String? totalCollateral,
            List<ParsedInput> referenceInputs,
            List<ParsedVoterVotes> votingProcedures,
            String? treasury,
            String? donation)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          network,
          inputs,
          outputs,
          fee,
          ttl,
          certificates,
          withdrawals,
          auxiliaryData,
          validityIntervalStart,
          mint,
          scriptDataHashHex,
          collateralInputs,
          requiredSigners,
          includeNetworkId,
          collateralOutput,
          totalCollateral,
          referenceInputs,
          votingProcedures,
          treasury,
          donation);
    }
    return orElse();
  }
}

abstract class _ParsedTransaction extends ParsedTransaction {
  factory _ParsedTransaction(
      {required final ParsedNetwork network,
      required final List<ParsedInput> inputs,
      required final List<ParsedOutput> outputs,
      required final String fee,
      final String? ttl,
      required final List<ParsedCertificate> certificates,
      required final List<ParsedWithdrawal> withdrawals,
      final ParsedTxAuxiliaryData? auxiliaryData,
      final String? validityIntervalStart,
      final List<ParsedAssetGroup>? mint,
      final ScriptDataHash? scriptDataHashHex,
      required final List<ParsedInput> collateralInputs,
      required final List<ParsedRequiredSigner> requiredSigners,
      required final bool includeNetworkId,
      final ParsedOutput? collateralOutput,
      final String? totalCollateral,
      required final List<ParsedInput> referenceInputs,
      required final List<ParsedVoterVotes> votingProcedures,
      final String? treasury,
      final String? donation}) = _$ParsedTransactionImpl;
  _ParsedTransaction._() : super._();

  @override
  ParsedNetwork get network;
  @override
  List<ParsedInput> get inputs;
  @override
  List<ParsedOutput> get outputs;
  @override
  String get fee;
  @override
  String? get ttl;
  @override
  List<ParsedCertificate> get certificates;
  @override
  List<ParsedWithdrawal> get withdrawals;
  @override
  ParsedTxAuxiliaryData? get auxiliaryData;
  @override
  String? get validityIntervalStart;
  @override
  List<ParsedAssetGroup>? get mint;
  @override
  ScriptDataHash? get scriptDataHashHex;
  @override
  List<ParsedInput> get collateralInputs;
  @override
  List<ParsedRequiredSigner> get requiredSigners;
  @override
  bool get includeNetworkId;
  @override
  ParsedOutput? get collateralOutput;
  @override
  String? get totalCollateral;
  @override
  List<ParsedInput> get referenceInputs;
  @override
  List<ParsedVoterVotes> get votingProcedures;
  @override
  String? get treasury;
  @override
  String? get donation;
  @override
  @JsonKey(ignore: true)
  _$$ParsedTransactionImplCopyWith<_$ParsedTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
