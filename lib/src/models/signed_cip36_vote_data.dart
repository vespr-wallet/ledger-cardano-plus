import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "signed_cip36_vote_data.freezed.dart";

@freezed
sealed class SignedCIP36VoteData with _$SignedCIP36VoteData {

  factory SignedCIP36VoteData({
    required String dataHashHex,
    required LedgerSigningPath witnessPath,
    required String witnessSignatureHex,
  }) = _SignedCIP36VoteData;
  SignedCIP36VoteData._() {
    validateHexString(dataHashHex, "dataHashHex");
    validateHexString(witnessSignatureHex, "witnessSignatureHex");
  }
}
