import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "parsed_c_vote.freezed.dart";

@freezed
sealed class ParsedCVote with _$ParsedCVote {
  factory ParsedCVote({
    required String voteCastDataHex,
    required LedgerSigningPath witnessPath,
  }) = _ParsedCVote;
  ParsedCVote._() {
    validateHexString(voteCastDataHex, "voteCastDataHex");
    validateBIP32Path(witnessPath, "witnessPath");
  }
}
