import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'parsed_required_signer.freezed.dart';

@freezed
sealed class ParsedRequiredSigner with _$ParsedRequiredSigner {
  ParsedRequiredSigner._() {
    final thisClass = this;
    final void Function() assertinvoker = switch (thisClass) {
      RequiredSignerHash() => () =>
          validateExactHexString(thisClass.hashHex, 'hashHex', keyHashLength),
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

  @override
  late final int requiredSignerValue = switch (this) {
    RequiredSignerHash() => 1,
    RequiredSignerPath() => 0,
  };
}
