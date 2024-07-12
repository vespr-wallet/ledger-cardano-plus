import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'parsed_input.freezed.dart';

@freezed
sealed class ParsedInput with _$ParsedInput {
  ParsedInput._() {
    validateExactHexString(txHashHex, 'txHashHex', txHashHexMaxLength);
    validateUint32(outputIndex, 'outputIndex');
    validateBIP32Path(path, 'path');
  }
  factory ParsedInput({
    required String txHashHex,
    required int outputIndex,
    required LedgerSigningPath? path,
  }) = _ParsedInput;
}
