// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Transaction {
  Network get network => throw _privateConstructorUsedError;
  List<TxInput> get inputs => throw _privateConstructorUsedError;
  List<TxOutput> get outputs => throw _privateConstructorUsedError;
  BigInt get fee => throw _privateConstructorUsedError;
  BigInt? get ttl => throw _privateConstructorUsedError;
  List<ParsedCertificate>? get certificates =>
      throw _privateConstructorUsedError;
  List<ParsedWithdrawal>? get withdrawals => throw _privateConstructorUsedError;
  ParsedTxAuxiliaryData? get auxiliaryData =>
      throw _privateConstructorUsedError;
  BigInt? get validityIntervalStart => throw _privateConstructorUsedError;
  List<AssetGroup>? get mint => throw _privateConstructorUsedError;
  ScriptDataHash? get scriptDataHash => throw _privateConstructorUsedError;
  List<TxInput>? get collateralInputs => throw _privateConstructorUsedError;
  List<ParsedRequiredSigner>? get requiredSigners =>
      throw _privateConstructorUsedError;
  bool? get includeNetworkId => throw _privateConstructorUsedError;
  TxOutput? get collateralOutput => throw _privateConstructorUsedError;
  BigInt? get totalCollateral => throw _privateConstructorUsedError;
  List<TxInput>? get referenceInputs => throw _privateConstructorUsedError;
  List<ParsedVoterVotes>? get votingProcedures =>
      throw _privateConstructorUsedError;
  BigInt? get treasury => throw _privateConstructorUsedError;
  BigInt? get donation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {Network network,
      List<TxInput> inputs,
      List<TxOutput> outputs,
      BigInt fee,
      BigInt? ttl,
      List<ParsedCertificate>? certificates,
      List<ParsedWithdrawal>? withdrawals,
      ParsedTxAuxiliaryData? auxiliaryData,
      BigInt? validityIntervalStart,
      List<AssetGroup>? mint,
      ScriptDataHash? scriptDataHash,
      List<TxInput>? collateralInputs,
      List<ParsedRequiredSigner>? requiredSigners,
      bool? includeNetworkId,
      TxOutput? collateralOutput,
      BigInt? totalCollateral,
      List<TxInput>? referenceInputs,
      List<ParsedVoterVotes>? votingProcedures,
      BigInt? treasury,
      BigInt? donation});

  $NetworkCopyWith<$Res> get network;
  $ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData;
  $ScriptDataHashCopyWith<$Res>? get scriptDataHash;
  $TxOutputCopyWith<$Res>? get collateralOutput;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

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
    Object? certificates = freezed,
    Object? withdrawals = freezed,
    Object? auxiliaryData = freezed,
    Object? validityIntervalStart = freezed,
    Object? mint = freezed,
    Object? scriptDataHash = freezed,
    Object? collateralInputs = freezed,
    Object? requiredSigners = freezed,
    Object? includeNetworkId = freezed,
    Object? collateralOutput = freezed,
    Object? totalCollateral = freezed,
    Object? referenceInputs = freezed,
    Object? votingProcedures = freezed,
    Object? treasury = freezed,
    Object? donation = freezed,
  }) {
    return _then(_value.copyWith(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as Network,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<TxInput>,
      outputs: null == outputs
          ? _value.outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<TxOutput>,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as BigInt,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      certificates: freezed == certificates
          ? _value.certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<ParsedCertificate>?,
      withdrawals: freezed == withdrawals
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<ParsedWithdrawal>?,
      auxiliaryData: freezed == auxiliaryData
          ? _value.auxiliaryData
          : auxiliaryData // ignore: cast_nullable_to_non_nullable
              as ParsedTxAuxiliaryData?,
      validityIntervalStart: freezed == validityIntervalStart
          ? _value.validityIntervalStart
          : validityIntervalStart // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      mint: freezed == mint
          ? _value.mint
          : mint // ignore: cast_nullable_to_non_nullable
              as List<AssetGroup>?,
      scriptDataHash: freezed == scriptDataHash
          ? _value.scriptDataHash
          : scriptDataHash // ignore: cast_nullable_to_non_nullable
              as ScriptDataHash?,
      collateralInputs: freezed == collateralInputs
          ? _value.collateralInputs
          : collateralInputs // ignore: cast_nullable_to_non_nullable
              as List<TxInput>?,
      requiredSigners: freezed == requiredSigners
          ? _value.requiredSigners
          : requiredSigners // ignore: cast_nullable_to_non_nullable
              as List<ParsedRequiredSigner>?,
      includeNetworkId: freezed == includeNetworkId
          ? _value.includeNetworkId
          : includeNetworkId // ignore: cast_nullable_to_non_nullable
              as bool?,
      collateralOutput: freezed == collateralOutput
          ? _value.collateralOutput
          : collateralOutput // ignore: cast_nullable_to_non_nullable
              as TxOutput?,
      totalCollateral: freezed == totalCollateral
          ? _value.totalCollateral
          : totalCollateral // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      referenceInputs: freezed == referenceInputs
          ? _value.referenceInputs
          : referenceInputs // ignore: cast_nullable_to_non_nullable
              as List<TxInput>?,
      votingProcedures: freezed == votingProcedures
          ? _value.votingProcedures
          : votingProcedures // ignore: cast_nullable_to_non_nullable
              as List<ParsedVoterVotes>?,
      treasury: freezed == treasury
          ? _value.treasury
          : treasury // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      donation: freezed == donation
          ? _value.donation
          : donation // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkCopyWith<$Res> get network {
    return $NetworkCopyWith<$Res>(_value.network, (value) {
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
  $ScriptDataHashCopyWith<$Res>? get scriptDataHash {
    if (_value.scriptDataHash == null) {
      return null;
    }

    return $ScriptDataHashCopyWith<$Res>(_value.scriptDataHash!, (value) {
      return _then(_value.copyWith(scriptDataHash: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TxOutputCopyWith<$Res>? get collateralOutput {
    if (_value.collateralOutput == null) {
      return null;
    }

    return $TxOutputCopyWith<$Res>(_value.collateralOutput!, (value) {
      return _then(_value.copyWith(collateralOutput: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Network network,
      List<TxInput> inputs,
      List<TxOutput> outputs,
      BigInt fee,
      BigInt? ttl,
      List<ParsedCertificate>? certificates,
      List<ParsedWithdrawal>? withdrawals,
      ParsedTxAuxiliaryData? auxiliaryData,
      BigInt? validityIntervalStart,
      List<AssetGroup>? mint,
      ScriptDataHash? scriptDataHash,
      List<TxInput>? collateralInputs,
      List<ParsedRequiredSigner>? requiredSigners,
      bool? includeNetworkId,
      TxOutput? collateralOutput,
      BigInt? totalCollateral,
      List<TxInput>? referenceInputs,
      List<ParsedVoterVotes>? votingProcedures,
      BigInt? treasury,
      BigInt? donation});

  @override
  $NetworkCopyWith<$Res> get network;
  @override
  $ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData;
  @override
  $ScriptDataHashCopyWith<$Res>? get scriptDataHash;
  @override
  $TxOutputCopyWith<$Res>? get collateralOutput;
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
    Object? inputs = null,
    Object? outputs = null,
    Object? fee = null,
    Object? ttl = freezed,
    Object? certificates = freezed,
    Object? withdrawals = freezed,
    Object? auxiliaryData = freezed,
    Object? validityIntervalStart = freezed,
    Object? mint = freezed,
    Object? scriptDataHash = freezed,
    Object? collateralInputs = freezed,
    Object? requiredSigners = freezed,
    Object? includeNetworkId = freezed,
    Object? collateralOutput = freezed,
    Object? totalCollateral = freezed,
    Object? referenceInputs = freezed,
    Object? votingProcedures = freezed,
    Object? treasury = freezed,
    Object? donation = freezed,
  }) {
    return _then(_$TransactionImpl(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as Network,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<TxInput>,
      outputs: null == outputs
          ? _value._outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<TxOutput>,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as BigInt,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      certificates: freezed == certificates
          ? _value._certificates
          : certificates // ignore: cast_nullable_to_non_nullable
              as List<ParsedCertificate>?,
      withdrawals: freezed == withdrawals
          ? _value._withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<ParsedWithdrawal>?,
      auxiliaryData: freezed == auxiliaryData
          ? _value.auxiliaryData
          : auxiliaryData // ignore: cast_nullable_to_non_nullable
              as ParsedTxAuxiliaryData?,
      validityIntervalStart: freezed == validityIntervalStart
          ? _value.validityIntervalStart
          : validityIntervalStart // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      mint: freezed == mint
          ? _value._mint
          : mint // ignore: cast_nullable_to_non_nullable
              as List<AssetGroup>?,
      scriptDataHash: freezed == scriptDataHash
          ? _value.scriptDataHash
          : scriptDataHash // ignore: cast_nullable_to_non_nullable
              as ScriptDataHash?,
      collateralInputs: freezed == collateralInputs
          ? _value._collateralInputs
          : collateralInputs // ignore: cast_nullable_to_non_nullable
              as List<TxInput>?,
      requiredSigners: freezed == requiredSigners
          ? _value._requiredSigners
          : requiredSigners // ignore: cast_nullable_to_non_nullable
              as List<ParsedRequiredSigner>?,
      includeNetworkId: freezed == includeNetworkId
          ? _value.includeNetworkId
          : includeNetworkId // ignore: cast_nullable_to_non_nullable
              as bool?,
      collateralOutput: freezed == collateralOutput
          ? _value.collateralOutput
          : collateralOutput // ignore: cast_nullable_to_non_nullable
              as TxOutput?,
      totalCollateral: freezed == totalCollateral
          ? _value.totalCollateral
          : totalCollateral // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      referenceInputs: freezed == referenceInputs
          ? _value._referenceInputs
          : referenceInputs // ignore: cast_nullable_to_non_nullable
              as List<TxInput>?,
      votingProcedures: freezed == votingProcedures
          ? _value._votingProcedures
          : votingProcedures // ignore: cast_nullable_to_non_nullable
              as List<ParsedVoterVotes>?,
      treasury: freezed == treasury
          ? _value.treasury
          : treasury // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      donation: freezed == donation
          ? _value.donation
          : donation // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc

class _$TransactionImpl extends _Transaction {
  _$TransactionImpl(
      {required this.network,
      required final List<TxInput> inputs,
      required final List<TxOutput> outputs,
      required this.fee,
      this.ttl,
      final List<ParsedCertificate>? certificates,
      final List<ParsedWithdrawal>? withdrawals,
      this.auxiliaryData,
      this.validityIntervalStart,
      final List<AssetGroup>? mint,
      this.scriptDataHash,
      final List<TxInput>? collateralInputs,
      final List<ParsedRequiredSigner>? requiredSigners,
      this.includeNetworkId,
      this.collateralOutput,
      this.totalCollateral,
      final List<TxInput>? referenceInputs,
      final List<ParsedVoterVotes>? votingProcedures,
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
  final Network network;
  final List<TxInput> _inputs;
  @override
  List<TxInput> get inputs {
    if (_inputs is EqualUnmodifiableListView) return _inputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputs);
  }

  final List<TxOutput> _outputs;
  @override
  List<TxOutput> get outputs {
    if (_outputs is EqualUnmodifiableListView) return _outputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputs);
  }

  @override
  final BigInt fee;
  @override
  final BigInt? ttl;
  final List<ParsedCertificate>? _certificates;
  @override
  List<ParsedCertificate>? get certificates {
    final value = _certificates;
    if (value == null) return null;
    if (_certificates is EqualUnmodifiableListView) return _certificates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ParsedWithdrawal>? _withdrawals;
  @override
  List<ParsedWithdrawal>? get withdrawals {
    final value = _withdrawals;
    if (value == null) return null;
    if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ParsedTxAuxiliaryData? auxiliaryData;
  @override
  final BigInt? validityIntervalStart;
  final List<AssetGroup>? _mint;
  @override
  List<AssetGroup>? get mint {
    final value = _mint;
    if (value == null) return null;
    if (_mint is EqualUnmodifiableListView) return _mint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ScriptDataHash? scriptDataHash;
  final List<TxInput>? _collateralInputs;
  @override
  List<TxInput>? get collateralInputs {
    final value = _collateralInputs;
    if (value == null) return null;
    if (_collateralInputs is EqualUnmodifiableListView)
      return _collateralInputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ParsedRequiredSigner>? _requiredSigners;
  @override
  List<ParsedRequiredSigner>? get requiredSigners {
    final value = _requiredSigners;
    if (value == null) return null;
    if (_requiredSigners is EqualUnmodifiableListView) return _requiredSigners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? includeNetworkId;
  @override
  final TxOutput? collateralOutput;
  @override
  final BigInt? totalCollateral;
  final List<TxInput>? _referenceInputs;
  @override
  List<TxInput>? get referenceInputs {
    final value = _referenceInputs;
    if (value == null) return null;
    if (_referenceInputs is EqualUnmodifiableListView) return _referenceInputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ParsedVoterVotes>? _votingProcedures;
  @override
  List<ParsedVoterVotes>? get votingProcedures {
    final value = _votingProcedures;
    if (value == null) return null;
    if (_votingProcedures is EqualUnmodifiableListView)
      return _votingProcedures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BigInt? treasury;
  @override
  final BigInt? donation;

  @override
  String toString() {
    return 'Transaction(network: $network, inputs: $inputs, outputs: $outputs, fee: $fee, ttl: $ttl, certificates: $certificates, withdrawals: $withdrawals, auxiliaryData: $auxiliaryData, validityIntervalStart: $validityIntervalStart, mint: $mint, scriptDataHash: $scriptDataHash, collateralInputs: $collateralInputs, requiredSigners: $requiredSigners, includeNetworkId: $includeNetworkId, collateralOutput: $collateralOutput, totalCollateral: $totalCollateral, referenceInputs: $referenceInputs, votingProcedures: $votingProcedures, treasury: $treasury, donation: $donation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
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
            (identical(other.scriptDataHash, scriptDataHash) ||
                other.scriptDataHash == scriptDataHash) &&
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
        scriptDataHash,
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
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);
}

abstract class _Transaction extends Transaction {
  factory _Transaction(
      {required final Network network,
      required final List<TxInput> inputs,
      required final List<TxOutput> outputs,
      required final BigInt fee,
      final BigInt? ttl,
      final List<ParsedCertificate>? certificates,
      final List<ParsedWithdrawal>? withdrawals,
      final ParsedTxAuxiliaryData? auxiliaryData,
      final BigInt? validityIntervalStart,
      final List<AssetGroup>? mint,
      final ScriptDataHash? scriptDataHash,
      final List<TxInput>? collateralInputs,
      final List<ParsedRequiredSigner>? requiredSigners,
      final bool? includeNetworkId,
      final TxOutput? collateralOutput,
      final BigInt? totalCollateral,
      final List<TxInput>? referenceInputs,
      final List<ParsedVoterVotes>? votingProcedures,
      final BigInt? treasury,
      final BigInt? donation}) = _$TransactionImpl;
  _Transaction._() : super._();

  @override
  Network get network;
  @override
  List<TxInput> get inputs;
  @override
  List<TxOutput> get outputs;
  @override
  BigInt get fee;
  @override
  BigInt? get ttl;
  @override
  List<ParsedCertificate>? get certificates;
  @override
  List<ParsedWithdrawal>? get withdrawals;
  @override
  ParsedTxAuxiliaryData? get auxiliaryData;
  @override
  BigInt? get validityIntervalStart;
  @override
  List<AssetGroup>? get mint;
  @override
  ScriptDataHash? get scriptDataHash;
  @override
  List<TxInput>? get collateralInputs;
  @override
  List<ParsedRequiredSigner>? get requiredSigners;
  @override
  bool? get includeNetworkId;
  @override
  TxOutput? get collateralOutput;
  @override
  BigInt? get totalCollateral;
  @override
  List<TxInput>? get referenceInputs;
  @override
  List<ParsedVoterVotes>? get votingProcedures;
  @override
  BigInt? get treasury;
  @override
  BigInt? get donation;
  @override
  @JsonKey(ignore: true)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
