import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'parsed_c_vote_delegation.freezed.dart';

@freezed
sealed class ParsedCVoteDelegation with _$ParsedCVoteDelegation {
  ParsedCVoteDelegation._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      PathDelegation() => () {
          validateBIP32Path(thisClass.voteKeyPath, 'voteKeyPath');
          validateUint32(thisClass.weight, 'weight');
        },
      KeyDelegation() => () {
          validateExactHexString(thisClass.voteKey, 'voteKey', cvotePublicKeyLength * 2);
          validateUint32(thisClass.weight, 'weight');
        },
    };
    assertinvoker();
  }

  factory ParsedCVoteDelegation.path({
    required List<int> voteKeyPath,
    required int weight,
  }) = PathDelegation;

  factory ParsedCVoteDelegation.key({
    required String voteKey,
    required int weight,
  }) = KeyDelegation;

  late final int cVoteDelegationValue = switch (this) {
    PathDelegation() => 0x01,
    KeyDelegation() => 0x02,
  };
}
