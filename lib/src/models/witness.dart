import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'witness.freezed.dart';

@freezed
sealed class Witness with _$Witness {
  Witness._() {
    validateBIP32Path(path, 'path');
    validateHexString(witnessSignatureHex, 'witnessSignatureHex');
  }

  factory Witness({
    required List<int> path,
    required String witnessSignatureHex,
  }) = _Witness;
}
