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
    String? ttl,
    required List<ParsedCertificate> certificates,
    required List<ParsedWithdrawal> withdrawals,
    ParsedTxAuxiliaryData? auxiliaryData,
    String? validityIntervalStart,
    List<ParsedAssetGroup>? mint,
    ScriptDataHash? scriptDataHashHex,
    required List<ParsedInput> collateralInputs,
    required List<ParsedRequiredSigner> requiredSigners,
    required bool includeNetworkId,
    ParsedOutput? collateralOutput,
    BigInt? totalCollateral,
    required List<ParsedInput> referenceInputs,
    required List<ParsedVoterVotes> votingProcedures,
    BigInt? treasury,
    BigInt? donation,
  }) = _ParsedTransaction;
}
