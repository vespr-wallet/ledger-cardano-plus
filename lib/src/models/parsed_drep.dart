import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'parsed_drep.freezed.dart';

@freezed
sealed class ParsedDRep with _$ParsedDRep {
  ParsedDRep._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      DRepKeyPath() => () {
          validateBIP32Path(thisClass.path, 'path');
        },
      DRepKeyHash() => () {
          validateExactHexString(thisClass.keyHashHex, 'keyHashHex', keyHashLength);
        },
      DRepScriptHash() => () {
          validateExactHexString(thisClass.scriptHashHex, 'scriptHashHex', scriptDataHashLength);
        },
      DRepAbstain() => () {},
      DRepNoConfidence() => () {},
    };

    assertInvoker();
  }

  factory ParsedDRep.keyPath({
    required LedgerSigningPath path,
  }) = DRepKeyPath;

  factory ParsedDRep.keyHash({
    required String keyHashHex,
  }) = DRepKeyHash;

  factory ParsedDRep.scriptHash({
    required String scriptHashHex,
  }) = DRepScriptHash;

  factory ParsedDRep.abstain() = DRepAbstain;

  factory ParsedDRep.noConfidence() = DRepNoConfidence;

  late final int dRepValue = switch (this) {
    DRepKeyPath() => 0,
    DRepKeyHash() => 1,
    DRepScriptHash() => 2,
    DRepAbstain() => 3,
    DRepNoConfidence() => 4,
  };
}
