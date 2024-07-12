import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'parsed_gov_action_id.freezed.dart';

@freezed
sealed class ParsedGovActionId with _$ParsedGovActionId {
  ParsedGovActionId._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      _ParsedGovActionId() => () {
          validateExactHexString(thisClass.txHashHex, 'txHashHex', txHashLength * 2);
          validateUint32(thisClass.govActionIndex, 'govActionIndex');
        },
    };
    assertinvoker();
  }

  factory ParsedGovActionId({
    required String txHashHex,
    required int govActionIndex,
  }) = _ParsedGovActionId;
}
