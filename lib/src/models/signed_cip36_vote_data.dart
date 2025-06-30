import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'signed_cip36_vote_data.freezed.dart';

@freezed
sealed class SignedCIP36VoteData with _$SignedCIP36VoteData {
  SignedCIP36VoteData._() {
    validateHexString(dataHashHex, 'dataHashHex');
    validateHexString(witnessSignatureHex, 'witnessSignatureHex');
  }

  factory SignedCIP36VoteData({
    required String dataHashHex,
    required LedgerSigningPath witnessPath,
    required String witnessSignatureHex,
  }) = _SignedCIP36VoteData;
}
