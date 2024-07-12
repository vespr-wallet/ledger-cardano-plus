// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedTransaction {

 CardanoNetwork get network => throw _privateConstructorUsedError; List<ParsedInput> get inputs => throw _privateConstructorUsedError; List<ParsedOutput> get outputs => throw _privateConstructorUsedError; BigInt get fee => throw _privateConstructorUsedError; BigInt? get ttl => throw _privateConstructorUsedError; List<ParsedCertificate>? get certificates => throw _privateConstructorUsedError; List<ParsedWithdrawal>? get withdrawals => throw _privateConstructorUsedError; ParsedTxAuxiliaryData? get auxiliaryData => throw _privateConstructorUsedError; BigInt? get validityIntervalStart => throw _privateConstructorUsedError; List<ParsedAssetGroup>? get mint => throw _privateConstructorUsedError; ScriptDataHash? get scriptDataHashHex => throw _privateConstructorUsedError; List<ParsedInput>? get collateralInputs => throw _privateConstructorUsedError; List<ParsedRequiredSigner>? get requiredSigners => throw _privateConstructorUsedError; bool? get includeNetworkId => throw _privateConstructorUsedError; ParsedOutput? get collateralOutput => throw _privateConstructorUsedError; BigInt? get totalCollateral => throw _privateConstructorUsedError; List<ParsedInput>? get referenceInputs => throw _privateConstructorUsedError; List<ParsedVoterVotes>? get votingProcedures => throw _privateConstructorUsedError; BigInt? get treasury => throw _privateConstructorUsedError; BigInt? get donation => throw _privateConstructorUsedError;







/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$ParsedTransactionCopyWith<ParsedTransaction> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ParsedTransactionCopyWith<$Res>  {
  factory $ParsedTransactionCopyWith(ParsedTransaction value, $Res Function(ParsedTransaction) then) = _$ParsedTransactionCopyWithImpl<$Res, ParsedTransaction>;
@useResult
$Res call({
 CardanoNetwork network, List<ParsedInput> inputs, List<ParsedOutput> outputs, BigInt fee, BigInt? ttl, List<ParsedCertificate>? certificates, List<ParsedWithdrawal>? withdrawals, ParsedTxAuxiliaryData? auxiliaryData, BigInt? validityIntervalStart, List<ParsedAssetGroup>? mint, ScriptDataHash? scriptDataHashHex, List<ParsedInput>? collateralInputs, List<ParsedRequiredSigner>? requiredSigners, bool? includeNetworkId, ParsedOutput? collateralOutput, BigInt? totalCollateral, List<ParsedInput>? referenceInputs, List<ParsedVoterVotes>? votingProcedures, BigInt? treasury, BigInt? donation
});


$CardanoNetworkCopyWith<$Res> get network;$ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData;$ScriptDataHashCopyWith<$Res>? get scriptDataHashHex;$ParsedOutputCopyWith<$Res>? get collateralOutput;
}

/// @nodoc
class _$ParsedTransactionCopyWithImpl<$Res,$Val extends ParsedTransaction> implements $ParsedTransactionCopyWith<$Res> {
  _$ParsedTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? network = null,Object? inputs = null,Object? outputs = null,Object? fee = null,Object? ttl = freezed,Object? certificates = freezed,Object? withdrawals = freezed,Object? auxiliaryData = freezed,Object? validityIntervalStart = freezed,Object? mint = freezed,Object? scriptDataHashHex = freezed,Object? collateralInputs = freezed,Object? requiredSigners = freezed,Object? includeNetworkId = freezed,Object? collateralOutput = freezed,Object? totalCollateral = freezed,Object? referenceInputs = freezed,Object? votingProcedures = freezed,Object? treasury = freezed,Object? donation = freezed,}) {
  return _then(_value.copyWith(
network: null == network ? _value.network : network // ignore: cast_nullable_to_non_nullable
as CardanoNetwork,inputs: null == inputs ? _value.inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>,outputs: null == outputs ? _value.outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<ParsedOutput>,fee: null == fee ? _value.fee : fee // ignore: cast_nullable_to_non_nullable
as BigInt,ttl: freezed == ttl ? _value.ttl : ttl // ignore: cast_nullable_to_non_nullable
as BigInt?,certificates: freezed == certificates ? _value.certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<ParsedCertificate>?,withdrawals: freezed == withdrawals ? _value.withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<ParsedWithdrawal>?,auxiliaryData: freezed == auxiliaryData ? _value.auxiliaryData : auxiliaryData // ignore: cast_nullable_to_non_nullable
as ParsedTxAuxiliaryData?,validityIntervalStart: freezed == validityIntervalStart ? _value.validityIntervalStart : validityIntervalStart // ignore: cast_nullable_to_non_nullable
as BigInt?,mint: freezed == mint ? _value.mint : mint // ignore: cast_nullable_to_non_nullable
as List<ParsedAssetGroup>?,scriptDataHashHex: freezed == scriptDataHashHex ? _value.scriptDataHashHex : scriptDataHashHex // ignore: cast_nullable_to_non_nullable
as ScriptDataHash?,collateralInputs: freezed == collateralInputs ? _value.collateralInputs : collateralInputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>?,requiredSigners: freezed == requiredSigners ? _value.requiredSigners : requiredSigners // ignore: cast_nullable_to_non_nullable
as List<ParsedRequiredSigner>?,includeNetworkId: freezed == includeNetworkId ? _value.includeNetworkId : includeNetworkId // ignore: cast_nullable_to_non_nullable
as bool?,collateralOutput: freezed == collateralOutput ? _value.collateralOutput : collateralOutput // ignore: cast_nullable_to_non_nullable
as ParsedOutput?,totalCollateral: freezed == totalCollateral ? _value.totalCollateral : totalCollateral // ignore: cast_nullable_to_non_nullable
as BigInt?,referenceInputs: freezed == referenceInputs ? _value.referenceInputs : referenceInputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>?,votingProcedures: freezed == votingProcedures ? _value.votingProcedures : votingProcedures // ignore: cast_nullable_to_non_nullable
as List<ParsedVoterVotes>?,treasury: freezed == treasury ? _value.treasury : treasury // ignore: cast_nullable_to_non_nullable
as BigInt?,donation: freezed == donation ? _value.donation : donation // ignore: cast_nullable_to_non_nullable
as BigInt?,
  )as $Val);
}
/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardanoNetworkCopyWith<$Res> get network {
  
  return $CardanoNetworkCopyWith<$Res>(_value.network, (value) {
    return _then(_value.copyWith(network: value) as $Val);
  });
}/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData {
    if (_value.auxiliaryData == null) {
    return null;
  }

  return $ParsedTxAuxiliaryDataCopyWith<$Res>(_value.auxiliaryData!, (value) {
    return _then(_value.copyWith(auxiliaryData: value) as $Val);
  });
}/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptDataHashCopyWith<$Res>? get scriptDataHashHex {
    if (_value.scriptDataHashHex == null) {
    return null;
  }

  return $ScriptDataHashCopyWith<$Res>(_value.scriptDataHashHex!, (value) {
    return _then(_value.copyWith(scriptDataHashHex: value) as $Val);
  });
}/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
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
abstract class _$$ParsedTransactionImplCopyWith<$Res> implements $ParsedTransactionCopyWith<$Res> {
  factory _$$ParsedTransactionImplCopyWith(_$ParsedTransactionImpl value, $Res Function(_$ParsedTransactionImpl) then) = __$$ParsedTransactionImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CardanoNetwork network, List<ParsedInput> inputs, List<ParsedOutput> outputs, BigInt fee, BigInt? ttl, List<ParsedCertificate>? certificates, List<ParsedWithdrawal>? withdrawals, ParsedTxAuxiliaryData? auxiliaryData, BigInt? validityIntervalStart, List<ParsedAssetGroup>? mint, ScriptDataHash? scriptDataHashHex, List<ParsedInput>? collateralInputs, List<ParsedRequiredSigner>? requiredSigners, bool? includeNetworkId, ParsedOutput? collateralOutput, BigInt? totalCollateral, List<ParsedInput>? referenceInputs, List<ParsedVoterVotes>? votingProcedures, BigInt? treasury, BigInt? donation
});


@override $CardanoNetworkCopyWith<$Res> get network;@override $ParsedTxAuxiliaryDataCopyWith<$Res>? get auxiliaryData;@override $ScriptDataHashCopyWith<$Res>? get scriptDataHashHex;@override $ParsedOutputCopyWith<$Res>? get collateralOutput;
}

/// @nodoc
class __$$ParsedTransactionImplCopyWithImpl<$Res> extends _$ParsedTransactionCopyWithImpl<$Res, _$ParsedTransactionImpl> implements _$$ParsedTransactionImplCopyWith<$Res> {
  __$$ParsedTransactionImplCopyWithImpl(_$ParsedTransactionImpl _value, $Res Function(_$ParsedTransactionImpl) _then)
      : super(_value, _then);


/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? network = null,Object? inputs = null,Object? outputs = null,Object? fee = null,Object? ttl = freezed,Object? certificates = freezed,Object? withdrawals = freezed,Object? auxiliaryData = freezed,Object? validityIntervalStart = freezed,Object? mint = freezed,Object? scriptDataHashHex = freezed,Object? collateralInputs = freezed,Object? requiredSigners = freezed,Object? includeNetworkId = freezed,Object? collateralOutput = freezed,Object? totalCollateral = freezed,Object? referenceInputs = freezed,Object? votingProcedures = freezed,Object? treasury = freezed,Object? donation = freezed,}) {
  return _then(_$ParsedTransactionImpl(
network: null == network ? _value.network : network // ignore: cast_nullable_to_non_nullable
as CardanoNetwork,inputs: null == inputs ? _value._inputs : inputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>,outputs: null == outputs ? _value._outputs : outputs // ignore: cast_nullable_to_non_nullable
as List<ParsedOutput>,fee: null == fee ? _value.fee : fee // ignore: cast_nullable_to_non_nullable
as BigInt,ttl: freezed == ttl ? _value.ttl : ttl // ignore: cast_nullable_to_non_nullable
as BigInt?,certificates: freezed == certificates ? _value._certificates : certificates // ignore: cast_nullable_to_non_nullable
as List<ParsedCertificate>?,withdrawals: freezed == withdrawals ? _value._withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<ParsedWithdrawal>?,auxiliaryData: freezed == auxiliaryData ? _value.auxiliaryData : auxiliaryData // ignore: cast_nullable_to_non_nullable
as ParsedTxAuxiliaryData?,validityIntervalStart: freezed == validityIntervalStart ? _value.validityIntervalStart : validityIntervalStart // ignore: cast_nullable_to_non_nullable
as BigInt?,mint: freezed == mint ? _value._mint : mint // ignore: cast_nullable_to_non_nullable
as List<ParsedAssetGroup>?,scriptDataHashHex: freezed == scriptDataHashHex ? _value.scriptDataHashHex : scriptDataHashHex // ignore: cast_nullable_to_non_nullable
as ScriptDataHash?,collateralInputs: freezed == collateralInputs ? _value._collateralInputs : collateralInputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>?,requiredSigners: freezed == requiredSigners ? _value._requiredSigners : requiredSigners // ignore: cast_nullable_to_non_nullable
as List<ParsedRequiredSigner>?,includeNetworkId: freezed == includeNetworkId ? _value.includeNetworkId : includeNetworkId // ignore: cast_nullable_to_non_nullable
as bool?,collateralOutput: freezed == collateralOutput ? _value.collateralOutput : collateralOutput // ignore: cast_nullable_to_non_nullable
as ParsedOutput?,totalCollateral: freezed == totalCollateral ? _value.totalCollateral : totalCollateral // ignore: cast_nullable_to_non_nullable
as BigInt?,referenceInputs: freezed == referenceInputs ? _value._referenceInputs : referenceInputs // ignore: cast_nullable_to_non_nullable
as List<ParsedInput>?,votingProcedures: freezed == votingProcedures ? _value._votingProcedures : votingProcedures // ignore: cast_nullable_to_non_nullable
as List<ParsedVoterVotes>?,treasury: freezed == treasury ? _value.treasury : treasury // ignore: cast_nullable_to_non_nullable
as BigInt?,donation: freezed == donation ? _value.donation : donation // ignore: cast_nullable_to_non_nullable
as BigInt?,
  ));
}


}

/// @nodoc


class _$ParsedTransactionImpl extends _ParsedTransaction  {
   _$ParsedTransactionImpl({required this.network, required final  List<ParsedInput> inputs, required final  List<ParsedOutput> outputs, required this.fee, this.ttl, final  List<ParsedCertificate>? certificates, final  List<ParsedWithdrawal>? withdrawals, this.auxiliaryData, this.validityIntervalStart, final  List<ParsedAssetGroup>? mint, this.scriptDataHashHex, final  List<ParsedInput>? collateralInputs, final  List<ParsedRequiredSigner>? requiredSigners, this.includeNetworkId, this.collateralOutput, this.totalCollateral, final  List<ParsedInput>? referenceInputs, final  List<ParsedVoterVotes>? votingProcedures, this.treasury, this.donation}): _inputs = inputs,_outputs = outputs,_certificates = certificates,_withdrawals = withdrawals,_mint = mint,_collateralInputs = collateralInputs,_requiredSigners = requiredSigners,_referenceInputs = referenceInputs,_votingProcedures = votingProcedures,super._();

  

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

@override
String toString() {
  return 'ParsedTransaction(network: $network, inputs: $inputs, outputs: $outputs, fee: $fee, ttl: $ttl, certificates: $certificates, withdrawals: $withdrawals, auxiliaryData: $auxiliaryData, validityIntervalStart: $validityIntervalStart, mint: $mint, scriptDataHashHex: $scriptDataHashHex, collateralInputs: $collateralInputs, requiredSigners: $requiredSigners, includeNetworkId: $includeNetworkId, collateralOutput: $collateralOutput, totalCollateral: $totalCollateral, referenceInputs: $referenceInputs, votingProcedures: $votingProcedures, treasury: $treasury, donation: $donation)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$ParsedTransactionImpl&&(identical(other.network, network) || other.network == network)&&const DeepCollectionEquality().equals(other._inputs, _inputs)&&const DeepCollectionEquality().equals(other._outputs, _outputs)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.ttl, ttl) || other.ttl == ttl)&&const DeepCollectionEquality().equals(other._certificates, _certificates)&&const DeepCollectionEquality().equals(other._withdrawals, _withdrawals)&&(identical(other.auxiliaryData, auxiliaryData) || other.auxiliaryData == auxiliaryData)&&(identical(other.validityIntervalStart, validityIntervalStart) || other.validityIntervalStart == validityIntervalStart)&&const DeepCollectionEquality().equals(other._mint, _mint)&&(identical(other.scriptDataHashHex, scriptDataHashHex) || other.scriptDataHashHex == scriptDataHashHex)&&const DeepCollectionEquality().equals(other._collateralInputs, _collateralInputs)&&const DeepCollectionEquality().equals(other._requiredSigners, _requiredSigners)&&(identical(other.includeNetworkId, includeNetworkId) || other.includeNetworkId == includeNetworkId)&&(identical(other.collateralOutput, collateralOutput) || other.collateralOutput == collateralOutput)&&(identical(other.totalCollateral, totalCollateral) || other.totalCollateral == totalCollateral)&&const DeepCollectionEquality().equals(other._referenceInputs, _referenceInputs)&&const DeepCollectionEquality().equals(other._votingProcedures, _votingProcedures)&&(identical(other.treasury, treasury) || other.treasury == treasury)&&(identical(other.donation, donation) || other.donation == donation));
}


@override
int get hashCode => Object.hashAll([runtimeType,network,const DeepCollectionEquality().hash(_inputs),const DeepCollectionEquality().hash(_outputs),fee,ttl,const DeepCollectionEquality().hash(_certificates),const DeepCollectionEquality().hash(_withdrawals),auxiliaryData,validityIntervalStart,const DeepCollectionEquality().hash(_mint),scriptDataHashHex,const DeepCollectionEquality().hash(_collateralInputs),const DeepCollectionEquality().hash(_requiredSigners),includeNetworkId,collateralOutput,totalCollateral,const DeepCollectionEquality().hash(_referenceInputs),const DeepCollectionEquality().hash(_votingProcedures),treasury,donation]);

/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ParsedTransactionImplCopyWith<_$ParsedTransactionImpl> get copyWith => __$$ParsedTransactionImplCopyWithImpl<_$ParsedTransactionImpl>(this, _$identity);








}


abstract class _ParsedTransaction extends ParsedTransaction {
   factory _ParsedTransaction({required final  CardanoNetwork network, required final  List<ParsedInput> inputs, required final  List<ParsedOutput> outputs, required final  BigInt fee, final  BigInt? ttl, final  List<ParsedCertificate>? certificates, final  List<ParsedWithdrawal>? withdrawals, final  ParsedTxAuxiliaryData? auxiliaryData, final  BigInt? validityIntervalStart, final  List<ParsedAssetGroup>? mint, final  ScriptDataHash? scriptDataHashHex, final  List<ParsedInput>? collateralInputs, final  List<ParsedRequiredSigner>? requiredSigners, final  bool? includeNetworkId, final  ParsedOutput? collateralOutput, final  BigInt? totalCollateral, final  List<ParsedInput>? referenceInputs, final  List<ParsedVoterVotes>? votingProcedures, final  BigInt? treasury, final  BigInt? donation}) = _$ParsedTransactionImpl;
   _ParsedTransaction._(): super._();

  

@override CardanoNetwork get network;@override List<ParsedInput> get inputs;@override List<ParsedOutput> get outputs;@override BigInt get fee;@override BigInt? get ttl;@override List<ParsedCertificate>? get certificates;@override List<ParsedWithdrawal>? get withdrawals;@override ParsedTxAuxiliaryData? get auxiliaryData;@override BigInt? get validityIntervalStart;@override List<ParsedAssetGroup>? get mint;@override ScriptDataHash? get scriptDataHashHex;@override List<ParsedInput>? get collateralInputs;@override List<ParsedRequiredSigner>? get requiredSigners;@override bool? get includeNetworkId;@override ParsedOutput? get collateralOutput;@override BigInt? get totalCollateral;@override List<ParsedInput>? get referenceInputs;@override List<ParsedVoterVotes>? get votingProcedures;@override BigInt? get treasury;@override BigInt? get donation;
/// Create a copy of ParsedTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$ParsedTransactionImplCopyWith<_$ParsedTransactionImpl> get copyWith => throw _privateConstructorUsedError;

}
