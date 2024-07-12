import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'cvote_public_key.freezed.dart';

@freezed
sealed class CVotePublicKey with _$CVotePublicKey {
  CVotePublicKey._() {
    validateExactHexString(value, 'CVotePublicKey', cvotePublicKeyLength * 2);
  }

  factory CVotePublicKey({
    required String value,
  }) = _CVotePublicKey;
}
