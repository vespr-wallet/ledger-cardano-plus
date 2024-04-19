import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'parsed_required_signer.freezed.dart';

@freezed
sealed class ParsedRequiredSigner with _$ParsedRequiredSigner {
  ParsedRequiredSigner._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      RequiredSignerHash() => () => validateExactHexString(thisClass.hashHex, 'hashHex', keyHashLength),
      RequiredSignerPath() => () => validateBIP32Path(thisClass.path, 'path'),
    };
    assertinvoker();
  }

  factory ParsedRequiredSigner.hash({
    required String hashHex,
  }) = RequiredSignerHash;

  factory ParsedRequiredSigner.path({
    required LedgerSigningPath path,
  }) = RequiredSignerPath;

  late final int requiredSignerValue = switch (this) {
    RequiredSignerHash() => 1,
    RequiredSignerPath() => 0,
  };
}
