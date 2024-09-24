import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'parsed_voter.freezed.dart';

@freezed
sealed class ParsedVoter with _$ParsedVoter {
  ParsedVoter._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      CommitteeKeyHash() => () => validateExactHexString(
          thisClass.keyHashHex, 'keyHashHex', keyHashLength),
      CommitteeKeyPath() => () =>
          validateBIP32Path(thisClass.keyPath, 'keyPath'),
      CommitteeScriptHash() => () => validateExactHexString(
          thisClass.scriptHashHex, 'scriptHashHex', scriptHashLength),
      DrepKeyHash() => () => validateExactHexString(
          thisClass.keyHashHex, 'keyHashHex', keyHashLength),
      DrepKeyPath() => () => validateBIP32Path(thisClass.keyPath, 'keyPath'),
      DrepScriptHash() => () => validateExactHexString(
          thisClass.scriptHashHex, 'scriptHashHex', scriptHashLength),
      StakePoolKeyHash() => () => validateExactHexString(
          thisClass.keyHashHex, 'keyHashHex', keyHashLength),
      StakePoolKeyPath() => () =>
          validateBIP32Path(thisClass.keyPath, 'keyPath'),
    };
    assertinvoker();
  }

  factory ParsedVoter.committeeKeyHash({
    required String keyHashHex,
  }) = CommitteeKeyHash;

  factory ParsedVoter.committeeKeyPath({
    required LedgerSigningPath keyPath,
  }) = CommitteeKeyPath;

  factory ParsedVoter.committeeScriptHash({
    required String scriptHashHex,
  }) = CommitteeScriptHash;

  factory ParsedVoter.drepKeyHash({
    required String keyHashHex,
  }) = DrepKeyHash;

  factory ParsedVoter.drepKeyPath({
    required LedgerSigningPath keyPath,
  }) = DrepKeyPath;

  factory ParsedVoter.drepScriptHash({
    required String scriptHashHex,
  }) = DrepScriptHash;

  factory ParsedVoter.stakePoolKeyHash({
    required String keyHashHex,
  }) = StakePoolKeyHash;

  factory ParsedVoter.stakePoolKeyPath({
    required LedgerSigningPath keyPath,
  }) = StakePoolKeyPath;

  late final int voterValue = switch (this) {
    CommitteeKeyHash() => 0,
    CommitteeKeyPath() => 100,
    CommitteeScriptHash() => 1,
    DrepKeyHash() => 2,
    DrepKeyPath() => 102,
    DrepScriptHash() => 3,
    StakePoolKeyHash() => 4,
    StakePoolKeyPath() => 104,
  };
}
