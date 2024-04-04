import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'parsed_input.freezed.dart';

@freezed
sealed class ParsedInput with _$ParsedInput {
  ParsedInput._() {
    // Validate that txHashHex represents 32 bytes, meaning it should be 64 characters long
    if (txHashHex.length != txHashHexMaxLength) {
      throw ValidationException('txHashHex must represent 32 bytes, thus should be 64 characters long');
    }
    // Validate that outputIndex is a valid unsigned 32-bit integer
    if (outputIndex < 0 || outputIndex > max32BitValue) {
      throw ValidationException('outputIndex must be a valid unsigned 32-bit integer');
    }
    // Validate that path is a valid BIP32 path
    validateBIP32Path(path, 'path');
  }
  factory ParsedInput({
    required String txHashHex,
    required int outputIndex,
    List<int>? path,
  }) = _ParsedInput;
}
