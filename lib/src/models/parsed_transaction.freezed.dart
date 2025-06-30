// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParsedTransaction {

 CardanoNetwork get network; List<ParsedInput> get inputs; List<ParsedOutput> get outputs; BigInt get fee; BigInt? get ttl; List<ParsedCertificate>? get certificates; List<ParsedWithdrawal>? get withdrawals; ParsedTxAuxiliaryData? get auxiliaryData; BigInt? get validityIntervalStart; List<ParsedAssetGroup>? get mint; ScriptDataHash? get scriptDataHashHex; List<ParsedInput>? get collateralInputs; List<ParsedRequiredSigner>? get requiredSigners; bool? get includeNetworkId; ParsedOutput? get collateralOutput; BigInt? get totalCollateral; List<ParsedInput>? get referenceInputs; List<ParsedVoterVotes>? get votingProcedures; BigInt? get treasury; BigInt? get donation;
/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParsedTransactionCopyWith<ParsedTransaction> get copyWith => _$ParsedTransactionCopyWithImpl<ParsedTransaction>(this as ParsedTransaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParsedTransaction&&(identical(other.network, network) || other.network == network)&&const DeepCollectionEquality().equals(other.inputs, inputs)&&const DeepCollectionEquality().equals(other.outputs, outputs)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&const DeepCollectionEquality().equals(other.certificates, certificates)&&const DeepCollectionEquality().equals(other.withdrawals, withdrawals)&&(identical(other.auxiliaryData, auxiliaryData) || other.auxiliaryData == auxiliaryData)&&(identical(other.validityIntervalStart, validityIntervalStart) || other.validityIntervalStart == validityIntervalStart)&&const DeepCollectionEquality().equals(other.mint, mint)&&(identical(other.scriptDataHashHex, scriptDataHashHex) || other.scriptDataHashHex == scriptDataHashHex)&&const DeepCollectionEquality().equals(other.collateralInputs, collateralInputs)&&const DeepCollectionEquality().equals(other.requiredSigners, requiredSigners)&&(identical(other.includeNetworkId, includeNetworkId) || other.includeNetworkId == includeNetworkId)&&(identical(other.collateralOutput, collateralOutput) || other.collateralOutput == collateralOutput)&&(identical(other.totalCollateral, totalCollateral) || other.totalCollateral == totalCollateral)&&const DeepCollectionEquality().equals(other.referenceInputs, referenceInputs)&&const DeepCollectionEquality().equals(other.votingProcedures, votingProcedures)&&(identical(other.treasury, treasury) || other.treasury == treasury)&&(identical(other.donation, donation) || other.donation == donation));
}


@override
int get hashCode => Object.hashAll([runtimeType,network,const DeepCollectionEquality().hash(inputs),const DeepCollectionEquality().hash(outputs),fee,ttl,const DeepCollectionEquality().hash(certificates),const DeepCollectionEquality().hash(withdrawals),auxiliaryData,validityIntervalStart,const DeepCollectionEquality().hash(mint),scriptDataHashHex,const DeepCollectionEquality().hash(collateralInputs),const DeepCollectionEquality().hash(requiredSigners),includeNetworkId,collateralOutput,totalCollateral,const DeepCollectionEquality().hash(referenceInputs),const DeepCollectionEquality().hash(votingProcedures),treasury,donation]);

@override
String toString() {
  return 'ParsedTransaction(network: $network, inputs: $inputs, outputs: $outputs, fee: $fee, ttl: $ttl, certificates: $certificates, withdrawals: $withdrawals, auxiliaryData: $auxiliaryData, validityIntervalStart: $validityIntervalStart, mint: $mint, scriptDataHashHex: $scriptDataHashHex, collateralInputs: $collateralInputs, requiredSigners: $requiredSigners, includeNetworkId: $includeNetworkId, collateralOutput: $collateralOutput, totalCollateral: $totalCollateral, referenceInputs: $referenceInputs, votingProcedures: $votingProcedures, treasury: $treasury, donation: $donation)';
}


}

/// @nodoc
abstract mixin class $ParsedTransactionCopyWith<$Res>  {
  factory $ParsedTransactionCopyWith(ParsedTransaction value, $Res Function(ParsedTransaction) _then) = _$ParsedTransactionCopyWithImpl;
@useResult
$Res call({
 CardanoNetwork network, List<ParsedInput> inputs, List<ParsedOutput> outputs, BigInt fee, BigInt? ttl, List<ParsedCertificate>? certificates, List<ParsedWithdrawal>? withdrawals, ParsedTxAuxiliaryData? auxiliaryData, BigInt? validityIntervalStart, List<ParsedAssetGroup>? mint, ScriptDataHash? scriptDataHashHex, List<ParsedInput>? collateralInputs, List<ParsedRequiredSigner>? requiredSigners, bool? includeNetworkId, ParsedOutput? collateralOutput, BigInt? totalCollateral, List<ParsedInput>? referenceInputs, List<ParsedVoterVotes>? votingProcedures, BigInt? treasury, BigInt? donation
});


$CardanoNetworkCopyWith<$Res> get network;$ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData;$ScriptDataHashCopyWith<$Res>? get scriptDataHashHex;$ParsedOutputCopyWith<$Res>? get collateralOutput;

}
/// @nodoc
class _$ParsedTransactionCopyWithImpl<$Res>
    implements $ParsedTransactionCopyWith<$Res> {
  _$ParsedTransactionCopyWithImpl(this._self, this._then);

  final ParsedTransaction _self;
  final $Res Function(ParsedTransaction) _then;

/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? network = null,Object? inputs = null,Object? outputs = null,Object? fee = null,Object? ttl = freezed,Object? certificates = freezed,Object? withdrawals = freezed,Object? auxiliaryData = freezed,Object? validityIntervalStart = freezed,Object? mint = freezed,Object? scriptDataHashHex = freezed,Object? collateralInputs = freezed,Object? requiredSigners = freezed,Object? includeNetworkId = freezed,Object? collateralOutput = freezed,Object? totalCollateral = freezed,Object? referenceInputs = freezed,Object? votingProcedures = freezed,Object? treasury = freezed,Object? donation = freezed,}) {
  return _then(_self.copyWith(
network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as CardanoNetwork,inputs: null == inputs ? _self.inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>,outputs: null == outputs ? _self.outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<ParsedOutput>,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as BigInt,ttl: freezed == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as BigInt?,certificates: freezed == certificates ? _self.certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<ParsedCertificate>?,withdrawals: freezed == withdrawals ? _self.withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<ParsedWithdrawal>?,auxiliaryData: freezed == auxiliaryData ? _self.auxiliaryData : auxiliaryData // ignore: cast_nullable_to_non_nullable
as ParsedTxAuxiliaryData?,validityIntervalStart: freezed == validityIntervalStart ? _self.validityIntervalStart : validityIntervalStart // ignore: cast_nullable_to_non_nullable
as BigInt?,mint: freezed == mint ? _self.mint : mint // ignore: cast_nullable_to_non_nullable
as List<ParsedAssetGroup>?,scriptDataHashHex: freezed == scriptDataHashHex ? _self.scriptDataHashHex : scriptDataHashHex // ignore: cast_nullable_to_non_nullable
as ScriptDataHash?,collateralInputs: freezed == collateralInputs ? _self.collateralInputs : collateralInputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>?,requiredSigners: freezed == requiredSigners ? _self.requiredSigners : requiredSigners // ignore: cast_nullable_to_non_nullable
as List<ParsedRequiredSigner>?,includeNetworkId: freezed == includeNetworkId ? _self.includeNetworkId : includeNetworkId // ignore: cast_nullable_to_non_nullable
as bool?,collateralOutput: freezed == collateralOutput ? _self.collateralOutput : collateralOutput // ignore: cast_nullable_to_non_nullable
as ParsedOutput?,totalCollateral: freezed == totalCollateral ? _self.totalCollateral : totalCollateral // ignore: cast_nullable_to_non_nullable
as BigInt?,referenceInputs: freezed == referenceInputs ? _self.referenceInputs : referenceInputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>?,votingProcedures: freezed == votingProcedures ? _self.votingProcedures : votingProcedures // ignore: cast_nullable_to_non_nullable
as List<ParsedVoterVotes>?,treasury: freezed == treasury ? _self.treasury : treasury // ignore: cast_nullable_to_non_nullable
as BigInt?,donation: freezed == donation ? _self.donation : donation // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}
/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoNetworkCopyWith<$Res> get network {
  
  return $CardanoNetworkCopyWith<$Res>(_self.network, (value) {
    return _then(_self.copyWith(network: value));
  });
}/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData {
    if (_self.auxiliaryData == null) {
    return null;
  }

  return $ParsedTxAuxiliaryDataCopyWith<$Res>(_self.auxiliaryData!, (value) {
    return _then(_self.copyWith(auxiliaryData: value));
  });
}/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptDataHashCopyWith<$Res>? get scriptDataHashHex {
    if (_self.scriptDataHashHex == null) {
    return null;
  }

  return $ScriptDataHashCopyWith<$Res>(_self.scriptDataHashHex!, (value) {
    return _then(_self.copyWith(scriptDataHashHex: value));
  });
}/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedOutputCopyWith<$Res>? get collateralOutput {
    if (_self.collateralOutput == null) {
    return null;
  }

  return $ParsedOutputCopyWith<$Res>(_self.collateralOutput!, (value) {
    return _then(_self.copyWith(collateralOutput: value));
  });
}
}


/// @nodoc


class _ParsedTransaction extends ParsedTransaction {
   _ParsedTransaction({required this.network, required final  List<ParsedInput> inputs, required final  List<ParsedOutput> outputs, required this.fee, this.ttl, final  List<ParsedCertificate>? certificates, final  List<ParsedWithdrawal>? withdrawals, this.auxiliaryData, this.validityIntervalStart, final  List<ParsedAssetGroup>? mint, this.scriptDataHashHex, final  List<ParsedInput>? collateralInputs, final  List<ParsedRequiredSigner>? requiredSigners, this.includeNetworkId, this.collateralOutput, this.totalCollateral, final  List<ParsedInput>? referenceInputs, final  List<ParsedVoterVotes>? votingProcedures, this.treasury, this.donation}): _inputs = inputs,_outputs = outputs,_certificates = certificates,_withdrawals = withdrawals,_mint = mint,_collateralInputs = collateralInputs,_requiredSigners = requiredSigners,_referenceInputs = referenceInputs,_votingProcedures = votingProcedures,super._();
  

@override final  CardanoNetwork network;
 final  List<ParsedInput> _inputs;
@override List<ParsedInput> get inputs {
  if (_inputs is EqualUnmodifiableListView) return _inputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inputs);
}

 final  List<ParsedOutput> _outputs;
@override List<ParsedOutput> get outputs {
  if (_outputs is EqualUnmodifiableListView) return _outputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_outputs);
}

@override final  BigInt fee;
@override final  BigInt? ttl;
 final  List<ParsedCertificate>? _certificates;
@override List<ParsedCertificate>? get certificates {
  final value = _certificates;
  if (value == null) return null;
  if (_certificates is EqualUnmodifiableListView) return _certificates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ParsedWithdrawal>? _withdrawals;
@override List<ParsedWithdrawal>? get withdrawals {
  final value = _withdrawals;
  if (value == null) return null;
  if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ParsedTxAuxiliaryData? auxiliaryData;
@override final  BigInt? validityIntervalStart;
 final  List<ParsedAssetGroup>? _mint;
@override List<ParsedAssetGroup>? get mint {
  final value = _mint;
  if (value == null) return null;
  if (_mint is EqualUnmodifiableListView) return _mint;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ScriptDataHash? scriptDataHashHex;
 final  List<ParsedInput>? _collateralInputs;
@override List<ParsedInput>? get collateralInputs {
  final value = _collateralInputs;
  if (value == null) return null;
  if (_collateralInputs is EqualUnmodifiableListView) return _collateralInputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ParsedRequiredSigner>? _requiredSigners;
@override List<ParsedRequiredSigner>? get requiredSigners {
  final value = _requiredSigners;
  if (value == null) return null;
  if (_requiredSigners is EqualUnmodifiableListView) return _requiredSigners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? includeNetworkId;
@override final  ParsedOutput? collateralOutput;
@override final  BigInt? totalCollateral;
 final  List<ParsedInput>? _referenceInputs;
@override List<ParsedInput>? get referenceInputs {
  final value = _referenceInputs;
  if (value == null) return null;
  if (_referenceInputs is EqualUnmodifiableListView) return _referenceInputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ParsedVoterVotes>? _votingProcedures;
@override List<ParsedVoterVotes>? get votingProcedures {
  final value = _votingProcedures;
  if (value == null) return null;
  if (_votingProcedures is EqualUnmodifiableListView) return _votingProcedures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  BigInt? treasury;
@override final  BigInt? donation;

/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsedTransactionCopyWith<_ParsedTransaction> get copyWith => __$ParsedTransactionCopyWithImpl<_ParsedTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsedTransaction&&(identical(other.network, network) || other.network == network)&&const DeepCollectionEquality().equals(other._inputs, _inputs)&&const DeepCollectionEquality().equals(other._outputs, _outputs)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&const DeepCollectionEquality().equals(other._certificates, _certificates)&&const DeepCollectionEquality().equals(other._withdrawals, _withdrawals)&&(identical(other.auxiliaryData, auxiliaryData) || other.auxiliaryData == auxiliaryData)&&(identical(other.validityIntervalStart, validityIntervalStart) || other.validityIntervalStart == validityIntervalStart)&&const DeepCollectionEquality().equals(other._mint, _mint)&&(identical(other.scriptDataHashHex, scriptDataHashHex) || other.scriptDataHashHex == scriptDataHashHex)&&const DeepCollectionEquality().equals(other._collateralInputs, _collateralInputs)&&const DeepCollectionEquality().equals(other._requiredSigners, _requiredSigners)&&(identical(other.includeNetworkId, includeNetworkId) || other.includeNetworkId == includeNetworkId)&&(identical(other.collateralOutput, collateralOutput) || other.collateralOutput == collateralOutput)&&(identical(other.totalCollateral, totalCollateral) || other.totalCollateral == totalCollateral)&&const DeepCollectionEquality().equals(other._referenceInputs, _referenceInputs)&&const DeepCollectionEquality().equals(other._votingProcedures, _votingProcedures)&&(identical(other.treasury, treasury) || other.treasury == treasury)&&(identical(other.donation, donation) || other.donation == donation));
}


@override
int get hashCode => Object.hashAll([runtimeType,network,const DeepCollectionEquality().hash(_inputs),const DeepCollectionEquality().hash(_outputs),fee,ttl,const DeepCollectionEquality().hash(_certificates),const DeepCollectionEquality().hash(_withdrawals),auxiliaryData,validityIntervalStart,const DeepCollectionEquality().hash(_mint),scriptDataHashHex,const DeepCollectionEquality().hash(_collateralInputs),const DeepCollectionEquality().hash(_requiredSigners),includeNetworkId,collateralOutput,totalCollateral,const DeepCollectionEquality().hash(_referenceInputs),const DeepCollectionEquality().hash(_votingProcedures),treasury,donation]);

@override
String toString() {
  return 'ParsedTransaction(network: $network, inputs: $inputs, outputs: $outputs, fee: $fee, ttl: $ttl, certificates: $certificates, withdrawals: $withdrawals, auxiliaryData: $auxiliaryData, validityIntervalStart: $validityIntervalStart, mint: $mint, scriptDataHashHex: $scriptDataHashHex, collateralInputs: $collateralInputs, requiredSigners: $requiredSigners, includeNetworkId: $includeNetworkId, collateralOutput: $collateralOutput, totalCollateral: $totalCollateral, referenceInputs: $referenceInputs, votingProcedures: $votingProcedures, treasury: $treasury, donation: $donation)';
}


}

/// @nodoc
abstract mixin class _$ParsedTransactionCopyWith<$Res> implements $ParsedTransactionCopyWith<$Res> {
  factory _$ParsedTransactionCopyWith(_ParsedTransaction value, $Res Function(_ParsedTransaction) _then) = __$ParsedTransactionCopyWithImpl;
@override @useResult
$Res call({
 CardanoNetwork network, List<ParsedInput> inputs, List<ParsedOutput> outputs, BigInt fee, BigInt? ttl, List<ParsedCertificate>? certificates, List<ParsedWithdrawal>? withdrawals, ParsedTxAuxiliaryData? auxiliaryData, BigInt? validityIntervalStart, List<ParsedAssetGroup>? mint, ScriptDataHash? scriptDataHashHex, List<ParsedInput>? collateralInputs, List<ParsedRequiredSigner>? requiredSigners, bool? includeNetworkId, ParsedOutput? collateralOutput, BigInt? totalCollateral, List<ParsedInput>? referenceInputs, List<ParsedVoterVotes>? votingProcedures, BigInt? treasury, BigInt? donation
});


@override $CardanoNetworkCopyWith<$Res> get network;@override $ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData;@override $ScriptDataHashCopyWith<$Res>? get scriptDataHashHex;@override $ParsedOutputCopyWith<$Res>? get collateralOutput;

}
/// @nodoc
class __$ParsedTransactionCopyWithImpl<$Res>
    implements _$ParsedTransactionCopyWith<$Res> {
  __$ParsedTransactionCopyWithImpl(this._self, this._then);

  final _ParsedTransaction _self;
  final $Res Function(_ParsedTransaction) _then;

/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? network = null,Object? inputs = null,Object? outputs = null,Object? fee = null,Object? ttl = freezed,Object? certificates = freezed,Object? withdrawals = freezed,Object? auxiliaryData = freezed,Object? validityIntervalStart = freezed,Object? mint = freezed,Object? scriptDataHashHex = freezed,Object? collateralInputs = freezed,Object? requiredSigners = freezed,Object? includeNetworkId = freezed,Object? collateralOutput = freezed,Object? totalCollateral = freezed,Object? referenceInputs = freezed,Object? votingProcedures = freezed,Object? treasury = freezed,Object? donation = freezed,}) {
  return _then(_ParsedTransaction(
network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as CardanoNetwork,inputs: null == inputs ? _self._inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>,outputs: null == outputs ? _self._outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<ParsedOutput>,fee: null == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as BigInt,ttl: freezed == ttl ? _self.ttl : ttl // ignore: cast_nullable_to_non_nullable
as BigInt?,certificates: freezed == certificates ? _self._certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<ParsedCertificate>?,withdrawals: freezed == withdrawals ? _self._withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<ParsedWithdrawal>?,auxiliaryData: freezed == auxiliaryData ? _self.auxiliaryData : auxiliaryData // ignore: cast_nullable_to_non_nullable
as ParsedTxAuxiliaryData?,validityIntervalStart: freezed == validityIntervalStart ? _self.validityIntervalStart : validityIntervalStart // ignore: cast_nullable_to_non_nullable
as BigInt?,mint: freezed == mint ? _self._mint : mint // ignore: cast_nullable_to_non_nullable
as List<ParsedAssetGroup>?,scriptDataHashHex: freezed == scriptDataHashHex ? _self.scriptDataHashHex : scriptDataHashHex // ignore: cast_nullable_to_non_nullable
as ScriptDataHash?,collateralInputs: freezed == collateralInputs ? _self._collateralInputs : collateralInputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>?,requiredSigners: freezed == requiredSigners ? _self._requiredSigners : requiredSigners // ignore: cast_nullable_to_non_nullable
as List<ParsedRequiredSigner>?,includeNetworkId: freezed == includeNetworkId ? _self.includeNetworkId : includeNetworkId // ignore: cast_nullable_to_non_nullable
as bool?,collateralOutput: freezed == collateralOutput ? _self.collateralOutput : collateralOutput // ignore: cast_nullable_to_non_nullable
as ParsedOutput?,totalCollateral: freezed == totalCollateral ? _self.totalCollateral : totalCollateral // ignore: cast_nullable_to_non_nullable
as BigInt?,referenceInputs: freezed == referenceInputs ? _self._referenceInputs : referenceInputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>?,votingProcedures: freezed == votingProcedures ? _self._votingProcedures : votingProcedures // ignore: cast_nullable_to_non_nullable
as List<ParsedVoterVotes>?,treasury: freezed == treasury ? _self.treasury : treasury // ignore: cast_nullable_to_non_nullable
as BigInt?,donation: freezed == donation ? _self.donation : donation // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}

/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoNetworkCopyWith<$Res> get network {
  
  return $CardanoNetworkCopyWith<$Res>(_self.network, (value) {
    return _then(_self.copyWith(network: value));
  });
}/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData {
    if (_self.auxiliaryData == null) {
    return null;
  }

  return $ParsedTxAuxiliaryDataCopyWith<$Res>(_self.auxiliaryData!, (value) {
    return _then(_self.copyWith(auxiliaryData: value));
  });
}/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptDataHashCopyWith<$Res>? get scriptDataHashHex {
    if (_self.scriptDataHashHex == null) {
    return null;
  }

  return $ScriptDataHashCopyWith<$Res>(_self.scriptDataHashHex!, (value) {
    return _then(_self.copyWith(scriptDataHashHex: value));
  });
}/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedOutputCopyWith<$Res>? get collateralOutput {
    if (_self.collateralOutput == null) {
    return null;
  }

  return $ParsedOutputCopyWith<$Res>(_self.collateralOutput!, (value) {
    return _then(_self.copyWith(collateralOutput: value));
  });
}
}

// dart format on
