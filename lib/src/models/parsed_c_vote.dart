import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'parsed_c_vote.freezed.dart';

@freezed
sealed class ParsedCVote with _$ParsedCVote {
  ParsedCVote._() {
    validateHexString(voteCastDataHex, 'voteCastDataHex');
    validateBIP32Path(witnessPath, 'witnessPath');
  }

  factory ParsedCVote({
    required String voteCastDataHex,
    required LedgerSigningPath witnessPath,
  }) = _ParsedCVote;
}
