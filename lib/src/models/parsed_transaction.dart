import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/parsed_asset_group.dart';
import 'package:ledger_cardano/src/models/parsed_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_input.dart';
import 'package:ledger_cardano/src/models/parsed_network.dart';
import 'package:ledger_cardano/src/models/parsed_output.dart';
import 'package:ledger_cardano/src/models/parsed_required_signer.dart';
import 'package:ledger_cardano/src/models/parsed_tx_auxiliary_data.dart';
import 'package:ledger_cardano/src/models/parsed_voter_votes.dart';
import 'package:ledger_cardano/src/models/parsed_withdrawal.dart';
import 'package:ledger_cardano/src/models/script_data_hash.dart';

part 'parsed_transaction.freezed.dart';

@freezed
sealed class ParsedTransaction with _$ParsedTransaction {
  ParsedTransaction._();

  factory ParsedTransaction({
    required ParsedNetwork network,
    required List<ParsedInput> inputs,
    required List<ParsedOutput> outputs,
    required BigInt fee,
    BigInt? ttl,
    List<ParsedCertificate>? certificates,
    List<ParsedWithdrawal>? withdrawals,
    ParsedTxAuxiliaryData? auxiliaryData,
    BigInt? validityIntervalStart,
    List<ParsedAssetGroup>? mint,
    ScriptDataHash? scriptDataHashHex,
    List<ParsedInput>? collateralInputs,
    List<ParsedRequiredSigner>? requiredSigners,
    bool? includeNetworkId,
    ParsedOutput? collateralOutput,
    BigInt? totalCollateral,
    List<ParsedInput>? referenceInputs,
    List<ParsedVoterVotes>? votingProcedures,
    BigInt? treasury,
    BigInt? donation,
  }) = _ParsedTransaction;
}
