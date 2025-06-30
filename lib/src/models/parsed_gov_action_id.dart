import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/constants.dart";
import "../utils/utilities.dart";

part "parsed_gov_action_id.freezed.dart";

@freezed
sealed class ParsedGovActionId with _$ParsedGovActionId {
  factory ParsedGovActionId({
    required String txHashHex,
    required int govActionIndex,
  }) = _ParsedGovActionId;
  ParsedGovActionId._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      _ParsedGovActionId() => () {
          validateExactHexString(thisClass.txHashHex, "txHashHex", txHashLength * 2);
          validateUint32(thisClass.govActionIndex, "govActionIndex");
        },
    };
    assertinvoker();
  }
}
