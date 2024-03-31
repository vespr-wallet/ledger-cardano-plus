import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/asset_group.dart';
import 'package:ledger_cardano/src/models/certificate.dart';
import 'package:ledger_cardano/src/models/network.dart';
import 'package:ledger_cardano/src/models/parsed_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_withdrawal.dart';
import 'package:ledger_cardano/src/models/parsed_tx_auxiliary_data.dart';
import 'package:ledger_cardano/src/models/parsed_required_signer.dart';
import 'package:ledger_cardano/src/models/parsed_voter_votes.dart';
import 'package:ledger_cardano/src/models/script_data_hash.dart';
import 'package:ledger_cardano/src/models/tx_input.dart';
import 'package:ledger_cardano/src/models/tx_output.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  Transaction._();

  factory Transaction({
    required Network network,
    required List<TxInput> inputs,
    required List<TxOutput> outputs,
    required BigInt fee,
    BigInt? ttl,
    List<Certificate>? certificates,
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
    BigInt? donation,
  }) = _Transaction;
}
