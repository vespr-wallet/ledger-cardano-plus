import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/cardano_networks.dart";
import "../utils/utilities.dart";
import "parsed_asset_group.dart";
import "parsed_certificate.dart";
import "parsed_input.dart";
import "parsed_output.dart";
import "parsed_required_signer.dart";
import "parsed_tx_auxiliary_data.dart";
import "parsed_voter_votes.dart";
import "parsed_withdrawal.dart";
import "script_data_hash.dart";

part "parsed_transaction.freezed.dart";

@freezed
sealed class ParsedTransaction with _$ParsedTransaction {
  factory ParsedTransaction({
    required CardanoNetwork network,
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
  ParsedTransaction._() {
    validateUint64(fee, "fee");
    validateUint64(ttl, "ttl");
    validateUint64(validityIntervalStart, "validityIntervalStart");
    validateUint64(totalCollateral, "totalCollateral");
    validateUint64(treasury, "treasury");
    validateUint64(donation, "donation");
  }
}
