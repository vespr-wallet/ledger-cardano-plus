import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/constants.dart";
import "../utils/utilities.dart";
import "ledger_signing_path.dart";

part "parsed_drep.freezed.dart";

@freezed
sealed class ParsedDRep with _$ParsedDRep {
  ParsedDRep._() {
    final thisClass = this;
    final void Function() assertInvoker = switch (thisClass) {
      DRepKeyPath() => () {
        validateBIP32Path(thisClass.path, "path");
      },
      DRepKeyHash() => () {
        validateExactHexString(thisClass.keyHashHex, "keyHashHex", keyHashLength);
      },
      DRepScriptHash() => () {
        validateExactHexString(thisClass.scriptHashHex, "scriptHashHex", scriptHashLength);
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

  @override
  late final int serializationType = switch (this) {
    DRepKeyHash() => 0,
    DRepKeyPath() => 100,
    DRepScriptHash() => 1,
    DRepAbstain() => 2,
    DRepNoConfidence() => 3,
  };
}
